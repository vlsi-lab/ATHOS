#include "indcpa.h"
#include "ntt.h"
#include "params.h"
#include "poly.h"
#include "polyvec.h"
#include "randombytes.h"
#include "symmetric.h"
#include <stddef.h>
#include <stdint.h>
#include <string.h>

#include "csr.h"
#include "rv_plic.h"
#include "rv_plic_regs.h"
#include "rv_plic_structs.h"
#include "hart.h"

/*************************************************
* Name:        pack_pk
*
* Description: Serialize the public key as concatenation of the
*              serialized vector of polynomials pk
*              and the public seed used to generate the matrix A.
*
* Arguments:   uint8_t *r: pointer to the output serialized public key
*              polyvec *pk: pointer to the input public-key polyvec
*              const uint8_t *seed: pointer to the input public seed
**************************************************/
static void pack_pk(uint8_t r[KYBER_INDCPA_PUBLICKEYBYTES],
                    polyvec *pk,
                    const uint8_t seed[KYBER_SYMBYTES]) {
    PQCLEAN_KYBER512_CLEAN_polyvec_tobytes(r, pk);
    memcpy(r + KYBER_POLYVECBYTES, seed, KYBER_SYMBYTES);
}

/*************************************************
* Name:        unpack_pk
*
* Description: De-serialize public key from a byte array;
*              approximate inverse of pack_pk
*
* Arguments:   - polyvec *pk: pointer to output public-key polynomial vector
*              - uint8_t *seed: pointer to output seed to generate matrix A
*              - const uint8_t *packedpk: pointer to input serialized public key
**************************************************/
static void unpack_pk(polyvec *pk,
                      uint8_t seed[KYBER_SYMBYTES],
                      const uint8_t packedpk[KYBER_INDCPA_PUBLICKEYBYTES]) {
    PQCLEAN_KYBER512_CLEAN_polyvec_frombytes(pk, packedpk);
    memcpy(seed, packedpk + KYBER_POLYVECBYTES, KYBER_SYMBYTES);
}

/*************************************************
* Name:        pack_sk
*
* Description: Serialize the secret key
*
* Arguments:   - uint8_t *r: pointer to output serialized secret key
*              - polyvec *sk: pointer to input vector of polynomials (secret key)
**************************************************/
static void pack_sk(uint8_t r[KYBER_INDCPA_SECRETKEYBYTES], polyvec *sk) {
    PQCLEAN_KYBER512_CLEAN_polyvec_tobytes(r, sk);
}

/*************************************************
* Name:        unpack_sk
*
* Description: De-serialize the secret key; inverse of pack_sk
*
* Arguments:   - polyvec *sk: pointer to output vector of polynomials (secret key)
*              - const uint8_t *packedsk: pointer to input serialized secret key
**************************************************/
static void unpack_sk(polyvec *sk, const uint8_t packedsk[KYBER_INDCPA_SECRETKEYBYTES]) {
    PQCLEAN_KYBER512_CLEAN_polyvec_frombytes(sk, packedsk);
}

/*************************************************
* Name:        pack_ciphertext
*
* Description: Serialize the ciphertext as concatenation of the
*              compressed and serialized vector of polynomials b
*              and the compressed and serialized polynomial v
*
* Arguments:   uint8_t *r: pointer to the output serialized ciphertext
*              poly *pk: pointer to the input vector of polynomials b
*              poly *v: pointer to the input polynomial v
**************************************************/
static void pack_ciphertext(uint8_t r[KYBER_INDCPA_BYTES], polyvec *b, poly *v) {
    //unsigned int polyvec_compress;
    //CSR_CLEAR_BITS(CSR_REG_MCOUNTINHIBIT, 0x1);
    //CSR_WRITE(CSR_REG_MCYCLE, 0);
    PQCLEAN_KYBER512_CLEAN_polyvec_compress(r, b);
    //CSR_READ(CSR_REG_MCYCLE, &polyvec_compress);
    //printf("Number of clock cycles polyvec_compress: %d\n", polyvec_compress);

    //unsigned int poly_compress;
    //CSR_CLEAR_BITS(CSR_REG_MCOUNTINHIBIT, 0x1);
    //CSR_WRITE(CSR_REG_MCYCLE, 0);
    PQCLEAN_KYBER512_CLEAN_poly_compress(r + KYBER_POLYVECCOMPRESSEDBYTES, v);
    //CSR_READ(CSR_REG_MCYCLE, &poly_compress);
    //printf("Number of clock cycles poly_compress: %d\n", poly_compress);
    
}

/*************************************************
* Name:        unpack_ciphertext
*
* Description: De-serialize and decompress ciphertext from a byte array;
*              approximate inverse of pack_ciphertext
*
* Arguments:   - polyvec *b: pointer to the output vector of polynomials b
*              - poly *v: pointer to the output polynomial v
*              - const uint8_t *c: pointer to the input serialized ciphertext
**************************************************/
static void unpack_ciphertext(polyvec *b, poly *v, const uint8_t c[KYBER_INDCPA_BYTES]) {
    //unsigned int polyvec_decompress;
    //CSR_CLEAR_BITS(CSR_REG_MCOUNTINHIBIT, 0x1);
    //CSR_WRITE(CSR_REG_MCYCLE, 0);
    PQCLEAN_KYBER512_CLEAN_polyvec_decompress(b, c);
    //CSR_READ(CSR_REG_MCYCLE, &polyvec_decompress);
    //printf("Number of clock cycles polyvec_decompress: %d\n", polyvec_decompress);
    
    //unsigned int poly_decompress;
    //CSR_CLEAR_BITS(CSR_REG_MCOUNTINHIBIT, 0x1);
    //CSR_WRITE(CSR_REG_MCYCLE, 0);
    PQCLEAN_KYBER512_CLEAN_poly_decompress(v, c + KYBER_POLYVECCOMPRESSEDBYTES);
    //CSR_READ(CSR_REG_MCYCLE, &poly_decompress);
    //printf("Number of clock cycles poly_decompress: %d\n", poly_decompress);
    

}

/*************************************************
* Name:        rej_uniform
*
* Description: Run rejection sampling on uniform random bytes to generate
*              uniform random integers mod q
*
* Arguments:   - int16_t *r: pointer to output buffer
*              - unsigned int len: requested number of 16-bit integers (uniform mod q)
*              - const uint8_t *buf: pointer to input buffer (assumed to be uniformly random bytes)
*              - unsigned int buflen: length of input buffer in bytes
*
* Returns number of sampled 16-bit integers (at most len)
**************************************************/
static unsigned int rej_uniform(int16_t *r,
                                unsigned int len,
                                const uint8_t *buf,
                                unsigned int buflen) {
    unsigned int ctr, pos;
    uint16_t val0, val1;

    ctr = pos = 0;
    while (ctr < len && pos + 3 <= buflen) {
        val0 = ((buf[pos + 0] >> 0) | ((uint16_t)buf[pos + 1] << 8)) & 0xFFF;
        val1 = ((buf[pos + 1] >> 4) | ((uint16_t)buf[pos + 2] << 4)) & 0xFFF;
        pos += 3;

        if (val0 < KYBER_Q) {
            r[ctr++] = val0;
        }
        if (ctr < len && val1 < KYBER_Q) {
            r[ctr++] = val1;
        }
    }

    return ctr;
}

#define gen_a(A,B)  PQCLEAN_KYBER512_CLEAN_gen_matrix(A,B,0)
#define gen_at(A,B) PQCLEAN_KYBER512_CLEAN_gen_matrix(A,B,1)

/*************************************************
* Name:        PQCLEAN_KYBER512_CLEAN_gen_matrix
*
* Description: Deterministically generate matrix A (or the transpose of A)
*              from a seed. Entries of the matrix are polynomials that look
*              uniformly random. Performs rejection sampling on output of
*              a XOF
*
* Arguments:   - polyvec *a: pointer to ouptput matrix A
*              - const uint8_t *seed: pointer to input seed
*              - int transposed: boolean deciding whether A or A^T is generated
**************************************************/
#define GEN_MATRIX_NBLOCKS ((12*KYBER_N/8*(1 << 12)/KYBER_Q + XOF_BLOCKBYTES)/XOF_BLOCKBYTES)
// Not static for benchmarking
void PQCLEAN_KYBER512_CLEAN_gen_matrix(polyvec *a, const uint8_t seed[KYBER_SYMBYTES], int transposed) {
    unsigned int ctr, i, j, k;
    unsigned int buflen, off;
    uint8_t buf[GEN_MATRIX_NBLOCKS * XOF_BLOCKBYTES + 2];
    xof_state state;

    for (i = 0; i < KYBER_K; i++) {
        for (j = 0; j < KYBER_K; j++) {
            if (transposed) {
                xof_absorb(&state, seed, (uint8_t)i, (uint8_t)j);
            } else {
                xof_absorb(&state, seed, (uint8_t)j, (uint8_t)i);
            }

            xof_squeezeblocks(buf, GEN_MATRIX_NBLOCKS, &state);
            buflen = GEN_MATRIX_NBLOCKS * XOF_BLOCKBYTES;
            //unsigned int cycles_rej_uniform;
            //CSR_CLEAR_BITS(CSR_REG_MCOUNTINHIBIT, 0x1);
            //CSR_WRITE(CSR_REG_MCYCLE, 0);
            ctr = rej_uniform(a[i].vec[j].coeffs, KYBER_N, buf, buflen);
            //CSR_READ(CSR_REG_MCYCLE, &cycles_rej_uniform);
            //printf("Number of clock cycles rej_uniform: %d\n", cycles_rej_uniform);


            while (ctr < KYBER_N) {
                off = buflen % 3;
                for (k = 0; k < off; k++) {
                    buf[k] = buf[buflen - off + k];
                }
                xof_squeezeblocks(buf + off, 1, &state);
                buflen = off + XOF_BLOCKBYTES;
                ctr += rej_uniform(a[i].vec[j].coeffs + ctr, KYBER_N - ctr, buf, buflen);
            }
            xof_ctx_release(&state);
        }
    }
}

/*************************************************
* Name:        PQCLEAN_KYBER512_CLEAN_indcpa_keypair_derand
*
* Description: Generates public and private key for the CPA-secure
*              public-key encryption scheme underlying Kyber
*
* Arguments:   - uint8_t *pk: pointer to output public key
*                             (of length KYBER_INDCPA_PUBLICKEYBYTES bytes)
*              - uint8_t *sk: pointer to output private key
*                             (of length KYBER_INDCPA_SECRETKEYBYTES bytes)
*              - const uint8_t *coins: pointer to input randomness
*                             (of length KYBER_SYMBYTES bytes)
**************************************************/
void PQCLEAN_KYBER512_CLEAN_indcpa_keypair_derand(uint8_t pk[KYBER_INDCPA_PUBLICKEYBYTES],
        uint8_t sk[KYBER_INDCPA_SECRETKEYBYTES],
        const uint8_t coins[KYBER_SYMBYTES]) {
    unsigned int i;
    uint8_t buf[2 * KYBER_SYMBYTES];
    const uint8_t *publicseed = buf;
    const uint8_t *noiseseed = buf + KYBER_SYMBYTES;
    uint8_t nonce = 0;
    polyvec a[KYBER_K], e, pkpv, skpv;

    hash_g(buf, coins, KYBER_SYMBYTES);

    //unsigned int cycles_rej_uniform;
    //CSR_CLEAR_BITS(CSR_REG_MCOUNTINHIBIT, 0x1);
    //CSR_WRITE(CSR_REG_MCYCLE, 0);
    gen_a(a, publicseed);
    //CSR_READ(CSR_REG_MCYCLE, &cycles_rej_uniform);
    //printf("Number of clock cycles PQCLEAN_KYBER512_CLEAN_gen_matrix: %d\n", cycles_rej_uniform);

    for (i = 0; i < KYBER_K; i++) {
        PQCLEAN_KYBER512_CLEAN_poly_getnoise_eta1(&skpv.vec[i], noiseseed, nonce++);
    }
    for (i = 0; i < KYBER_K; i++) {
        PQCLEAN_KYBER512_CLEAN_poly_getnoise_eta1(&e.vec[i], noiseseed, nonce++);
    }

    PQCLEAN_KYBER512_CLEAN_polyvec_ntt(&skpv);
    PQCLEAN_KYBER512_CLEAN_polyvec_ntt(&e);

    // matrix-vector multiplication
    for (i = 0; i < KYBER_K; i++) {
        PQCLEAN_KYBER512_CLEAN_polyvec_basemul_acc_montgomery(&pkpv.vec[i], &a[i], &skpv);
        PQCLEAN_KYBER512_CLEAN_poly_tomont(&pkpv.vec[i]);
    }

    PQCLEAN_KYBER512_CLEAN_polyvec_add(&pkpv, &pkpv, &e);
    PQCLEAN_KYBER512_CLEAN_polyvec_reduce(&pkpv);

    pack_sk(sk, &skpv);
    pack_pk(pk, &pkpv, publicseed);
}

/*************************************************
* Name:        PQCLEAN_KYBER512_CLEAN_indcpa_enc
*
* Description: Encryption function of the CPA-secure
*              public-key encryption scheme underlying Kyber.
*
* Arguments:   - uint8_t *c: pointer to output ciphertext
*                            (of length KYBER_INDCPA_BYTES bytes)
*              - const uint8_t *m: pointer to input message
*                                  (of length KYBER_INDCPA_MSGBYTES bytes)
*              - const uint8_t *pk: pointer to input public key
*                                   (of length KYBER_INDCPA_PUBLICKEYBYTES)
*              - const uint8_t *coins: pointer to input random coins used as seed
*                                      (of length KYBER_SYMBYTES) to deterministically
*                                      generate all randomness
**************************************************/
void PQCLEAN_KYBER512_CLEAN_indcpa_enc(uint8_t c[KYBER_INDCPA_BYTES],
                                       const uint8_t m[KYBER_INDCPA_MSGBYTES],
                                       const uint8_t pk[KYBER_INDCPA_PUBLICKEYBYTES],
                                       const uint8_t coins[KYBER_SYMBYTES]) {
    unsigned int i;
    uint8_t seed[KYBER_SYMBYTES];
    uint8_t nonce = 0;
    polyvec sp, pkpv, ep, at[KYBER_K], b;
    poly v, k, epp;

    unpack_pk(&pkpv, seed, pk);
    //unsigned int cycles_poly_frommsg;
    //CSR_CLEAR_BITS(CSR_REG_MCOUNTINHIBIT, 0x1);
    //CSR_WRITE(CSR_REG_MCYCLE, 0);
    PQCLEAN_KYBER512_CLEAN_poly_frommsg(&k, m);
    //CSR_READ(CSR_REG_MCYCLE, &cycles_poly_frommsg);
    //printf("Number of clock cycles poly_frommsg: %d\n", cycles_poly_frommsg);

    gen_at(at, seed);

    for (i = 0; i < KYBER_K; i++) {
        PQCLEAN_KYBER512_CLEAN_poly_getnoise_eta1(sp.vec + i, coins, nonce++);
    }
    for (i = 0; i < KYBER_K; i++) {
        PQCLEAN_KYBER512_CLEAN_poly_getnoise_eta2(ep.vec + i, coins, nonce++);
    }
    PQCLEAN_KYBER512_CLEAN_poly_getnoise_eta2(&epp, coins, nonce++);

    PQCLEAN_KYBER512_CLEAN_polyvec_ntt(&sp);

    // matrix-vector multiplication
    for (i = 0; i < KYBER_K; i++) {
        PQCLEAN_KYBER512_CLEAN_polyvec_basemul_acc_montgomery(&b.vec[i], &at[i], &sp);
    }

    PQCLEAN_KYBER512_CLEAN_polyvec_basemul_acc_montgomery(&v, &pkpv, &sp);

    PQCLEAN_KYBER512_CLEAN_polyvec_invntt_tomont(&b);
    PQCLEAN_KYBER512_CLEAN_poly_invntt_tomont(&v);

    PQCLEAN_KYBER512_CLEAN_polyvec_add(&b, &b, &ep);
    PQCLEAN_KYBER512_CLEAN_poly_add(&v, &v, &epp);
    PQCLEAN_KYBER512_CLEAN_poly_add(&v, &v, &k);
    PQCLEAN_KYBER512_CLEAN_polyvec_reduce(&b);
    PQCLEAN_KYBER512_CLEAN_poly_reduce(&v);

    pack_ciphertext(c, &b, &v);
}

/*************************************************
* Name:        PQCLEAN_KYBER512_CLEAN_indcpa_dec
*
* Description: Decryption function of the CPA-secure
*              public-key encryption scheme underlying Kyber.
*
* Arguments:   - uint8_t *m: pointer to output decrypted message
*                            (of length KYBER_INDCPA_MSGBYTES)
*              - const uint8_t *c: pointer to input ciphertext
*                                  (of length KYBER_INDCPA_BYTES)
*              - const uint8_t *sk: pointer to input secret key
*                                   (of length KYBER_INDCPA_SECRETKEYBYTES)
**************************************************/
void PQCLEAN_KYBER512_CLEAN_indcpa_dec(uint8_t m[KYBER_INDCPA_MSGBYTES],
                                       const uint8_t c[KYBER_INDCPA_BYTES],
                                       const uint8_t sk[KYBER_INDCPA_SECRETKEYBYTES]) {
    polyvec b, skpv;
    poly v, mp;

    unpack_ciphertext(&b, &v, c);
    unpack_sk(&skpv, sk);

    PQCLEAN_KYBER512_CLEAN_polyvec_ntt(&b);
    PQCLEAN_KYBER512_CLEAN_polyvec_basemul_acc_montgomery(&mp, &skpv, &b);
    PQCLEAN_KYBER512_CLEAN_poly_invntt_tomont(&mp);

    PQCLEAN_KYBER512_CLEAN_poly_sub(&mp, &v, &mp);
    PQCLEAN_KYBER512_CLEAN_poly_reduce(&mp);

    //unsigned int cycles_poly_tomsg;
    //CSR_CLEAR_BITS(CSR_REG_MCOUNTINHIBIT, 0x1);
    //CSR_WRITE(CSR_REG_MCYCLE, 0);
    PQCLEAN_KYBER512_CLEAN_poly_tomsg(m, &mp);
    //CSR_READ(CSR_REG_MCYCLE, &cycles_poly_tomsg);
    //printf("Number of clock cycles poly_tomsg: %d\n", cycles_poly_tomsg);

}

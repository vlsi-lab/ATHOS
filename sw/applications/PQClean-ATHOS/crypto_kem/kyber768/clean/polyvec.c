#include "params.h"
#include "poly.h"
#include "polyvec.h"
#include <stdint.h>

/*************************************************
* Name:        PQCLEAN_KYBER768_CLEAN_polyvec_compress
*
* Description: Compress and serialize vector of polynomials
*
* Arguments:   - uint8_t *r: pointer to output byte array
*                            (needs space for KYBER_POLYVECCOMPRESSEDBYTES)
*              - const polyvec *a: pointer to input vector of polynomials
**************************************************/
void PQCLEAN_KYBER768_CLEAN_polyvec_compress(uint8_t r[KYBER_POLYVECCOMPRESSEDBYTES], const polyvec *a) {
    unsigned int i, j, k;
    uint64_t d0;

    uint16_t t[4];
    for (i = 0; i < KYBER_K; i++) {
        for (j = 0; j < KYBER_N / 4; j++) {
            /*for (k = 0; k < 4; k++) {
                t[k]  = a->vec[i].coeffs[4 * j + k];
                t[k] += ((int16_t)t[k] >> 15) & KYBER_Q;
                t[k]  = ((((uint32_t)t[k] << 10) + KYBER_Q/2)/ KYBER_Q) & 0x3ff;
                d0 = t[k];
                d0 <<= 10;
                d0 += 1665;
                d0 *= 1290167;
                d0 >>= 32;
                t[k] = d0 & 0x3ff;
            }*/
            asm volatile (".insn r 0x0b, 0x6, 36, %[dst], %[src], %[x]\r\n" : [dst] "=r" (t[0])  : [src] "r" (a->vec[i].coeffs[4 * j ]), [x] "r" (0) :  );
            asm volatile (".insn r 0x0b, 0x6, 36, %[dst], %[src], %[x]\r\n" : [dst] "=r" (t[1])  : [src] "r" (a->vec[i].coeffs[4 * j + 1]), [x] "r" (0) :  );
            asm volatile (".insn r 0x0b, 0x6, 36, %[dst], %[src], %[x]\r\n" : [dst] "=r" (t[2])  : [src] "r" (a->vec[i].coeffs[4 * j + 2]), [x] "r" (0) :  );
            asm volatile (".insn r 0x0b, 0x6, 36, %[dst], %[src], %[x]\r\n" : [dst] "=r" (t[3])  : [src] "r" (a->vec[i].coeffs[4 * j + 3]), [x] "r" (0) :  );


            r[0] = (uint8_t)(t[0] >> 0);
            r[1] = (uint8_t)((t[0] >> 8) | (t[1] << 2));
            r[2] = (uint8_t)((t[1] >> 6) | (t[2] << 4));
            r[3] = (uint8_t)((t[2] >> 4) | (t[3] << 6));
            r[4] = (uint8_t)(t[3] >> 2);
            r += 5;
        }
    }
}

/*************************************************
* Name:        PQCLEAN_KYBER768_CLEAN_polyvec_decompress
*
* Description: De-serialize and decompress vector of polynomials;
*              approximate inverse of PQCLEAN_KYBER768_CLEAN_polyvec_compress
*
* Arguments:   - polyvec *r:       pointer to output vector of polynomials
*              - const uint8_t *a: pointer to input byte array
*                                  (of length KYBER_POLYVECCOMPRESSEDBYTES)
**************************************************/
void PQCLEAN_KYBER768_CLEAN_polyvec_decompress(polyvec *r, const uint8_t a[KYBER_POLYVECCOMPRESSEDBYTES]) {
    unsigned int i, j, k;

    uint16_t t[4];
    for (i = 0; i < KYBER_K; i++) {
        for (j = 0; j < KYBER_N / 4; j++) {
            t[0] = (a[0] >> 0) | ((uint16_t)a[1] << 8);
            t[1] = (a[1] >> 2) | ((uint16_t)a[2] << 6);
            t[2] = (a[2] >> 4) | ((uint16_t)a[3] << 4);
            t[3] = (a[3] >> 6) | ((uint16_t)a[4] << 2);
            a += 5;

            /*for (k = 0; k < 4; k++) {
                r->vec[i].coeffs[4 * j + k] = ((uint32_t)(t[k] & 0x3FF) * KYBER_Q + 512) >> 10;
            }*/
            asm volatile (".insn r 0x0b, 0x6, 38, %[dst], %[src], %[x]\r\n" : [dst] "=r" (r->vec[i].coeffs[4 * j])  : [src] "r" (t[0]), [x] "r" (0) :  );
            asm volatile (".insn r 0x0b, 0x6, 38, %[dst], %[src], %[x]\r\n" : [dst] "=r" (r->vec[i].coeffs[4 * j + 1])  : [src] "r" (t[1]), [x] "r" (0) :  );
            asm volatile (".insn r 0x0b, 0x6, 38, %[dst], %[src], %[x]\r\n" : [dst] "=r" (r->vec[i].coeffs[4 * j + 2])  : [src] "r" (t[2]), [x] "r" (0) :  );
            asm volatile (".insn r 0x0b, 0x6, 38, %[dst], %[src], %[x]\r\n" : [dst] "=r" (r->vec[i].coeffs[4 * j + 3])  : [src] "r" (t[3]), [x] "r" (0) :  );
        }
    }
}

/*************************************************
* Name:        PQCLEAN_KYBER768_CLEAN_polyvec_tobytes
*
* Description: Serialize vector of polynomials
*
* Arguments:   - uint8_t *r: pointer to output byte array
*                            (needs space for KYBER_POLYVECBYTES)
*              - const polyvec *a: pointer to input vector of polynomials
**************************************************/
void PQCLEAN_KYBER768_CLEAN_polyvec_tobytes(uint8_t r[KYBER_POLYVECBYTES], const polyvec *a) {
    unsigned int i;
    for (i = 0; i < KYBER_K; i++) {
        PQCLEAN_KYBER768_CLEAN_poly_tobytes(r + i * KYBER_POLYBYTES, &a->vec[i]);
    }
}

/*************************************************
* Name:        PQCLEAN_KYBER768_CLEAN_polyvec_frombytes
*
* Description: De-serialize vector of polynomials;
*              inverse of PQCLEAN_KYBER768_CLEAN_polyvec_tobytes
*
* Arguments:   - uint8_t *r:       pointer to output byte array
*              - const polyvec *a: pointer to input vector of polynomials
*                                  (of length KYBER_POLYVECBYTES)
**************************************************/
void PQCLEAN_KYBER768_CLEAN_polyvec_frombytes(polyvec *r, const uint8_t a[KYBER_POLYVECBYTES]) {
    unsigned int i;
    for (i = 0; i < KYBER_K; i++) {
        PQCLEAN_KYBER768_CLEAN_poly_frombytes(&r->vec[i], a + i * KYBER_POLYBYTES);
    }
}

/*************************************************
* Name:        PQCLEAN_KYBER768_CLEAN_polyvec_ntt
*
* Description: Apply forward NTT to all elements of a vector of polynomials
*
* Arguments:   - polyvec *r: pointer to in/output vector of polynomials
**************************************************/
void PQCLEAN_KYBER768_CLEAN_polyvec_ntt(polyvec *r) {
    unsigned int i;
    for (i = 0; i < KYBER_K; i++) {
        PQCLEAN_KYBER768_CLEAN_poly_ntt(&r->vec[i]);
    }
}

/*************************************************
* Name:        PQCLEAN_KYBER768_CLEAN_polyvec_invntt_tomont
*
* Description: Apply inverse NTT to all elements of a vector of polynomials
*              and multiply by Montgomery factor 2^16
*
* Arguments:   - polyvec *r: pointer to in/output vector of polynomials
**************************************************/
void PQCLEAN_KYBER768_CLEAN_polyvec_invntt_tomont(polyvec *r) {
    unsigned int i;
    for (i = 0; i < KYBER_K; i++) {
        PQCLEAN_KYBER768_CLEAN_poly_invntt_tomont(&r->vec[i]);
    }
}

/*************************************************
* Name:        PQCLEAN_KYBER768_CLEAN_polyvec_basemul_acc_montgomery
*
* Description: Multiply elements of a and b in NTT domain, accumulate into r,
*              and multiply by 2^-16.
*
* Arguments: - poly *r: pointer to output polynomial
*            - const polyvec *a: pointer to first input vector of polynomials
*            - const polyvec *b: pointer to second input vector of polynomials
**************************************************/
void PQCLEAN_KYBER768_CLEAN_polyvec_basemul_acc_montgomery(poly *r, const polyvec *a, const polyvec *b) {
    unsigned int i;
    poly t;

    PQCLEAN_KYBER768_CLEAN_poly_basemul_montgomery(r, &a->vec[0], &b->vec[0]);
    for (i = 1; i < KYBER_K; i++) {
        PQCLEAN_KYBER768_CLEAN_poly_basemul_montgomery(&t, &a->vec[i], &b->vec[i]);
        PQCLEAN_KYBER768_CLEAN_poly_add(r, r, &t);
    }

    PQCLEAN_KYBER768_CLEAN_poly_reduce(r);
}

/*************************************************
* Name:        PQCLEAN_KYBER768_CLEAN_polyvec_reduce
*
* Description: Applies Barrett reduction to each coefficient
*              of each element of a vector of polynomials;
*              for details of the Barrett reduction see comments in reduce.c
*
* Arguments:   - polyvec *r: pointer to input/output polynomial
**************************************************/
void PQCLEAN_KYBER768_CLEAN_polyvec_reduce(polyvec *r) {
    unsigned int i;
    for (i = 0; i < KYBER_K; i++) {
        PQCLEAN_KYBER768_CLEAN_poly_reduce(&r->vec[i]);
    }
}

/*************************************************
* Name:        PQCLEAN_KYBER768_CLEAN_polyvec_add
*
* Description: Add vectors of polynomials
*
* Arguments: - polyvec *r: pointer to output vector of polynomials
*            - const polyvec *a: pointer to first input vector of polynomials
*            - const polyvec *b: pointer to second input vector of polynomials
**************************************************/
void PQCLEAN_KYBER768_CLEAN_polyvec_add(polyvec *r, const polyvec *a, const polyvec *b) {
    unsigned int i;
    for (i = 0; i < KYBER_K; i++) {
        PQCLEAN_KYBER768_CLEAN_poly_add(&r->vec[i], &a->vec[i], &b->vec[i]);
    }
}

#include "fips202.h"
#include "params.h"
#include "symmetric.h"
#include <stddef.h>
#include <stdint.h>
#include <string.h>
#include <stdio.h>

/*************************************************
* Name:        PQCLEAN_KYBER512_CLEAN_kyber_shake128_absorb
*
* Description: Absorb step of the SHAKE128 specialized for the Kyber context.
*
* Arguments:   - xof_state *state: pointer to (uninitialized) output Keccak state
*              - const uint8_t *seed: pointer to KYBER_SYMBYTES input to be absorbed into state
*              - uint8_t i: additional byte of input
*              - uint8_t j: additional byte of input
**************************************************/
void PQCLEAN_KYBER512_CLEAN_kyber_shake128_absorb(uint64_t *state,
        const uint8_t seed[KYBER_SYMBYTES],
        uint8_t x,
        uint8_t y) {

    uint8_t extseed[KYBER_SYMBYTES + 2];

    memcpy(extseed, seed, KYBER_SYMBYTES);
    extseed[KYBER_SYMBYTES + 0] = x;
    extseed[KYBER_SYMBYTES + 1] = y;

    shake128_absorb(state, extseed, sizeof(extseed));
}

/*************************************************
* Name:        PQCLEAN_KYBER512_CLEAN_kyber_shake256_prf
*
* Description: Usage of SHAKE256 as a PRF, concatenates secret and public input
*              and then generates outlen bytes of SHAKE256 output
*
* Arguments:   - uint8_t *out: pointer to output
*              - size_t outlen: number of requested output bytes
*              - const uint8_t *key: pointer to the key (of length KYBER_SYMBYTES)
*              - uint8_t nonce: single-byte nonce (public PRF input)
**************************************************/
void PQCLEAN_KYBER512_CLEAN_kyber_shake256_prf(uint8_t *out, size_t outlen, const uint8_t key[KYBER_SYMBYTES], uint8_t nonce) {
    uint8_t extkey[KYBER_SYMBYTES + 1];

    memcpy(extkey, key, KYBER_SYMBYTES);
    extkey[KYBER_SYMBYTES] = nonce;
    //printf("%ld\n", sizeof(extkey));
    shake256(out, outlen, key, 32);
}

/*************************************************
* Name:        PQCLEAN_KYBER512_CLEAN_kyber_shake256_prf
*
* Description: Usage of SHAKE256 as a PRF, concatenates secret and public input
*              and then generates outlen bytes of SHAKE256 output
*
* Arguments:   - uint8_t *out: pointer to output
*              - size_t outlen: number of requested output bytes
*              - const uint8_t *key: pointer to the key (of length KYBER_SYMBYTES)
*              - uint8_t nonce: single-byte nonce (public PRF input)
**************************************************/
void PQCLEAN_KYBER512_CLEAN_kyber_shake256_rkprf(uint8_t out[KYBER_SSBYTES], const uint8_t key[KYBER_SYMBYTES], const uint8_t input[KYBER_CIPHERTEXTBYTES]) {
    shake256incctx s;

    shake256_inc_init(&s);
    shake256_inc_absorb(&s, key, KYBER_SYMBYTES);
    shake256_inc_absorb(&s, input, KYBER_CIPHERTEXTBYTES);
    shake256_inc_finalize(&s);
    shake256_inc_squeeze(out, KYBER_SSBYTES, &s);
    //shake256_inc_ctx_release(&s);
}

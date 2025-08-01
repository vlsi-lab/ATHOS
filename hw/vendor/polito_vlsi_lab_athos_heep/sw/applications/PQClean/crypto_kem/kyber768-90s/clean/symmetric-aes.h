#ifndef PQCLEAN_KYBER76890S_CLEAN_SYMMETRIC_AES_H
#define PQCLEAN_KYBER76890S_CLEAN_SYMMETRIC_AES_H

#define AES256CTR_BLOCKBYTES 64
#include "aes.h"
#include <stddef.h>
#include <stdint.h>

typedef struct {
    aes256ctx sk_exp;
    uint8_t iv[12];
    uint32_t ctr;
} aes256xof_ctx;

void PQCLEAN_KYBER76890S_CLEAN_aes256ctr_prf(uint8_t *output, size_t outlen, const uint8_t *key, uint8_t nonce);
void PQCLEAN_KYBER76890S_CLEAN_aes256xof_absorb(aes256xof_ctx *s, const uint8_t *key, uint8_t x, uint8_t y);
void PQCLEAN_KYBER76890S_CLEAN_aes256xof_squeezeblocks(uint8_t *out, size_t nblocks, aes256xof_ctx *s);
void PQCLEAN_KYBER76890S_CLEAN_aes256xof_ctx_release(aes256xof_ctx *s);

#endif

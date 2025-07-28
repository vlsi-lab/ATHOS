#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include "csr.h"
#include "rv_plic.h"
#include "rv_plic_regs.h"
#include "rv_plic_structs.h"
#include "hart.h"
#include "api.h"
#include "../../common/fips202.h"

#define NTESTS 1

static void printbytes(const uint8_t *x, size_t xlen) {
    size_t i;
    for (i = 0; i < xlen/8; i++) {
        printf("%02x", x[i]);
    }
    printf("\n");
}


#define PASTER(x, y) x##_##y
#define EVALUATOR(x, y) PASTER(x, y)
#define NAMESPACE(fun) EVALUATOR(PQCLEAN_NAMESPACE, fun)

#define CRYPTO_BYTES           NAMESPACE(CRYPTO_BYTES)
#define CRYPTO_PUBLICKEYBYTES  NAMESPACE(CRYPTO_PUBLICKEYBYTES)
#define CRYPTO_SECRETKEYBYTES  NAMESPACE(CRYPTO_SECRETKEYBYTES)
#define CRYPTO_CIPHERTEXTBYTES NAMESPACE(CRYPTO_CIPHERTEXTBYTES)

#define crypto_kem_keypair NAMESPACE(crypto_kem_keypair)
#define crypto_kem_enc NAMESPACE(crypto_kem_enc)
#define crypto_kem_dec NAMESPACE(crypto_kem_dec)

int main(void) {
    uint8_t pk[CRYPTO_PUBLICKEYBYTES];
    uint8_t sk_a[CRYPTO_SECRETKEYBYTES];
    int i, j;
    unsigned int cycles_keygen;
    
    //CSR_CLEAR_BITS(CSR_REG_MCOUNTINHIBIT, 0x1);
    printf("Hi testvectors KEM!\n");
       
    // Starting the performance counter
    CSR_WRITE(CSR_REG_MCYCLE, 0);
    // Key-pair generation
    crypto_kem_keypair(pk, sk_a);
    CSR_READ(CSR_REG_MCYCLE, &cycles_keygen);
    printf("Number of clock cycles keygen: %d\n", cycles_keygen);

    printbytes(pk, CRYPTO_PUBLICKEYBYTES);
    printbytes(sk_a, CRYPTO_SECRETKEYBYTES);
    printf("Ends testvectors KEM!\n");
    return 0;
}

#include <stdio.h>
#include <stdint.h>
#include <string.h>
#include <inttypes.h>
#include <stdlib.h>

#include "csr.h"
#include "sha3_256.h"
#include "sha3_512.h"
#include "sha3_384.h"
#include "shake128.h"
#include "shake256.h"

#define INPUT_LENGHT 30


/***********************************************************************************/
 void test_sha3_256(void) {
    unsigned char input[INPUT_LENGHT];
    unsigned char output[32];
    int i;

    printf("\nInput SHA3-256:\n");
    for (i = 0; i < INPUT_LENGHT; i++) {
        input[i] = i;
        printf("%02X", input[i]);
    }
    
    sha3_256(output, input, INPUT_LENGHT);

    printf("\nOutput SHA3-256: \n");
    for (i = 0; i < 32; i++) {
        printf("%02X", output[i]);
    }

    return 0;
}

/***********************************************************************************/
void test_sha3_512(void) {
    unsigned char input[INPUT_LENGHT];
    unsigned char output[64];
    int i;

    printf("\nInput SHA3-512:\n");
    for (i = 0; i < INPUT_LENGHT; i++) {
        input[i] = i;
        printf("%02X", input[i]);
    }

    sha3_512(output, input, INPUT_LENGHT);
    printf("\nOutput SHA3-512: \n");
    for (i = 0; i < 64; i++) {
        printf("%02X", output[i]);
    }

    return 0;
}

/***********************************************************************************/
void test_sha3_384(void) {
    unsigned char input[INPUT_LENGHT];
    unsigned char output[48];
    int i;

    printf("\nInput SHA3-348:\n");
    for (i = 0; i < INPUT_LENGHT; i++) {
        input[i] = i;
        printf("%02X", input[i]);
    }

    sha3_384(output, input, INPUT_LENGHT);
    printf("\nOutput SHA3-348: \n");
    for (i = 0; i < 48; i++) {
        printf("%02X", output[i]);
    }

    return 0;
}



int main(void) {
   
    printf("Test started! \n");

    unsigned int sha3_cycles;
    
    CSR_CLEAR_BITS(CSR_REG_MCOUNTINHIBIT, 0x1);
    CSR_WRITE(CSR_REG_MCYCLE, 0);
    test_sha3_256();
    CSR_READ(CSR_REG_MCYCLE, &sha3_cycles);
    printf("\nNumber of clock cycles test: %d\n", sha3_cycles);
   
    /*printf("\n\n");

    CSR_WRITE(CSR_REG_MCYCLE, 0);
    test_sha3_512();
    CSR_READ(CSR_REG_MCYCLE, &sha3_cycles);
    printf("\nNumber of clock cycles test: %d\n", sha3_cycles);

    
    printf("\n\n");
    
    CSR_WRITE(CSR_REG_MCYCLE, 0);
    test_sha3_384();
    CSR_READ(CSR_REG_MCYCLE, &sha3_cycles);
    printf("\nNumber of clock cycles test: %d\n", sha3_cycles);
    */
    printf("\n\nTest Ended! \n");
   
    return 0;
}

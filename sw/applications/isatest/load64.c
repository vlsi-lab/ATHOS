#include <stdlib.h>
#include <string.h>
#include <stdint.h>
#include <stddef.h>
#include <stdio.h>
#include <inttypes.h>

#include "csr.h"

int main()
{
    unsigned int cycles = 0;
    uint64_t r = 0;
    uint64_t x = 0x0102030405060708;
    uint64_t res = 0x0807060504030201;
    uint32_t res1 = 0x08070605;
    uint32_t res2 = 0x04030201;
    uint8_t r_debug[8];

    register int x12 asm("x12");
    register int x13 asm("x13");
    register int x24 asm("x24");
    register int x25 asm("x25");

    asm volatile (
        "li x24, 16909060\r\n"
        "li x25, 84281096\r\n"
    );
    //x24 01020304

    printf("Test started!\n");

    //enable mcycle csr
    CSR_CLEAR_BITS(CSR_REG_MCOUNTINHIBIT, 0x1);

    CSR_WRITE(CSR_REG_MCYCLE, 0);

    for (size_t i = 0; i < 8; ++i) {
        r |= (x & 0xFF) << (8 * i); // Extract the lowest byte of x and shift it into position
        x >>= 8; // Shift x right by 8 bits to get the next byte
    }
    
    CSR_READ(CSR_REG_MCYCLE, &cycles);
    printf("with %d cycles\n", cycles);
     if (res != r) 
        printf("SOFTWARE EVALUTION PASSED: Expected %d, got %d\n", res, r);
    

    asm volatile (
        ".insn r 0x0b, 0x002, 0, x12, x24, x25\r\n" 
    );

    
    if (res1 != x13 && res2 != x12) {
        printf("ERROR: Expected %d-%d, got %d-%d\n", res1, res2, x13, x12);
    } else {
        printf("SUCCESS: Expected %d-%d, got %d-%d\n", res1, res2, x13, x12);
    }

    return 0;
}

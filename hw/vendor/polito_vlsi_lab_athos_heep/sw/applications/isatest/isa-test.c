#include <stdlib.h>
#include <string.h>
#include <stdint.h>
#include <stddef.h>
#include <stdio.h>
#include <inttypes.h>

#include "csr.h"
#define SHA3_256_RATE 136
#define QINV (-3327)
#define KYBER_Q 3329

int main()
{
    unsigned int cycles = 0;
    unsigned int cycles2 = 0;
    size_t i;
    int16_t t;
    int32_t a;
    int32_t res;
    register int x12 asm("x12");
    register int x24 asm("x24");
    register int x25 asm("x25");

    a=-462726;
    printf("\n%x%x\n", *(((int*)(&a))+1), a); 
    
    CSR_CLEAR_BITS(CSR_REG_MCOUNTINHIBIT, 0x1);
    CSR_WRITE(CSR_REG_MCYCLE, 0);
    t = (int16_t)a * QINV;
    t = (a - (int32_t)t * KYBER_Q) >> 16;
    CSR_READ(CSR_REG_MCYCLE, &cycles);
    printf("SOFTWARE: Obtained %x with %d cycles\n", t, cycles);

    CSR_WRITE(CSR_REG_MCYCLE, 0);
    asm volatile ("li %[dst], %[src]\r\n" : [dst] "=r" (x24) : [src] "i" (a));

    asm volatile (".insn r 0x3b, 0x003, 0, %[res], x24, x25\r\n" : [res] "=r" (res): : );

    /*asm volatile (
        "mv %[res], %[src1]\n\t"
        : [res] "=r" (res)
        : [src1] "r"(x12)
        : "memory"
    );*/
    CSR_READ(CSR_REG_MCYCLE, &cycles2);
    printf("HARDWARE: Obtained %x with %d cycles\n", res, cycles2);
    
    return 0;
}

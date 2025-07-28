#include <stdlib.h>
#include <string.h>
#include <stdint.h>
#include <stddef.h>
#include <stdio.h>
#include <inttypes.h>

#include "csr.h"
#include "gf.h"

int main()
{
    unsigned int cycles = 0;
    uint16_t a,b;
    uint16_t mask, tmp2;
    uint16_t res_sw;
    uint16_t res = 30;
    uint16_t res_hw;


    register int x24 asm("x24");
    register int x25 asm("x25");

    a = 70;
    b = 181;

    printf("Test started!\n");

    //enable mcycle csr
    CSR_CLEAR_BITS(CSR_REG_MCOUNTINHIBIT, 0x1);

    CSR_WRITE(CSR_REG_MCYCLE, 0);

    mask = (uint16_t) (-((int32_t) a) >> 31); // a != 0
    mask &= (uint16_t) (-((int32_t) b) >> 31); // b != 0

    uint16_t tmp = (uint16_t) (gf_log[a] + gf_log[b] - 255);
    uint16_t mask2 = -(tmp >> 15);
    tmp2 = tmp + (mask & 255);
    
    res_sw = mask & gf_exp[tmp2];

    CSR_READ(CSR_REG_MCYCLE, &cycles);
    
    printf("with %d cycles\n", cycles);
     if (res_sw != res) 
        printf("SOFTWARE EVALUTION PASSED: Expected %d, got %d\n", res_sw, res);
    
    CSR_WRITE(CSR_REG_MCYCLE, 0);
    asm volatile (".insn r 0x0b, 0x001, 0x008, x24, %[a], %[b]\n\t" : : [a] "r" (a), [b] "r" (b));

    asm volatile (
        "mv %[tmp], %[src]\n\t"
        : [tmp] "=r" (tmp)
        : [src] "r"(x24)
        : "memory"
    );

    
    printf("Obtained %d-%d\n", x24, x25);


    return 0;
}

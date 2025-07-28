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

    uint16_t a0 = 0xb7;
    uint16_t a1 = 0x43;

    uint16_t b0 = 0x43;
    uint16_t b1 = 0x84;

    uint16_t ta0_res = 0x3b7;
    uint16_t tb0_res = 0x844;

    uint16_t ta0;
    uint16_t tb0;



    printf("Test started!\n");

    //enable mcycle csr
    CSR_CLEAR_BITS(CSR_REG_MCOUNTINHIBIT, 0x1);

    asm volatile (".insn r 0x0b, 0x1, 40, %[dst], %[src], %[src2]\r\n" : [dst] "=r" (ta0)  : [src] "r" (a0), [src2] "r" (a1) :  );
    asm volatile (".insn r 0x0b, 0x1, 41, %[dst], %[src], %[src2]\r\n" : [dst] "=r" (tb0)  : [src] "r" (b0), [src2] "r" (b1) :  );
    

    if (ta0_res != ta0) {
        printf("ERROR: Expected %d-%d.", ta0_res, ta0);
    } 
    if (tb0_res != tb0) {
        printf("ERROR: Expected %d-%d.", tb0_res, tb0);
    } 
   
 
    return 0;
}
a
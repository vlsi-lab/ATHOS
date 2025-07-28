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
    uint16_t tres[4];
    uint16_t a0 = 0xac1f;
    uint16_t a1 = 0x42b;
    uint16_t a2 = 0xfb291;
    uint16_t a3 = 0x188;

    uint16_t t0 = 0x65;
    uint16_t t1 = 0x8c;
    uint16_t t2 = 0x858;
    uint16_t t3 = 0x4fa;


    printf("Test started!\n");

    //enable mcycle csr
    CSR_CLEAR_BITS(CSR_REG_MCOUNTINHIBIT, 0x1);

    asm volatile (".insn r 0x0b, 0x6, 38, %[dst], %[src], %[x]\r\n" : [dst] "=r" (tres[0])  : [src] "r" (a0), [x] "r" (0) :  );
    asm volatile (".insn r 0x0b, 0x6, 38, %[dst], %[src], %[x]\r\n" : [dst] "=r" (tres[1])  : [src] "r" (a1), [x] "r" (0) :  );
    asm volatile (".insn r 0x0b, 0x6, 38, %[dst], %[src], %[x]\r\n" : [dst] "=r" (tres[2])  : [src] "r" (a2), [x] "r" (0) :  );
    asm volatile (".insn r 0x0b, 0x6, 38, %[dst], %[src], %[x]\r\n" : [dst] "=r" (tres[3])  : [src] "r" (a3), [x] "r" (0) :  );
    

    if (tres[0] != t0) {
        printf("ERROR: Expected %d-%d.", tres[0], t0);
    } 
    if (tres[1] != t1) {
        printf("ERROR: Expected %d-%d.", tres[1], t1);
    }
    if (tres[2] != t2) {
        printf("ERROR: Expected %d-%d.", tres[2], t2);
    }
    if (tres[3] != t3) {
        printf("ERROR: Expected %d-%d.", tres[3], t3);
    }   

    return 0;
}

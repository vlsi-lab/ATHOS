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
    int16_t a = 0x0110;
    int16_t t, t_hw, t_sw;
    int16_t golden_res = 0x0004;

    printf("Test started!\n");

    //enable mcycle csr
    CSR_CLEAR_BITS(CSR_REG_MCOUNTINHIBIT, 0x1);
    CSR_WRITE(CSR_REG_MCYCLE, 0);

    uint16_t tmp = 0;
    uint16_t mask = 0xFFFF;
    for (size_t i = 0; i < 14; ++i) {
        tmp += ((1 - ((a >> i) & 0x0001)) & mask);
        mask &= - (1 - ((a >> i) & 0x0001));
    }
    
    t_sw = tmp;
    CSR_READ(CSR_REG_MCYCLE, &cycles);
    printf("with %d cycles\n", cycles);
    if (golden_res == t_sw) 
        printf("SOFTWARE EVALUTION PASSED: Expected %d, got %d\n", golden_res, t_sw);
    

    register int x24 asm("x24");
    register int x25 asm("x25");

    asm volatile ("mv %[dst], %[src]\r\n" : [dst] "=r" (x24) : [src] "r" (a));
    //asm volatile ("mv %[dst], %[src]\r\n" : [dst] "=r" (x25) : [src] "r" (a));
    asm volatile (".insn r 0x0b, 0x001, 1, %[dst], x24, x25\r\n" : [dst] "=r" (t_hw) : : );
    //asm volatile ("mv %[res], %[src1]\n\t": [res] "=r" (t): [src1] "r"(x12) : "memory");
    printf("HARDWARE: Obtained %x \n", t_hw);

    
    if (golden_res != t_hw) {
        printf("ERROR: Expected %d, got %d\n",golden_res, t_hw);
    } else {
        printf("SUCCESS: Expected %d, got %d\n", golden_res, t_hw);
    }

    return 0;
}

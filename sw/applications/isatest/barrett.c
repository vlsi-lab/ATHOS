#include <stdlib.h>
#include <string.h>
#include <stdint.h>
#include <stddef.h>
#include <stdio.h>
#include <inttypes.h>

#include "csr.h"
#include "timer_util.h"
#define QINV (-3327) // q^-1 mod 2^16
#define KYBER_Q 3329


int16_t barrett_reduce(int16_t a) {
    int16_t t;
    const int16_t v = ((1 << 26) + KYBER_Q / 2) / KYBER_Q;

    t  = ((int32_t)v * a + (1 << 25)) >> 26;
    t *= KYBER_Q;
    return a - t;
}

int main()
{
    unsigned int cycles = 0;
    unsigned int cycles2 = 0;
    //int32_t a = 0x000004a7;
    //int32_t a = 0xc51b095f; //a1
    //int32_t a = 0xc51b04a7; //a2
    //int32_t a = 0xbf901457; //a3
    //int32_t a = 0x4e802359; //a4

    int32_t a = 0xfffff971;
    
    //int16_t a = 0x095f;
    
    int16_t t, t_hw, t_sw;
    //int16_t golden_res = 0xfc5e; //a
    //int16_t golden_res = 0x04a7; //a2
    //int16_t golden_res = 0xfa55; //a3
    //int16_t golden_res = 0xfc56; //a4

    int16_t golden_res = 0x0672;

    printf("Test started!\n");

    //enable mcycle csr
    //CSR_CLEAR_BITS(CSR_REG_MCOUNTINHIBIT, 0x1);
    //CSR_WRITE(CSR_REG_MCYCLE, 0);
    hw_timer_init();
    timer_init();
    hw_timer_start();

    /*const int16_t v = ((1 << 26) + KYBER_Q / 2) / KYBER_Q;
    t  = ((int32_t)v * a + (1 << 25)) >> 26;
    //printf("Obtained %x \n", t);
    t *= KYBER_Q;
    //printf("Obtained %x \n", t);
    t_sw =  a - t;*/
    
    t_sw = barrett_reduce(a);
    hw_timer_stop();
    cycles = hw_timer_get_cycles();
    
    //CSR_READ(CSR_REG_MCYCLE, &cycles);
    printf("with %d cycles\n", cycles);
    if (golden_res != t_sw) 
        printf("SOFTWARE EVALUTION FAILED: Expected %x, got %x\n", golden_res, t_sw);
    

    register int x24 asm("x24");
    register int x0 asm("x0");

    //CSR_CLEAR_BITS(CSR_REG_MCOUNTINHIBIT, 0x1);
    //CSR_WRITE(CSR_REG_MCYCLE, 0);
    hw_timer_init();
    timer_init();
    hw_timer_start();

    asm volatile (".insn r 0x0b, 0x004, 0, %[dst], %[src], x0\r\n" : [dst] "=r" (t_hw) : [src] "r" (a) : );
    
    hw_timer_stop();
    cycles2 = hw_timer_get_cycles();
    //CSR_READ(CSR_REG_MCYCLE, &cycles);
    printf("Hardware ISA with %d cycles\n", cycles2);
    printf("HARDWARE: Obtained %x \n", t_hw);

    
    if (golden_res != t_hw) {
        printf("ERROR: Expected %x, got %x\n",golden_res, t_hw);
    } else {
        printf("SUCCESS: Expected %x, got %x\n", golden_res, t_hw);
    }

    return 0;
}

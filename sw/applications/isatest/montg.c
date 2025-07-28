#include <stdlib.h>
#include <string.h>
#include <stdint.h>
#include <stddef.h>
#include <stdio.h>
#include <inttypes.h>

#include "csr.h"
#define QINV (-3327) // q^-1 mod 2^16
#define KYBER_Q 3329

int16_t montgomery_reduce(int32_t a) {
    int16_t t;

    t = (int16_t)a * QINV;
    t = (a - (int32_t)t * KYBER_Q) >> 16;
    return t;
}


int main()
{
    unsigned int cycles = 0;
    unsigned int cycles2 = 0;
    int32_t a = 0x00058323;
    int16_t t[100], t_hw[100];
    int16_t golden_res = 0x0378;

    printf("Test started!\n");

    //enable mcycle csr
    CSR_CLEAR_BITS(CSR_REG_MCOUNTINHIBIT, 0x1);
    CSR_WRITE(CSR_REG_MCYCLE, 0);

    for(int i=0;i<100;i++){
      t[i] = montgomery_reduce(i);
    }
    
    CSR_READ(CSR_REG_MCYCLE, &cycles);
    printf("with %d cycles\n", cycles);
    //printf("SOFTWARE EVALUTION PASSED: Expected %d, got %d\n", golden_res, t);
    // if (golden_res != t) 
        //printf("SOFTWARE EVALUTION PASSED: Expected %d, got %d\n", golden_res, t);
    
    CSR_WRITE(CSR_REG_MCYCLE, 0);
    for(int i=0;i<100;i++){
      asm volatile (".insn r 0x0b, 0x003, 2, %[dst], %[src], x0\r\n" : [dst] "=r" (t_hw[i]) : [src] "r" (i) : );
    }
    CSR_READ(CSR_REG_MCYCLE, &cycles2);
    printf("with %d cycles\n", cycles2);
    //asm volatile ("mv %[res], %[src1]\n\t": [res] "=r" (t): [src1] "r"(x12) : "memory");
    //printf("HARDWARE: Obtained %x \n", t_hw);
    
    int ax=0;
    for(int i=0;i<100;i++){
      if (t[i] != t_hw[i]) {
          printf("ERROR: Expected %x, got %x\n", t[i], t_hw[i]);
      }
      else {ax=ax+1;}
    }
    
    //else {
    printf("SUCCESS: a= %x\n", ax);
    //}

    return 0;
}

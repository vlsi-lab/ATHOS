#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdint.h>

#include "csr.h"

int main()
{
    unsigned int rateInBytes, rate;
    unsigned int capacity;
    unsigned int cycles, cycles2, cycles3;

    printf("Test started!\n");
    rate = 1088;
    capacity = 512;

    asm volatile ("": : : "memory");
    CSR_WRITE(CSR_REG_MCYCLE, 0);
    CSR_READ(CSR_REG_MCYCLE, &cycles3);
    printf("\nNumber of clock cycles: %d\n", &cycles3);
    if (((rate + capacity) != 1600) || ((rate % 8) != 0))
        return;
    CSR_READ(CSR_REG_MCYCLE, &cycles);
    printf("\nNumber of clock cycles: %d\n", &cycles);
    
    rateInBytes = rate/8;
    CSR_READ(CSR_REG_MCYCLE, &cycles2);
    printf("\nNumber of clock cycles: %d\n", &cycles2);
    asm volatile ("": : : "memory");
    
    return 0;
}
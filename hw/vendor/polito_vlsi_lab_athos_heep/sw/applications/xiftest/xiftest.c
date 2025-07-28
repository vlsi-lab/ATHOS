#include <stdio.h>
#include <stdlib.h>
#include <xiftest.h>

#include "csr.h"
#include "rv_plic.h"
#include "rv_plic_regs.h"
#include "rv_plic_structs.h"
#include "hart.h"

int main(int argc, char *argv[])
{
    register int x28 asm("x28");
    register int x24 asm("x24");
    register int x25 asm("x25");

    int res;
    unsigned int cycles;
    int actual_x28;

    printf("XIF Test started!\n");
    
    CSR_CLEAR_BITS(CSR_REG_MCOUNTINHIBIT, 0x1);
    // Starting the performance counter
    CSR_WRITE(CSR_REG_MCYCLE, 0);
 
    asm volatile (
        "li x24, 1\r\n"
        "li x25, 2\r\n"
        );

    //XIFTEST;
    
    asm volatile (
        ".insn r 0x3b, 0x001, 0, %[c], x24, x25\r\n" :  [c] "=r" (res)
    );

    CSR_READ(CSR_REG_MCYCLE, &cycles);
    printf("\nNumber of clock cycles keygen: %d\n", &cycles);

    actual_x28 = x24 + x25;
    
    if (res != actual_x28) {
        printf("ERROR: Expected %d, got %d\n", actual_x28, res);
    } else {
        printf("SUCCESS: Expected %d, got %d\n", actual_x28, res);
    }

    return EXIT_SUCCESS;
}
#include <stdio.h>
#include <stdlib.h>
#include <test_dualread.h>

int main(int argc, char *argv[])
{
    register int x28 asm("x28");
    register int x24 asm("x24");
    register int x25 asm("x25");
    register int x26 asm("x26");
    register int x27 asm("x27");
    
    int actual_x28;


    asm volatile (
        "li x24, 50\r\n"
        "li x25, 60\r\n"
        "li x26, 10\r\n"
        "li x27, 80\r\n"
        );

    TEST_DUALREAD;
    
    asm volatile (
        ".insn r 0x3b, 0, 0, x28, x24, x26\r\n"
    );

    actual_x28 = ((x24 * x26) + (x25 * x26)) * (x26 + x27) + (x25 * x27);
    
    if (x28 != actual_x28) {
        printf("ERROR: Expected %d, got %d\n", actual_x28, x28);
    } else {
        printf("SUCCESS: Expected %d, got %d\n", actual_x28, x28);
    }

    return EXIT_SUCCESS;
}
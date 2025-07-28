#include "params.h"
#include "reduce.h"
#include <stdint.h>

/*************************************************
* Name:        PQCLEAN_KYBER768_CLEAN_montgomery_reduce
*
* Description: Montgomery reduction; given a 32-bit integer a, computes
*              16-bit integer congruent to a * R^-1 mod q, where R=2^16
*
* Arguments:   - int32_t a: input integer to be reduced;
*                           has to be in {-q2^15,...,q2^15-1}
*
* Returns:     integer in {-q+1,...,q-1} congruent to a * R^-1 modulo q.
**************************************************/
int16_t PQCLEAN_KYBER768_CLEAN_montgomery_reduce(int32_t a) {
    int16_t t;
    register int x12 asm("x12");
    register int x24 asm("x24");
    register int x25 asm("x25");

    /*t = (int16_t)a * QINV;
    t = (a - (int32_t)t * KYBER_Q) >> 16;
    */
    asm volatile ("mv %[dst], %[src]\r\n" : [dst] "=r" (x24) : [src] "r" (a));
    //asm volatile ("mv %[dst], %[src]\r\n" : [dst] "=r" (x25) : [src] "r" (a));
    asm volatile (".insn r 0x3b, 0x003, 1, %[dst], x24, x25\r\n" : [dst] "=r" (t) : : );
    //asm volatile ("mv %[res], %[src1]\n\t": [res] "=r" (t): [src1] "r"(x12) : "memory");
    //printf("HARDWARE: Obtained %x \n", t);
    return t;
}

/*************************************************
* Name:        PQCLEAN_KYBER768_CLEAN_barrett_reduce
*
* Description: Barrett reduction; given a 16-bit integer a, computes
*              centered representative congruent to a mod q in {-(q-1)/2,...,(q-1)/2}
*
* Arguments:   - int16_t a: input integer to be reduced
*
* Returns:     integer in {-(q-1)/2,...,(q-1)/2} congruent to a modulo q.
**************************************************/
int16_t PQCLEAN_KYBER768_CLEAN_barrett_reduce(int16_t a) {
    int16_t t;
    const int16_t v = ((1 << 26) + KYBER_Q / 2) / KYBER_Q;

    t  = ((int32_t)v * a + (1 << 25)) >> 26;
    t *= KYBER_Q;
    return a - t;
}

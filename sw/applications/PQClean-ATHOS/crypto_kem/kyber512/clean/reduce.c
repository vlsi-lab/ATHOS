#include "params.h"
#include "reduce.h"
#include <stdint.h>
#include <stdio.h>

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

    t = (int16_t)a * QINV;
    t = (a - (int32_t)t * KYBER_Q) >> 16;
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
    //const int16_t v = ((1 << 26) + KYBER_Q / 2) / KYBER_Q;
    //t  = ((int32_t)v * a + (1 << 25)) >> 26;
    //t *= KYBER_Q;
    asm volatile (".insn r 0x0b, 0x004, 0, %[dst], %[src], x0\r\n" : [dst] "=r" (t) : [src] "r" (a) : );

    return a - t;
}
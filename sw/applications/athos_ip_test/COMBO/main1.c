#include <stdio.h>
#include <inttypes.h>
#include <string.h>

#include "core_v_mini_mcu.h"
#include "athos_ip_x_heep.h"
#include "athos_ip_driver.h"
#include "keccak_ip_driver.h"
#include "init_athos_ip.h"
#include "csr.h"
#include "rv_plic.h"
#include "rv_plic_regs.h"
#include "rv_plic_structs.h"
#include "hart.h"

#define SIZE 50
#define ROL(a, offset) (((a) << (offset)) ^ ((a) >> (64 - (offset))))
#define OPERATION 1
#define NROUNDS 24

typedef struct {
    int16_t coeffs[256];
} poly;



int main(){

	static uint32_t Din[SIZE] __attribute__ ((aligned (4)));
	static uint32_t Dout[SIZE] __attribute__ ((aligned (4)));

	static uint32_t D_expected[SIZE];
	int i = 0;
	uint64_t s[25], s_exp[25];

	memset(Din, 0, sizeof(Din));
	memset(Dout, 0, sizeof(Dout));
	memset(D_expected, 0, sizeof(D_expected));
	
	unsigned int cycles = 0;

    poly r;
    int16_t golden_res[256];
    int16_t output[256];
    int16_t dout[256];
    int16_t golden_res_final[256];
    int16_t error = 0;

    size_t size = 256;

	Din[0] = 0x7369C667;
	Din[1] = 0xEC4AFF51;
	Din[2] = 0xABBACD29;
	Din[3] = 0x00000010;
	Din[31] = 0x80000000;

	s[0]  = 0xEC4AFF517369C667;
	s[1]  = 0x00000010ABBACD29;
    s[2]  = 0x0000000000000000;
    s[3]  = 0x0000000000000000;
    s[4]  = 0x0000000000000000;
    s[5]  = 0x0000000000000000;
    s[6]  = 0x0000000000000000;
    s[7]  = 0x0000000000000000;
    s[8]  = 0x0000000000000000;
    s[9]  = 0x0000000000000000;
    s[10] = 0x0000000000000000;
    s[11] = 0x0000000000000000;
    s[12] = 0x0000000000000000;
    s[13] = 0x0000000000000000;
    s[14] = 0x0000000000000000;
    s[15] = 0x8000000000000000;
    s[16] = 0x0000000000000000;
    s[17] = 0x0000000000000000;
    s[18] = 0x0000000000000000;
    s[19] = 0x0000000000000000;
    s[20] = 0x0000000000000000;
    s[21] = 0x0000000000000000;
    s[22] = 0x0000000000000000;
    s[23] = 0x0000000000000000;
    s[24] = 0x0000000000000000;

	

	D_expected[1] = 0xE1ADB0E2;
	D_expected[0] = 0xE7CB8356;
	D_expected[3] = 0xBB3F5FB8;
	D_expected[2] = 0x573A5BD7;
	D_expected[5] = 0xF7CA02A1;
	D_expected[4] = 0xE9784CC5;
	D_expected[7] = 0x6E54F256;
	D_expected[6] = 0x60A4C685;
	D_expected[9] = 0x77051F83;
	D_expected[8] = 0x243FCBAA;
	D_expected[11] = 0x6459DB0B;
	D_expected[10] = 0x4C063DD5;
	D_expected[13] = 0xE046DE71;
	D_expected[12] = 0xCB4B81C6;
	D_expected[15] = 0x94051793;
	D_expected[14] = 0xDB31F24C;
	D_expected[17] = 0xA13FC86C;
	D_expected[16] = 0xF16E32DD;
	D_expected[19] = 0xB962FC91;
	D_expected[18] = 0xB7737708;
	D_expected[21] = 0xD3CA2E7A;
	D_expected[20] = 0xFA27C801;
	D_expected[23] = 0x53C85108;
	D_expected[22] = 0xF72A3CCA;
	D_expected[25] = 0x73E732CD;
	D_expected[24] = 0xADF0E783;
	D_expected[27] = 0x8470BD54;
	D_expected[26] = 0xC4BDD1BF; 
	D_expected[29] = 0xD10B916F;
	D_expected[28] = 0x7C8C1F77; 
	D_expected[31] = 0x51129474;
	D_expected[30] = 0x440A2670; 
	D_expected[33] = 0x3D77CB49;
	D_expected[32] = 0xE9960C44; 
	D_expected[35] = 0xEC5001EB;
	D_expected[34] = 0xE4251E39; 
	D_expected[37] = 0x77A0EEC5;
	D_expected[36] = 0xEA4FD653;
	D_expected[39] = 0xEBC86BD4;
	D_expected[38] = 0x7B6773E7; 
	D_expected[41] = 0xE77DF6B0;
	D_expected[40] = 0x128FDC4B; 
	D_expected[43] = 0x0DB0D48A;
	D_expected[42] = 0x02F1B12E; 
	D_expected[45] = 0x241B344D;
	D_expected[44] = 0x0DC38AE5;
	D_expected[47] = 0xC3EE4E27;
	D_expected[46] = 0x532483D8;
	D_expected[49] = 0x0271BFE2;
	D_expected[48] = 0x84B1B424;

    s_exp[0] = 0xE1ADB0E2E7CB8356;
    s_exp[1] = 0xBB3F5FB8573A5BD7;
    s_exp[2] = 0xF7CA02A1E9784CC5;
    s_exp[3] = 0x6E54F25660A4C685;
    s_exp[4] = 0x77051F83243FCBAA;
    s_exp[5] = 0x6459DB0B4C063DD5;
    s_exp[6] = 0xE046DE71CB4B81C6;
    s_exp[7] = 0x94051793DB31F24C;
    s_exp[8] = 0xA13FC86CF16E32DD;
    s_exp[9] = 0xB962FC91B7737708;
    s_exp[10] = 0xD3CA2E7AFA27C801;
    s_exp[11] = 0x53C85108F72A3CCA;
    s_exp[12] = 0x73E732CDADF0E783;
    s_exp[13] = 0x8470BD54C4BDD1BF;
    s_exp[14] = 0xD10B916F7C8C1F77;
    s_exp[15] = 0x51129474440A2670;
    s_exp[16] = 0x3D77CB49E9960C44;
    s_exp[17] = 0xEC5001EBE4251E39;
    s_exp[18] = 0x77A0EEC5EA4FD653;
    s_exp[19] = 0xEBC86BD47B6773E7;
    s_exp[20] = 0xE77DF6B0128FDC4B;
    s_exp[21] = 0x0DB0D48A02F1B12E;
    s_exp[22] = 0x241B344D0DC38AE5;
    s_exp[23] = 0xC3EE4E27532483D8;
    s_exp[24] = 0x0271BFE284B1B424;

    init_athos();
    CSR_CLEAR_BITS(CSR_REG_MCOUNTINHIBIT, 0x1);

    CSR_WRITE(CSR_REG_MCYCLE, 0);
	keccak_ip_driver(Din,Dout);
	CSR_READ(CSR_REG_MCYCLE, &cycles);
    printf("with %d cycles\n", cycles); 

	for (i = 0; i< SIZE; i++ ){
		if (Dout[i] != D_expected[i]){
			printf("ERROR keccak output did not match test vector. ");
        	printf("Expected D[%d]: %04X but obtained %04X \n", i, D_expected[i], Dout[i]);
		}	
	}	
	printf("Keccak terminated!\n");


    CSR_WRITE(CSR_REG_MCYCLE, 0);
	keccak_ip_driver(Din,Dout);
	CSR_READ(CSR_REG_MCYCLE, &cycles);
    printf("with %d cycles\n", cycles); 

	for (i = 0; i< SIZE; i++ ){
		if (Dout[i] != D_expected[i]){
			printf("ERROR keccak output did not match test vector. ");
        	printf("Expected D[%d]: %04X but obtained %04X \n", i, D_expected[i], Dout[i]);
		}	
	}	
	printf("Keccak2 terminated!\n");



	return 0;

}

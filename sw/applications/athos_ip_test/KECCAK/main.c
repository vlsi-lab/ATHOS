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

/* Keccak round constants */
const uint64_t KeccakF_RoundConstants_sw[NROUNDS] = {
    0x0000000000000001ULL, 0x0000000000008082ULL,
    0x800000000000808aULL, 0x8000000080008000ULL,
    0x000000000000808bULL, 0x0000000080000001ULL,
    0x8000000080008081ULL, 0x8000000000008009ULL,
    0x000000000000008aULL, 0x0000000000000088ULL,
    0x0000000080008009ULL, 0x000000008000000aULL,
    0x000000008000808bULL, 0x800000000000008bULL,
    0x8000000000008089ULL, 0x8000000000008003ULL,
    0x8000000000008002ULL, 0x8000000000000080ULL,
    0x000000000000800aULL, 0x800000008000000aULL,
    0x8000000080008081ULL, 0x8000000000008080ULL,
    0x0000000080000001ULL, 0x8000000080008008ULL
};

/*************************************************
 * Name:        KeccakF1600_StatePermute
 *
 * Description: The Keccak F1600 Permutation
 *
 * Arguments:   - uint64_t *state: pointer to input/output Keccak state
 **************************************************/
void KeccakF1600_StatePermute_sw(uint64_t* state) {
    int round;

    uint64_t Aba, Abe, Abi, Abo, Abu;
    uint64_t Aga, Age, Agi, Ago, Agu;
    uint64_t Aka, Ake, Aki, Ako, Aku;
    uint64_t Ama, Ame, Ami, Amo, Amu;
    uint64_t Asa, Ase, Asi, Aso, Asu;
    uint64_t BCa, BCe, BCi, BCo, BCu;
    uint64_t Da, De, Di, Do, Du;
    uint64_t Eba, Ebe, Ebi, Ebo, Ebu;
    uint64_t Ega, Ege, Egi, Ego, Egu;
    uint64_t Eka, Eke, Eki, Eko, Eku;
    uint64_t Ema, Eme, Emi, Emo, Emu;
    uint64_t Esa, Ese, Esi, Eso, Esu;

    // copyFromState(A, state)
    Aba = state[0];
    Abe = state[1];
    Abi = state[2];
    Abo = state[3];
    Abu = state[4];
    Aga = state[5];
    Age = state[6];
    Agi = state[7];
    Ago = state[8];
    Agu = state[9];
    Aka = state[10];
    Ake = state[11];
    Aki = state[12];
    Ako = state[13];
    Aku = state[14];
    Ama = state[15];
    Ame = state[16];
    Ami = state[17];
    Amo = state[18];
    Amu = state[19];
    Asa = state[20];
    Ase = state[21];
    Asi = state[22];
    Aso = state[23];
    Asu = state[24];

    for (round = 0; round < NROUNDS; round += 2) {
        //    prepareTheta
        BCa = Aba ^ Aga ^ Aka ^ Ama ^ Asa;
        BCe = Abe ^ Age ^ Ake ^ Ame ^ Ase;
        BCi = Abi ^ Agi ^ Aki ^ Ami ^ Asi;
        BCo = Abo ^ Ago ^ Ako ^ Amo ^ Aso;
        BCu = Abu ^ Agu ^ Aku ^ Amu ^ Asu;

        // thetaRhoPiChiIotaPrepareTheta(round  , A, E)
        Da = BCu ^ ROL(BCe, 1);
        De = BCa ^ ROL(BCi, 1);
        Di = BCe ^ ROL(BCo, 1);
        Do = BCi ^ ROL(BCu, 1);
        Du = BCo ^ ROL(BCa, 1);

        Aba ^= Da;
        BCa = Aba;
        Age ^= De;
        BCe = ROL(Age, 44);
        Aki ^= Di;
        BCi = ROL(Aki, 43);
        Amo ^= Do;
        BCo = ROL(Amo, 21);
        Asu ^= Du;
        BCu = ROL(Asu, 14);
        Eba = BCa ^ ((~BCe) & BCi);
        Eba ^= KeccakF_RoundConstants_sw[round];
        Ebe = BCe ^ ((~BCi) & BCo);
        Ebi = BCi ^ ((~BCo) & BCu);
        Ebo = BCo ^ ((~BCu) & BCa);
        Ebu = BCu ^ ((~BCa) & BCe);

        Abo ^= Do;
        BCa = ROL(Abo, 28);
        Agu ^= Du;
        BCe = ROL(Agu, 20);
        Aka ^= Da;
        BCi = ROL(Aka, 3);
        Ame ^= De;
        BCo = ROL(Ame, 45);
        Asi ^= Di;
        BCu = ROL(Asi, 61);
        Ega = BCa ^ ((~BCe) & BCi);
        Ege = BCe ^ ((~BCi) & BCo);
        Egi = BCi ^ ((~BCo) & BCu);
        Ego = BCo ^ ((~BCu) & BCa);
        Egu = BCu ^ ((~BCa) & BCe);

        Abe ^= De;
        BCa = ROL(Abe, 1);
        Agi ^= Di;
        BCe = ROL(Agi, 6);
        Ako ^= Do;
        BCi = ROL(Ako, 25);
        Amu ^= Du;
        BCo = ROL(Amu, 8);
        Asa ^= Da;
        BCu = ROL(Asa, 18);
        Eka = BCa ^ ((~BCe) & BCi);
        Eke = BCe ^ ((~BCi) & BCo);
        Eki = BCi ^ ((~BCo) & BCu);
        Eko = BCo ^ ((~BCu) & BCa);
        Eku = BCu ^ ((~BCa) & BCe);

        Abu ^= Du;
        BCa = ROL(Abu, 27);
        Aga ^= Da;
        BCe = ROL(Aga, 36);
        Ake ^= De;
        BCi = ROL(Ake, 10);
        Ami ^= Di;
        BCo = ROL(Ami, 15);
        Aso ^= Do;
        BCu = ROL(Aso, 56);
        Ema = BCa ^ ((~BCe) & BCi);
        Eme = BCe ^ ((~BCi) & BCo);
        Emi = BCi ^ ((~BCo) & BCu);
        Emo = BCo ^ ((~BCu) & BCa);
        Emu = BCu ^ ((~BCa) & BCe);

        Abi ^= Di;
        BCa = ROL(Abi, 62);
        Ago ^= Do;
        BCe = ROL(Ago, 55);
        Aku ^= Du;
        BCi = ROL(Aku, 39);
        Ama ^= Da;
        BCo = ROL(Ama, 41);
        Ase ^= De;
        BCu = ROL(Ase, 2);
        Esa = BCa ^ ((~BCe) & BCi);
        Ese = BCe ^ ((~BCi) & BCo);
        Esi = BCi ^ ((~BCo) & BCu);
        Eso = BCo ^ ((~BCu) & BCa);
        Esu = BCu ^ ((~BCa) & BCe);

        //    prepareTheta
        BCa = Eba ^ Ega ^ Eka ^ Ema ^ Esa;
        BCe = Ebe ^ Ege ^ Eke ^ Eme ^ Ese;
        BCi = Ebi ^ Egi ^ Eki ^ Emi ^ Esi;
        BCo = Ebo ^ Ego ^ Eko ^ Emo ^ Eso;
        BCu = Ebu ^ Egu ^ Eku ^ Emu ^ Esu;

        // thetaRhoPiChiIotaPrepareTheta(round+1, E, A)
        Da = BCu ^ ROL(BCe, 1);
        De = BCa ^ ROL(BCi, 1);
        Di = BCe ^ ROL(BCo, 1);
        Do = BCi ^ ROL(BCu, 1);
        Du = BCo ^ ROL(BCa, 1);

        Eba ^= Da;
        BCa = Eba;
        Ege ^= De;
        BCe = ROL(Ege, 44);
        Eki ^= Di;
        BCi = ROL(Eki, 43);
        Emo ^= Do;
        BCo = ROL(Emo, 21);
        Esu ^= Du;
        BCu = ROL(Esu, 14);
        Aba = BCa ^ ((~BCe) & BCi);
        Aba ^= KeccakF_RoundConstants_sw[round + 1];
        Abe = BCe ^ ((~BCi) & BCo);
        Abi = BCi ^ ((~BCo) & BCu);
        Abo = BCo ^ ((~BCu) & BCa);
        Abu = BCu ^ ((~BCa) & BCe);

        Ebo ^= Do;
        BCa = ROL(Ebo, 28);
        Egu ^= Du;
        BCe = ROL(Egu, 20);
        Eka ^= Da;
        BCi = ROL(Eka, 3);
        Eme ^= De;
        BCo = ROL(Eme, 45);
        Esi ^= Di;
        BCu = ROL(Esi, 61);
        Aga = BCa ^ ((~BCe) & BCi);
        Age = BCe ^ ((~BCi) & BCo);
        Agi = BCi ^ ((~BCo) & BCu);
        Ago = BCo ^ ((~BCu) & BCa);
        Agu = BCu ^ ((~BCa) & BCe);

        Ebe ^= De;
        BCa = ROL(Ebe, 1);
        Egi ^= Di;
        BCe = ROL(Egi, 6);
        Eko ^= Do;
        BCi = ROL(Eko, 25);
        Emu ^= Du;
        BCo = ROL(Emu, 8);
        Esa ^= Da;
        BCu = ROL(Esa, 18);
        Aka = BCa ^ ((~BCe) & BCi);
        Ake = BCe ^ ((~BCi) & BCo);
        Aki = BCi ^ ((~BCo) & BCu);
        Ako = BCo ^ ((~BCu) & BCa);
        Aku = BCu ^ ((~BCa) & BCe);

        Ebu ^= Du;
        BCa = ROL(Ebu, 27);
        Ega ^= Da;
        BCe = ROL(Ega, 36);
        Eke ^= De;
        BCi = ROL(Eke, 10);
        Emi ^= Di;
        BCo = ROL(Emi, 15);
        Eso ^= Do;
        BCu = ROL(Eso, 56);
        Ama = BCa ^ ((~BCe) & BCi);
        Ame = BCe ^ ((~BCi) & BCo);
        Ami = BCi ^ ((~BCo) & BCu);
        Amo = BCo ^ ((~BCu) & BCa);
        Amu = BCu ^ ((~BCa) & BCe);

        Ebi ^= Di;
        BCa = ROL(Ebi, 62);
        Ego ^= Do;
        BCe = ROL(Ego, 55);
        Eku ^= Du;
        BCi = ROL(Eku, 39);
        Ema ^= Da;
        BCo = ROL(Ema, 41);
        Ese ^= De;
        BCu = ROL(Ese, 2);
        Asa = BCa ^ ((~BCe) & BCi);
        Ase = BCe ^ ((~BCi) & BCo);
        Asi = BCi ^ ((~BCo) & BCu);
        Aso = BCo ^ ((~BCu) & BCa);
        Asu = BCu ^ ((~BCa) & BCe);
    }

    // copyToState(state, A)
    state[0] = Aba;
    state[1] = Abe;
    state[2] = Abi;
    state[3] = Abo;
    state[4] = Abu;
    state[5] = Aga;
    state[6] = Age;
    state[7] = Agi;
    state[8] = Ago;
    state[9] = Agu;
    state[10] = Aka;
    state[11] = Ake;
    state[12] = Aki;
    state[13] = Ako;
    state[14] = Aku;
    state[15] = Ama;
    state[16] = Ame;
    state[17] = Ami;
    state[18] = Amo;
    state[19] = Amu;
    state[20] = Asa;
    state[21] = Ase;
    state[22] = Asi;
    state[23] = Aso;
    state[24] = Asu;
}

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
    unsigned int cycles_sw = 0;

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


    printf("Hello Keccak\n");
    CSR_CLEAR_BITS(CSR_REG_MCOUNTINHIBIT, 0x1);
    CSR_WRITE(CSR_REG_MCYCLE, 0);
    KeccakF1600_StatePermute_sw(s);
    CSR_READ(CSR_REG_MCYCLE, &cycles_sw);
    printf("with %d cycles\n", cycles_sw);

    for (i = 0; i< 8; i++ ){
		if (s[i] != s_exp[i]){
			printf("ERROR KECCAK output did not match test vector. ");
        	printf("Expected D[%d]: %04X but obtained %04X \n", i, s[i], s_exp[i]);
		}	
	}

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
	return 0;

}

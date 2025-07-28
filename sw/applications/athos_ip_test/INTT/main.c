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
#define SIZE 256
#define OPERATION 3

#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>


// Define the function
typedef struct {
    int16_t coeffs[256];
} poly;


void swapElements(poly *r, int i) {
    int16_t temp = r->coeffs[i];
    r->coeffs[i] = r->coeffs[i + 2];
    r->coeffs[i + 2] = r->coeffs[i + 3];
    r->coeffs[i + 3] = r->coeffs[i + 1];
    r->coeffs[i + 1] = temp;
}


/* Don't change parameters below this line */
#define KYBER_N 256
#define KYBER_Q 3329

const int16_t zetas[128] = {
    -1044,  -758,  -359, -1517,  1493,  1422,   287,   202,
    -171,   622,  1577,   182,   962, -1202, -1474,  1468,
    573, -1325,   264,   383,  -829,  1458, -1602,  -130,
    -681,  1017,   732,   608, -1542,   411,  -205, -1571,
    1223,   652,  -552,  1015, -1293,  1491,  -282, -1544,
    516,    -8,  -320,  -666, -1618, -1162,   126,  1469,
    -853,   -90,  -271,   830,   107, -1421,  -247,  -951,
    -398,   961, -1508,  -725,   448, -1065,   677, -1275,
    -1103,   430,   555,   843, -1251,   871,  1550,   105,
    422,   587,   177,  -235,  -291,  -460,  1574,  1653,
    -246,   778,  1159,  -147,  -777,  1483,  -602,  1119,
    -1590,   644,  -872,   349,   418,   329,  -156,   -75,
    817,  1097,   603,   610,  1322, -1285, -1465,   384,
    -1215,  -136,  1218, -1335,  -874,   220, -1187, -1659,
    -1185, -1530, -1278,   794, -1510,  -854,  -870,   478,
    -108,  -308,   996,   991,   958, -1460,  1522,  1628
};

#define MONT (-1044) // 2^16 mod q
#define QINV (-3327) // q^-1 mod 2^16

int16_t barrett_reduce(int16_t a) {
    int16_t t,t1;
    const int16_t v = ((1 << 26) + KYBER_Q / 2) / KYBER_Q;

    t  = ((int32_t)v * a + (1 << 25)) >> 26;
    t *= KYBER_Q;
    t1 = a-t;
        
    return t1;
}

int16_t montgomery_reduce(int32_t a) {
    int16_t t;

    t = (int16_t)a * QINV;
    t = (a - (int32_t)t * KYBER_Q) >> 16;
    return t;
}


static int16_t fqmul(int16_t a, int16_t b) {
    return montgomery_reduce((int32_t)a * b);
}


void invntt(int16_t r[256]) {
    unsigned int start, len, j, k;
    int16_t t, zeta;
    const int16_t f = 1441; // mont^2/128

    k = 127;
    for (len = 2; len <= 128; len <<= 1) {
        for (start = 0; start < 256; start = j + len) {
            zeta = zetas[k--];
            for (j = start; j < start + len; j++) {
                t = r[j];
                r[j] = barrett_reduce(t + r[j + len]);
                r[j + len] = r[j + len] - t;
                r[j + len] = fqmul(zeta, r[j + len]);
            }
        }
    }

    for (j = 0; j < 256; j++) {
        r[j] = fqmul(r[j], f);
    }
}


//**********************************************************************************************


int main() {
    // Define the size
	unsigned int cycles = 0;
    poly r;
    int16_t golden_res[256];
    int16_t output[256];
    int16_t dout[256];
    int16_t golden_res_final[256];
    int16_t error = 0;

    size_t size = 256;

    //printf("INTT-TEST\n");

    r.coeffs[0] = 0xfd1d;
    r.coeffs[1] = 0x23;
    r.coeffs[2] = 0xfd7a;
    r.coeffs[3] = 0x4bf;
    r.coeffs[4] = 0x600;
    r.coeffs[5] = 0xfdd2;
    r.coeffs[6] = 0xfd4a;
    r.coeffs[7] = 0x296;
    r.coeffs[8] = 0x5b6;
    r.coeffs[9] = 0x459;
    r.coeffs[10] = 0xf9fb;
    r.coeffs[11] = 0xfb28;
    r.coeffs[12] = 0x646;
    r.coeffs[13] = 0xfb72;
    r.coeffs[14] = 0xf999;
    r.coeffs[15] = 0xfd52;
    r.coeffs[16] = 0xfb20;
    r.coeffs[17] = 0xff41;
    r.coeffs[18] = 0x390;
    r.coeffs[19] = 0x548;
    r.coeffs[20] = 0x127;
    r.coeffs[21] = 0x4;
    r.coeffs[22] = 0x4e1;
    r.coeffs[23] = 0x59;
    r.coeffs[24] = 0x89;
    r.coeffs[25] = 0x16b;
    r.coeffs[26] = 0xfb3b;
    r.coeffs[27] = 0xf996;
    r.coeffs[28] = 0x205;
    r.coeffs[29] = 0x53d;
    r.coeffs[30] = 0xd8;
    r.coeffs[31] = 0x316;
    r.coeffs[32] = 0x2be;
    r.coeffs[33] = 0xfc39;
    r.coeffs[34] = 0xfcf8;
    r.coeffs[35] = 0xfe99;
    r.coeffs[36] = 0xff52;
    r.coeffs[37] = 0x311;
    r.coeffs[38] = 0xfccd;
    r.coeffs[39] = 0xfc71;
    r.coeffs[40] = 0xff16;
    r.coeffs[41] = 0xfca4;
    r.coeffs[42] = 0x1b5;
    r.coeffs[43] = 0xfb97;
    r.coeffs[44] = 0x562;
    r.coeffs[45] = 0x49b;
    r.coeffs[46] = 0xfd98;
    r.coeffs[47] = 0x90;
    r.coeffs[48] = 0x7a;
    r.coeffs[49] = 0x569;
    r.coeffs[50] = 0x15d;
    r.coeffs[51] = 0xfcec;
    r.coeffs[52] = 0x2ab;
    r.coeffs[53] = 0x539;
    r.coeffs[54] = 0x1f3;
    r.coeffs[55] = 0x2a9;
    r.coeffs[56] = 0xf9e1;
    r.coeffs[57] = 0x299;
    r.coeffs[58] = 0x382;
    r.coeffs[59] = 0xff52;
    r.coeffs[60] = 0x4f9;
    r.coeffs[61] = 0xfa10;
    r.coeffs[62] = 0x46e;
    r.coeffs[63] = 0x42a;
    r.coeffs[64] = 0xfe7b;
    r.coeffs[65] = 0x320;
    r.coeffs[66] = 0x4c9;
    r.coeffs[67] = 0xfad4;
    r.coeffs[68] = 0xfdb2;
    r.coeffs[69] = 0xfd27;
    r.coeffs[70] = 0x477;
    r.coeffs[71] = 0xff38;
    r.coeffs[72] = 0x4fc;
    r.coeffs[73] = 0xf999;
    r.coeffs[74] = 0xfba8;
    r.coeffs[75] = 0xfe93;
    r.coeffs[76] = 0xff5c;
    r.coeffs[77] = 0x28c;
    r.coeffs[78] = 0xfcfd;
    r.coeffs[79] = 0x1f7;
    r.coeffs[80] = 0x4f2;
    r.coeffs[81] = 0xff73;
    r.coeffs[82] = 0xfc3e;
    r.coeffs[83] = 0x30;
    r.coeffs[84] = 0x241;
    r.coeffs[85] = 0xf9fc;
    r.coeffs[86] = 0x679;
    r.coeffs[87] = 0x79;
    r.coeffs[88] = 0x525;
    r.coeffs[89] = 0xfc3d;
    r.coeffs[90] = 0x273;
    r.coeffs[91] = 0xfb42;
    r.coeffs[92] = 0x6e;
    r.coeffs[93] = 0x48f;
    r.coeffs[94] = 0x489;
    r.coeffs[95] = 0x5ab;
    r.coeffs[96] = 0xff6c;
    r.coeffs[97] = 0x668;
    r.coeffs[98] = 0x23c;
    r.coeffs[99] = 0x542;
    r.coeffs[100] = 0x457;
    r.coeffs[101] = 0x589;
    r.coeffs[102] = 0x4d;
    r.coeffs[103] = 0xfd09;
    r.coeffs[104] = 0xff0c;
    r.coeffs[105] = 0xc;
    r.coeffs[106] = 0x297;
    r.coeffs[107] = 0xfb14;
    r.coeffs[108] = 0xf999;
    r.coeffs[109] = 0xff6e;
    r.coeffs[110] = 0x4e7;
    r.coeffs[111] = 0x5fc;
    r.coeffs[112] = 0x3bf;
    r.coeffs[113] = 0x1bd;
    r.coeffs[114] = 0x3e9;
    r.coeffs[115] = 0x55a;
    r.coeffs[116] = 0xfc66;
    r.coeffs[117] = 0xfd0e;
    r.coeffs[118] = 0x2e0;
    r.coeffs[119] = 0xfb76;
    r.coeffs[120] = 0xfa67;
    r.coeffs[121] = 0xfc94;
    r.coeffs[122] = 0x27a;
    r.coeffs[123] = 0xfb16;
    r.coeffs[124] = 0xfc18;
    r.coeffs[125] = 0xffd4;
    r.coeffs[126] = 0xf9fd;
    r.coeffs[127] = 0x638;
    r.coeffs[128] = 0xfcc9;
    r.coeffs[129] = 0xfedf;
    r.coeffs[130] = 0xfc03;
    r.coeffs[131] = 0xff30;
    r.coeffs[132] = 0xfad3;
    r.coeffs[133] = 0xc0;
    r.coeffs[134] = 0xfc50;
    r.coeffs[135] = 0x65;
    r.coeffs[136] = 0x15a;
    r.coeffs[137] = 0x627;
    r.coeffs[138] = 0x22f;
    r.coeffs[139] = 0x526;
    r.coeffs[140] = 0xfb16;
    r.coeffs[141] = 0x57a;
    r.coeffs[142] = 0x58d;
    r.coeffs[143] = 0xfce2;
    r.coeffs[144] = 0xf996;
    r.coeffs[145] = 0xfb5f;
    r.coeffs[146] = 0xf9c1;
    r.coeffs[147] = 0x22b;
    r.coeffs[148] = 0xfb90;
    r.coeffs[149] = 0x268;
    r.coeffs[150] = 0x47a;
    r.coeffs[151] = 0xd3;
    r.coeffs[152] = 0x241;
    r.coeffs[153] = 0x37b;
    r.coeffs[154] = 0x2c1;
    r.coeffs[155] = 0x491;
    r.coeffs[156] = 0x5ba;
    r.coeffs[157] = 0x3aa;
    r.coeffs[158] = 0x3e6;
    r.coeffs[159] = 0xf9ff;
    r.coeffs[160] = 0x131;
    r.coeffs[161] = 0xfe00;
    r.coeffs[162] = 0x3b4;
    r.coeffs[163] = 0xfdc1;
    r.coeffs[164] = 0x111;
    r.coeffs[165] = 0xfde2;
    r.coeffs[166] = 0xfcaf;
    r.coeffs[167] = 0xfa0a;
    r.coeffs[168] = 0xfa29;
    r.coeffs[169] = 0xfdba;
    r.coeffs[170] = 0x4bb;
    r.coeffs[171] = 0xfa64;
    r.coeffs[172] = 0xf9b1;
    r.coeffs[173] = 0x61;
    r.coeffs[174] = 0x226;
    r.coeffs[175] = 0xfa81;
    r.coeffs[176] = 0x3c3;
    r.coeffs[177] = 0xffd2;
    r.coeffs[178] = 0xfa3c;
    r.coeffs[179] = 0x256;
    r.coeffs[180] = 0x156;
    r.coeffs[181] = 0x381;
    r.coeffs[182] = 0xfd56;
    r.coeffs[183] = 0x233;
    r.coeffs[184] = 0x3fd;
    r.coeffs[185] = 0xfb0e;
    r.coeffs[186] = 0x382;
    r.coeffs[187] = 0xfc82;
    r.coeffs[188] = 0x179;
    r.coeffs[189] = 0x59c;
    r.coeffs[190] = 0xffb6;
    r.coeffs[191] = 0xfb61;
    r.coeffs[192] = 0x1f;
    r.coeffs[193] = 0x55f;
    r.coeffs[194] = 0xfb12;
    r.coeffs[195] = 0xfe1b;
    r.coeffs[196] = 0x6c;
    r.coeffs[197] = 0xfd6e;
    r.coeffs[198] = 0xf995;
    r.coeffs[199] = 0x4d8;
    r.coeffs[200] = 0x578;
    r.coeffs[201] = 0xfc1c;
    r.coeffs[202] = 0xfb3d;
    r.coeffs[203] = 0x37e;
    r.coeffs[204] = 0x21a;
    r.coeffs[205] = 0xfef9;
    r.coeffs[206] = 0x42e;
    r.coeffs[207] = 0x623;
    r.coeffs[208] = 0xfacb;
    r.coeffs[209] = 0xfa75;
    r.coeffs[210] = 0xf9bf;
    r.coeffs[211] = 0x278;
    r.coeffs[212] = 0x22;
    r.coeffs[213] = 0xfd14;
    r.coeffs[214] = 0x3b2;
    r.coeffs[215] = 0xfca0;
    r.coeffs[216] = 0x2af;
    r.coeffs[217] = 0x97;
    r.coeffs[218] = 0xffec;
    r.coeffs[219] = 0x22d;
    r.coeffs[220] = 0xfe0b;
    r.coeffs[221] = 0xfc93;
    r.coeffs[222] = 0xfed0;
    r.coeffs[223] = 0xfc0a;
    r.coeffs[224] = 0x90;
    r.coeffs[225] = 0xfbf5;
    r.coeffs[226] = 0x46a;
    r.coeffs[227] = 0xfca5;
    r.coeffs[228] = 0x217;
    r.coeffs[229] = 0xf99e;
    r.coeffs[230] = 0x209;
    r.coeffs[231] = 0xfc5f;
    r.coeffs[232] = 0xfe6a;
    r.coeffs[233] = 0x2d2;
    r.coeffs[234] = 0x5c3;
    r.coeffs[235] = 0xfbba;
    r.coeffs[236] = 0xfdba;
    r.coeffs[237] = 0x329;
    r.coeffs[238] = 0xfffe;
    r.coeffs[239] = 0xfc9b;
    r.coeffs[240] = 0x2bf;
    r.coeffs[241] = 0x342;
    r.coeffs[242] = 0x193;
    r.coeffs[243] = 0xfa51;
    r.coeffs[244] = 0xfe9d;
    r.coeffs[245] = 0xfdf8;
    r.coeffs[246] = 0xfdf2;
    r.coeffs[247] = 0x364;
    r.coeffs[248] = 0x2be;
    r.coeffs[249] = 0x4c;
    r.coeffs[250] = 0x281;
    r.coeffs[251] = 0xfc39;
    r.coeffs[252] = 0x2aa;
    r.coeffs[253] = 0xfd40;
    r.coeffs[254] = 0x496;
    r.coeffs[255] = 0x1cf;

    golden_res[0] = 0x239;
    golden_res[1] = 0xfb23;
    golden_res[2] = 0xbc;
    golden_res[3] = 0x290;
    golden_res[4] = 0xffa6;
    golden_res[5] = 0xfdff;
    golden_res[6] = 0xf9a4;
    golden_res[7] = 0x44;
    golden_res[8] = 0x134;
    golden_res[9] = 0x4fb;
    golden_res[10] = 0x4af;
    golden_res[11] = 0xfc21;
    golden_res[12] = 0xfe32;
    golden_res[13] = 0x30f;
    golden_res[14] = 0xfde4;
    golden_res[15] = 0xf993;
    golden_res[16] = 0xfaec;
    golden_res[17] = 0xfc0f;
    golden_res[18] = 0x5cb;
    golden_res[19] = 0xfa2e;
    golden_res[20] = 0xfd3d;
    golden_res[21] = 0x629;
    golden_res[22] = 0xff56;
    golden_res[23] = 0xfe0f;
    golden_res[24] = 0x11a;
    golden_res[25] = 0x3dd;
    golden_res[26] = 0x54;
    golden_res[27] = 0xf995;
    golden_res[28] = 0xffb5;
    golden_res[29] = 0xffc9;
    golden_res[30] = 0xfd5e;
    golden_res[31] = 0xffed;
    golden_res[32] = 0xfcf7;
    golden_res[33] = 0xfb49;
    golden_res[34] = 0x454;
    golden_res[35] = 0xfc85;
    golden_res[36] = 0x484;
    golden_res[37] = 0xfd37;
    golden_res[38] = 0x272;
    golden_res[39] = 0xfb86;
    golden_res[40] = 0x62e;
    golden_res[41] = 0xf9c7;
    golden_res[42] = 0x174;
    golden_res[43] = 0x470;
    golden_res[44] = 0x1c0;
    golden_res[45] = 0x241;
    golden_res[46] = 0x380;
    golden_res[47] = 0xfcf7;
    golden_res[48] = 0xfdb4;
    golden_res[49] = 0xfab8;
    golden_res[50] = 0xff78;
    golden_res[51] = 0xfce1;
    golden_res[52] = 0x37f;
    golden_res[53] = 0x35a;
    golden_res[54] = 0xfd7c;
    golden_res[55] = 0xff29;
    golden_res[56] = 0xfe67;
    golden_res[57] = 0x2d8;
    golden_res[58] = 0x584;
    golden_res[59] = 0x64e;
    golden_res[60] = 0x460;
    golden_res[61] = 0xfacb;
    golden_res[62] = 0xffac;
    golden_res[63] = 0xfc81;
    golden_res[64] = 0x37b;
    golden_res[65] = 0xfa08;
    golden_res[66] = 0x4a;
    golden_res[67] = 0x56f;
    golden_res[68] = 0xfdc5;
    golden_res[69] = 0xfcaa;
    golden_res[70] = 0x524;
    golden_res[71] = 0xfbeb;
    golden_res[72] = 0xfe1a;
    golden_res[73] = 0xfc21;
    golden_res[74] = 0x277;
    golden_res[75] = 0xf9b8;
    golden_res[76] = 0xc6;
    golden_res[77] = 0xfb31;
    golden_res[78] = 0x581;
    golden_res[79] = 0xfa30;
    golden_res[80] = 0xfeba;
    golden_res[81] = 0xfddc;
    golden_res[82] = 0xfe1d;
    golden_res[83] = 0xfa60;
    golden_res[84] = 0x1f8;
    golden_res[85] = 0x212;
    golden_res[86] = 0x516;
    golden_res[87] = 0xf973;
    golden_res[88] = 0x1a4;
    golden_res[89] = 0x1cc;
    golden_res[90] = 0xff9b;
    golden_res[91] = 0x49d;
    golden_res[92] = 0xed;
    golden_res[93] = 0x427;
    golden_res[94] = 0x65a;
    golden_res[95] = 0xfd1b;
    golden_res[96] = 0x1c3;
    golden_res[97] = 0x60a;
    golden_res[98] = 0x45e;
    golden_res[99] = 0x1f6;
    golden_res[100] = 0xfdf3;
    golden_res[101] = 0x1e9;
    golden_res[102] = 0xfd54;
    golden_res[103] = 0x108;
    golden_res[104] = 0xfd2f;
    golden_res[105] = 0x482;
    golden_res[106] = 0x46e;
    golden_res[107] = 0xfdc8;
    golden_res[108] = 0x5ed;
    golden_res[109] = 0xfb24;
    golden_res[110] = 0xfa;
    golden_res[111] = 0x1ff;
    golden_res[112] = 0xfcda;
    golden_res[113] = 0x4aa;
    golden_res[114] = 0xfced;
    golden_res[115] = 0x4ce;
    golden_res[116] = 0xff0e;
    golden_res[117] = 0xfaf4;
    golden_res[118] = 0x48e;
    golden_res[119] = 0x390;
    golden_res[120] = 0xfab1;
    golden_res[121] = 0x629;
    golden_res[122] = 0xfd70;
    golden_res[123] = 0xd0;
    golden_res[124] = 0xfa85;
    golden_res[125] = 0xfbf2;
    golden_res[126] = 0x633;
    golden_res[127] = 0x1df;
    golden_res[128] = 0xfd90;
    golden_res[129] = 0xff88;
    golden_res[130] = 0x0;
    golden_res[131] = 0xfb2f;
    golden_res[132] = 0x2a0;
    golden_res[133] = 0xfa18;
    golden_res[134] = 0xfaab;
    golden_res[135] = 0xfef9;
    golden_res[136] = 0x18e;
    golden_res[137] = 0xff3d;
    golden_res[138] = 0xfe51;
    golden_res[139] = 0xfbce;
    golden_res[140] = 0x5ff;
    golden_res[141] = 0x627;
    golden_res[142] = 0xfa79;
    golden_res[143] = 0xfc4e;
    golden_res[144] = 0x56c;
    golden_res[145] = 0xfbfe;
    golden_res[146] = 0xfce5;
    golden_res[147] = 0x2b4;
    golden_res[148] = 0xfff5;
    golden_res[149] = 0x43;
    golden_res[150] = 0xfd8a;
    golden_res[151] = 0xfc3a;
    golden_res[152] = 0xfdf7;
    golden_res[153] = 0x483;
    golden_res[154] = 0xfbca;
    golden_res[155] = 0x5c0;
    golden_res[156] = 0x3cd;
    golden_res[157] = 0xfe0e;
    golden_res[158] = 0xfcf2;
    golden_res[159] = 0xfcd8;
    golden_res[160] = 0xfd66;
    golden_res[161] = 0x72;
    golden_res[162] = 0xfaa2;
    golden_res[163] = 0x28c;
    golden_res[164] = 0x35b;
    golden_res[165] = 0x4b3;
    golden_res[166] = 0xfc1f;
    golden_res[167] = 0xfdbc;
    golden_res[168] = 0x5a6;
    golden_res[169] = 0xfd42;
    golden_res[170] = 0x12c;
    golden_res[171] = 0xfb6c;
    golden_res[172] = 0x5fd;
    golden_res[173] = 0xfb2d;
    golden_res[174] = 0x3ae;
    golden_res[175] = 0xfab4;
    golden_res[176] = 0xfee7;
    golden_res[177] = 0x51;
    golden_res[178] = 0xf9bf;
    golden_res[179] = 0x4ef;
    golden_res[180] = 0x33;
    golden_res[181] = 0xfc59;
    golden_res[182] = 0xfa62;
    golden_res[183] = 0x2e0;
    golden_res[184] = 0xfcf0;
    golden_res[185] = 0xf9c2;
    golden_res[186] = 0x68b;
    golden_res[187] = 0x284;
    golden_res[188] = 0xfb98;
    golden_res[189] = 0x5dd;
    golden_res[190] = 0x259;
    golden_res[191] = 0xfc10;
    golden_res[192] = 0x489;
    golden_res[193] = 0xff80;
    golden_res[194] = 0x174;
    golden_res[195] = 0xfc5b;
    golden_res[196] = 0x28a;
    golden_res[197] = 0xfb5e;
    golden_res[198] = 0x604;
    golden_res[199] = 0xfb3c;
    golden_res[200] = 0xfd34;
    golden_res[201] = 0xfc25;
    golden_res[202] = 0xffd1;
    golden_res[203] = 0x559;
    golden_res[204] = 0xfe64;
    golden_res[205] = 0xfe45;
    golden_res[206] = 0xa2;
    golden_res[207] = 0xfda9;
    golden_res[208] = 0x343;
    golden_res[209] = 0x532;
    golden_res[210] = 0x1aa;
    golden_res[211] = 0xf9e0;
    golden_res[212] = 0xfb12;
    golden_res[213] = 0x120;
    golden_res[214] = 0xfa94;
    golden_res[215] = 0x315;
    golden_res[216] = 0x1ce;
    golden_res[217] = 0x2dd;
    golden_res[218] = 0x422;
    golden_res[219] = 0xfa2f;
    golden_res[220] = 0xfe8c;
    golden_res[221] = 0x31a;
    golden_res[222] = 0xf9ff;
    golden_res[223] = 0xffcc;
    golden_res[224] = 0x640;
    golden_res[225] = 0x482;
    golden_res[226] = 0x5dc;
    golden_res[227] = 0xf9b5;
    golden_res[228] = 0x234;
    golden_res[229] = 0x3c8;
    golden_res[230] = 0x535;
    golden_res[231] = 0x28a;
    golden_res[232] = 0x53c;
    golden_res[233] = 0x542;
    golden_res[234] = 0xfde1;
    golden_res[235] = 0xfd58;
    golden_res[236] = 0xfabf;
    golden_res[237] = 0x29c;
    golden_res[238] = 0xff71;
    golden_res[239] = 0xf9ab;
    golden_res[240] = 0xfa9e;
    golden_res[241] = 0xfc6a;
    golden_res[242] = 0x5df;
    golden_res[243] = 0x4cb;
    golden_res[244] = 0xff99;
    golden_res[245] = 0xfab9;
    golden_res[246] = 0xfc97;
    golden_res[247] = 0xfb3d;
    golden_res[248] = 0x4f3;
    golden_res[249] = 0x4cc;
    golden_res[250] = 0x3ee;
    golden_res[251] = 0x274;
    golden_res[252] = 0xfe5c;
    golden_res[253] = 0xfca3;
    golden_res[254] = 0x4d8;
    golden_res[255] = 0xfe27;


    init_athos();
    CSR_CLEAR_BITS(CSR_REG_MCOUNTINHIBIT, 0x1);
    CSR_WRITE(CSR_REG_MCYCLE, 0);
    /*for (int i = 0; i < 256; i += 4) {
        swapElements(&r, i);
    }*/
	intt_driver(r.coeffs, dout);

	CSR_READ(CSR_REG_MCYCLE, &cycles);
    printf("with %d cycles\n", cycles); 

	for (int i = 0; i< 256; i++ ){
		if (dout[i] != golden_res[i]){
            printf("Expected D[%d]: %04X but obtained %04X \n", i, golden_res[i], dout[i]);
		}	
	}	


    CSR_CLEAR_BITS(CSR_REG_MCOUNTINHIBIT, 0x1);
    CSR_WRITE(CSR_REG_MCYCLE, 0);
    invntt(r.coeffs);
	CSR_READ(CSR_REG_MCYCLE, &cycles);
    printf("with %d cycles\n", cycles);    

    for (int i = 0; i< 256; i++ ){
		if (golden_res[i] != r.coeffs[i]){
			printf("ERROR NTT output did not match test vector. ");
        	printf("Expected D[%d]: %04X but obtained %04X \n", i, golden_res[i], r.coeffs[i]);
            error += 1;
		}	
	}
    if (error==0)
        printf("FINE :)\n");

	printf("INTT terminated!\n");


    return 0;
}

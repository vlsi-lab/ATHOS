// Copyright 2023 PoliTO
// Solderpad Hardware License, Version 2.1, see LICENSE.md for details.
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
//
// athos_ip_dp: athos_ip data-path. 
// Designed by Alessandra Dolmeta
// alessandra.dolmeta@polito.it
//

import athos_ip_pkg::*;

module athos_ip_dp
    import athos_ip_data_reg_pkg::*;
    import athos_ip_ctrl_reg_pkg::*;    
    #(
    parameter int unsigned N_STAGES = 32,
    parameter int unsigned RO_LENGTH = 13,
    parameter int unsigned N_BITS_KEY = 512
  )
(
    input logic                   clk,
    input logic                   rst_n,
    input logic                   start_i,
    input logic [5:0]             operation_i, 
    input logic [9:0]             ctrl,
    input logic                   flag_input_i,
    input logic                   slave_resp_valid_i,
    output logic                  slave_resp_gnt_ready_o, 
    input athos_ip_data_reg2hw_t  reg_file_to_ip_data_i,
    output athos_ip_data_hw2reg_t ip_to_reg_file_data_o,
    output logic          ready_o
);

    // Internal signal declarations
    logic      [1599:0] din_keccak_ip, keccak_dout;
    logic               keccak_intr_o;

    logic      [31:0]   din_ntt_intt_pwn_ip;
    logic      [31:0]   ntt_intt_dout;
    logic               ntt_intt_ready;
    logic               din_en, din_en_delayed, din_en_delayed2;
    logic               ntt_intt_dout_ready;


    logic key_ready_s;
    logic trng_intr_o;
    logic [N_BITS_KEY - 1 : 0] out_key;

    assign din_keccak_ip = {reg_file_to_ip_data_i.din[49].q, reg_file_to_ip_data_i.din[48].q, reg_file_to_ip_data_i.din[47].q, reg_file_to_ip_data_i.din[46].q, reg_file_to_ip_data_i.din[45].q, reg_file_to_ip_data_i.din[44].q, reg_file_to_ip_data_i.din[43].q, reg_file_to_ip_data_i.din[42].q, reg_file_to_ip_data_i.din[41].q, reg_file_to_ip_data_i.din[40].q, reg_file_to_ip_data_i.din[39].q, reg_file_to_ip_data_i.din[38].q, reg_file_to_ip_data_i.din[37].q, reg_file_to_ip_data_i.din[36].q, reg_file_to_ip_data_i.din[35].q, reg_file_to_ip_data_i.din[34].q, reg_file_to_ip_data_i.din[33].q, reg_file_to_ip_data_i.din[32].q, reg_file_to_ip_data_i.din[31].q, reg_file_to_ip_data_i.din[30].q, reg_file_to_ip_data_i.din[29].q, reg_file_to_ip_data_i.din[28].q, reg_file_to_ip_data_i.din[27].q, reg_file_to_ip_data_i.din[26].q, reg_file_to_ip_data_i.din[25].q, reg_file_to_ip_data_i.din[24].q, reg_file_to_ip_data_i.din[23].q, reg_file_to_ip_data_i.din[22].q, reg_file_to_ip_data_i.din[21].q, reg_file_to_ip_data_i.din[20].q, reg_file_to_ip_data_i.din[19].q, reg_file_to_ip_data_i.din[18].q, reg_file_to_ip_data_i.din[17].q, reg_file_to_ip_data_i.din[16].q, reg_file_to_ip_data_i.din[15].q, reg_file_to_ip_data_i.din[14].q, reg_file_to_ip_data_i.din[13].q, reg_file_to_ip_data_i.din[12].q, reg_file_to_ip_data_i.din[11].q, reg_file_to_ip_data_i.din[10].q, reg_file_to_ip_data_i.din[9].q, reg_file_to_ip_data_i.din[8].q, reg_file_to_ip_data_i.din[7].q, reg_file_to_ip_data_i.din[6].q, reg_file_to_ip_data_i.din[5].q, reg_file_to_ip_data_i.din[4].q, reg_file_to_ip_data_i.din[3].q, reg_file_to_ip_data_i.din[2].q, reg_file_to_ip_data_i.din[1].q, reg_file_to_ip_data_i.din[0].q};
    assign din_ntt_intt_pwn_ip = reg_file_to_ip_data_i.din[0].q;
    //FF-for din_enable: it need to be delayed of one clock cycle for the NTT-BRAM
    assign din_en = reg_file_to_ip_data_i.din[0].qe;//| flag_input_i;

    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            din_en_delayed = 0; // Reset the flip-flop to 0
        end else begin
            din_en_delayed = din_en; // Update the flip-flop with the input data on the rising edge of the clock
        end
    end


    //KECCAK INSTANTIATION
    keccak i_keccak (
        .clk(clk),
        .rst_n(rst_n),
        .start(start_i),
        .din(din_keccak_ip),
        .dout(keccak_dout),
        .status(keccak_ready),
        .keccak_intr(keccak_intr_o)
    );

    //NTT-INTT-PWM INSTANTIATION
    ntt_intt_top i_ntt_intt_top (
        .clk(clk),
        .rst(!rst_n),
        .load_a_f(ctrl[1]),
        .load_a_i(ctrl[2]),
        .read_a(ctrl[5]),
        .start_fntt(ctrl[0]),
        .start_intt(ctrl[8]),
        .din(din_ntt_intt_pwn_ip),
        .din_en(din_en),
        .dout(ntt_intt_dout),
        .gnt_valid(ntt_intt_dout_ready),
        .read_en(slave_resp_valid_i),
        .done(ntt_intt_ready)	
   );
	

   //TRNG INSTANTIATION
   trng #(.N_STAGES(N_STAGES), .RO_LENGTH(RO_LENGTH), .N_BITS_KEY(N_BITS_KEY)) i_trng (
    .clk(clk),
    .rst_n(rst_n),
    .enable(ctrl[3]),
    // when simulating check if ack_key_read and 
    // ip_to_reg_file_data.trng_dout.re have the same behaviour
    .ack_read(ctrl[4]),
    .key_ready(key_ready_s),
    .out_key(out_key),
    .trng_intr(trng_intr_o)
); 

   always_comb begin
    case (operation_i)
        athos_ip_pkg::KECCAK : begin
            ip_to_reg_file_data_o.dout[49].d =keccak_dout[1599:1568]; 
            ip_to_reg_file_data_o.dout[48].d =keccak_dout[1567:1536]; 
            ip_to_reg_file_data_o.dout[47].d =keccak_dout[1535:1504]; 
            ip_to_reg_file_data_o.dout[46].d =keccak_dout[1503:1472]; 
            ip_to_reg_file_data_o.dout[45].d =keccak_dout[1471:1440]; 
            ip_to_reg_file_data_o.dout[44].d =keccak_dout[1439:1408]; 
            ip_to_reg_file_data_o.dout[43].d =keccak_dout[1407:1376]; 
            ip_to_reg_file_data_o.dout[42].d =keccak_dout[1375:1344]; 
            ip_to_reg_file_data_o.dout[41].d =keccak_dout[1343:1312]; 
            ip_to_reg_file_data_o.dout[40].d =keccak_dout[1311:1280]; 
            ip_to_reg_file_data_o.dout[39].d =keccak_dout[1279:1248]; 
            ip_to_reg_file_data_o.dout[38].d =keccak_dout[1247:1216]; 
            ip_to_reg_file_data_o.dout[37].d =keccak_dout[1215:1184]; 
            ip_to_reg_file_data_o.dout[36].d =keccak_dout[1183:1152]; 
            ip_to_reg_file_data_o.dout[35].d =keccak_dout[1151:1120]; 
            ip_to_reg_file_data_o.dout[34].d =keccak_dout[1119:1088]; 
            ip_to_reg_file_data_o.dout[33].d =keccak_dout[1087:1056]; 
            ip_to_reg_file_data_o.dout[32].d =keccak_dout[1055:1024]; 
            ip_to_reg_file_data_o.dout[31].d =keccak_dout[1023:992]; 
            ip_to_reg_file_data_o.dout[30].d =keccak_dout[991:960]; 
            ip_to_reg_file_data_o.dout[29].d =keccak_dout[959:928]; 
            ip_to_reg_file_data_o.dout[28].d =keccak_dout[927:896]; 
            ip_to_reg_file_data_o.dout[27].d =keccak_dout[895:864]; 
            ip_to_reg_file_data_o.dout[26].d =keccak_dout[863:832]; 
            ip_to_reg_file_data_o.dout[25].d =keccak_dout[831:800]; 
            ip_to_reg_file_data_o.dout[24].d =keccak_dout[799:768]; 
            ip_to_reg_file_data_o.dout[23].d =keccak_dout[767:736]; 
            ip_to_reg_file_data_o.dout[22].d =keccak_dout[735:704]; 
            ip_to_reg_file_data_o.dout[21].d =keccak_dout[703:672]; 
            ip_to_reg_file_data_o.dout[20].d =keccak_dout[671:640]; 
            ip_to_reg_file_data_o.dout[19].d =keccak_dout[639:608]; 
            ip_to_reg_file_data_o.dout[18].d =keccak_dout[607:576]; 
            ip_to_reg_file_data_o.dout[17].d =keccak_dout[575:544]; 
            ip_to_reg_file_data_o.dout[16].d =keccak_dout[543:512]; 
            ip_to_reg_file_data_o.dout[15].d =keccak_dout[511:480]; 
            ip_to_reg_file_data_o.dout[14].d =keccak_dout[479:448]; 
            ip_to_reg_file_data_o.dout[13].d =keccak_dout[447:416]; 
            ip_to_reg_file_data_o.dout[12].d =keccak_dout[415:384]; 
            ip_to_reg_file_data_o.dout[11].d =keccak_dout[383:352]; 
            ip_to_reg_file_data_o.dout[10].d =keccak_dout[351:320]; 
            ip_to_reg_file_data_o.dout[9].d = keccak_dout[319:288];
            ip_to_reg_file_data_o.dout[8].d = keccak_dout[287:256];
            ip_to_reg_file_data_o.dout[7].d = keccak_dout[255:224];
            ip_to_reg_file_data_o.dout[6].d = keccak_dout[223:192];
            ip_to_reg_file_data_o.dout[5].d = keccak_dout[191:160];
            ip_to_reg_file_data_o.dout[4].d = keccak_dout[159:128];
            ip_to_reg_file_data_o.dout[3].d = keccak_dout[127:96];
            ip_to_reg_file_data_o.dout[2].d = keccak_dout[95:64];
            ip_to_reg_file_data_o.dout[1].d = keccak_dout[63:32];
            ip_to_reg_file_data_o.dout[0].d = keccak_dout[31:0];

            ready_o = keccak_ready;
            slave_resp_gnt_ready_o = 1'b1;
        end
        athos_ip_pkg::NTT : begin
            ip_to_reg_file_data_o.dout[49].d = '0;
            ip_to_reg_file_data_o.dout[48].d = '0; 
            ip_to_reg_file_data_o.dout[47].d = '0; 
            ip_to_reg_file_data_o.dout[46].d = '0; 
            ip_to_reg_file_data_o.dout[45].d = '0; 
            ip_to_reg_file_data_o.dout[44].d = '0; 
            ip_to_reg_file_data_o.dout[43].d = '0; 
            ip_to_reg_file_data_o.dout[42].d = '0; 
            ip_to_reg_file_data_o.dout[41].d = '0; 
            ip_to_reg_file_data_o.dout[40].d = '0; 
            ip_to_reg_file_data_o.dout[39].d = '0; 
            ip_to_reg_file_data_o.dout[38].d = '0; 
            ip_to_reg_file_data_o.dout[37].d = '0; 
            ip_to_reg_file_data_o.dout[36].d = '0; 
            ip_to_reg_file_data_o.dout[35].d = '0; 
            ip_to_reg_file_data_o.dout[34].d = '0; 
            ip_to_reg_file_data_o.dout[33].d = '0; 
            ip_to_reg_file_data_o.dout[32].d = '0; 
            ip_to_reg_file_data_o.dout[31].d = '0;
            ip_to_reg_file_data_o.dout[30].d = '0;
            ip_to_reg_file_data_o.dout[29].d = '0;
            ip_to_reg_file_data_o.dout[28].d = '0;
            ip_to_reg_file_data_o.dout[27].d = '0;
            ip_to_reg_file_data_o.dout[26].d = '0;
            ip_to_reg_file_data_o.dout[25].d = '0;
            ip_to_reg_file_data_o.dout[24].d = '0;
            ip_to_reg_file_data_o.dout[23].d = '0;
            ip_to_reg_file_data_o.dout[22].d = '0;
            ip_to_reg_file_data_o.dout[21].d = '0;
            ip_to_reg_file_data_o.dout[20].d = '0;
            ip_to_reg_file_data_o.dout[19].d = '0;
            ip_to_reg_file_data_o.dout[18].d = '0;
            ip_to_reg_file_data_o.dout[17].d = '0;
            ip_to_reg_file_data_o.dout[16].d = '0;
            ip_to_reg_file_data_o.dout[15].d = '0;
            ip_to_reg_file_data_o.dout[14].d = '0;
            ip_to_reg_file_data_o.dout[13].d = '0;
            ip_to_reg_file_data_o.dout[12].d = '0;
            ip_to_reg_file_data_o.dout[11].d = '0;
            ip_to_reg_file_data_o.dout[10].d = '0;
            ip_to_reg_file_data_o.dout[9].d = '0;
            ip_to_reg_file_data_o.dout[8].d = '0;
            ip_to_reg_file_data_o.dout[7].d = '0;
            ip_to_reg_file_data_o.dout[6].d = '0;
            ip_to_reg_file_data_o.dout[5].d = '0;
            ip_to_reg_file_data_o.dout[4].d = '0;
            ip_to_reg_file_data_o.dout[3].d =  '0;           
            ip_to_reg_file_data_o.dout[2].d = '0;
            ip_to_reg_file_data_o.dout[1].d = '0;
            ip_to_reg_file_data_o.dout[0].d = ntt_intt_dout;

            ready_o = ntt_intt_ready;
            slave_resp_gnt_ready_o <= ntt_intt_dout_ready;

        end

        athos_ip_pkg::INTT : begin
            ip_to_reg_file_data_o.dout[49].d = '0;
            ip_to_reg_file_data_o.dout[48].d = '0; 
            ip_to_reg_file_data_o.dout[47].d = '0; 
            ip_to_reg_file_data_o.dout[46].d = '0; 
            ip_to_reg_file_data_o.dout[45].d = '0; 
            ip_to_reg_file_data_o.dout[44].d = '0; 
            ip_to_reg_file_data_o.dout[43].d = '0; 
            ip_to_reg_file_data_o.dout[42].d = '0; 
            ip_to_reg_file_data_o.dout[41].d = '0; 
            ip_to_reg_file_data_o.dout[40].d = '0; 
            ip_to_reg_file_data_o.dout[39].d = '0; 
            ip_to_reg_file_data_o.dout[38].d = '0; 
            ip_to_reg_file_data_o.dout[37].d = '0; 
            ip_to_reg_file_data_o.dout[36].d = '0; 
            ip_to_reg_file_data_o.dout[35].d = '0; 
            ip_to_reg_file_data_o.dout[34].d = '0; 
            ip_to_reg_file_data_o.dout[33].d = '0; 
            ip_to_reg_file_data_o.dout[32].d = '0; 
            ip_to_reg_file_data_o.dout[31].d = '0;
            ip_to_reg_file_data_o.dout[30].d = '0;
            ip_to_reg_file_data_o.dout[29].d = '0;
            ip_to_reg_file_data_o.dout[28].d = '0;
            ip_to_reg_file_data_o.dout[27].d = '0;
            ip_to_reg_file_data_o.dout[26].d = '0;
            ip_to_reg_file_data_o.dout[25].d = '0;
            ip_to_reg_file_data_o.dout[24].d = '0;
            ip_to_reg_file_data_o.dout[23].d = '0;
            ip_to_reg_file_data_o.dout[22].d = '0;
            ip_to_reg_file_data_o.dout[21].d = '0;
            ip_to_reg_file_data_o.dout[20].d = '0;
            ip_to_reg_file_data_o.dout[19].d = '0;
            ip_to_reg_file_data_o.dout[18].d = '0;
            ip_to_reg_file_data_o.dout[17].d = '0;
            ip_to_reg_file_data_o.dout[16].d = '0;
            ip_to_reg_file_data_o.dout[15].d = '0;
            ip_to_reg_file_data_o.dout[14].d = '0;
            ip_to_reg_file_data_o.dout[13].d = '0;
            ip_to_reg_file_data_o.dout[12].d = '0;
            ip_to_reg_file_data_o.dout[11].d = '0;
            ip_to_reg_file_data_o.dout[10].d = '0;
            ip_to_reg_file_data_o.dout[9].d = '0;
            ip_to_reg_file_data_o.dout[8].d = '0;
            ip_to_reg_file_data_o.dout[7].d = '0;
            ip_to_reg_file_data_o.dout[6].d = '0;
            ip_to_reg_file_data_o.dout[5].d = '0;
            ip_to_reg_file_data_o.dout[4].d = '0;
            ip_to_reg_file_data_o.dout[3].d =  '0;           
            ip_to_reg_file_data_o.dout[2].d = '0;
            ip_to_reg_file_data_o.dout[1].d = '0;
            ip_to_reg_file_data_o.dout[0].d = ntt_intt_dout;
            
            ready_o = ntt_intt_ready;
            slave_resp_gnt_ready_o <= ntt_intt_dout_ready;
        end

        athos_ip_pkg::TRNG : begin
            ip_to_reg_file_data_o.dout[49].d = '0;
            ip_to_reg_file_data_o.dout[48].d = '0; 
            ip_to_reg_file_data_o.dout[47].d = '0; 
            ip_to_reg_file_data_o.dout[46].d = '0; 
            ip_to_reg_file_data_o.dout[45].d = '0; 
            ip_to_reg_file_data_o.dout[44].d = '0; 
            ip_to_reg_file_data_o.dout[43].d = '0; 
            ip_to_reg_file_data_o.dout[42].d = '0; 
            ip_to_reg_file_data_o.dout[41].d = '0; 
            ip_to_reg_file_data_o.dout[40].d = '0; 
            ip_to_reg_file_data_o.dout[39].d = '0; 
            ip_to_reg_file_data_o.dout[38].d = '0; 
            ip_to_reg_file_data_o.dout[37].d = '0; 
            ip_to_reg_file_data_o.dout[36].d = '0; 
            ip_to_reg_file_data_o.dout[35].d = '0; 
            ip_to_reg_file_data_o.dout[34].d = '0; 
            ip_to_reg_file_data_o.dout[33].d = '0; 
            ip_to_reg_file_data_o.dout[32].d = '0; 
            ip_to_reg_file_data_o.dout[31].d = '0;
            ip_to_reg_file_data_o.dout[30].d = '0;
            ip_to_reg_file_data_o.dout[29].d = '0;
            ip_to_reg_file_data_o.dout[28].d = '0;
            ip_to_reg_file_data_o.dout[27].d = '0;
            ip_to_reg_file_data_o.dout[26].d = '0;
            ip_to_reg_file_data_o.dout[25].d = '0;
            ip_to_reg_file_data_o.dout[24].d = '0;
            ip_to_reg_file_data_o.dout[23].d = '0;
            ip_to_reg_file_data_o.dout[22].d = '0;
            ip_to_reg_file_data_o.dout[21].d = '0;
            ip_to_reg_file_data_o.dout[20].d = '0;
            ip_to_reg_file_data_o.dout[19].d = '0;
            ip_to_reg_file_data_o.dout[18].d = '0;
            ip_to_reg_file_data_o.dout[17].d = '0;
            ip_to_reg_file_data_o.dout[16].d = '0;
            ip_to_reg_file_data_o.dout[15].d = out_key[511:480]; 
            ip_to_reg_file_data_o.dout[14].d = out_key[479:448]; 
            ip_to_reg_file_data_o.dout[13].d = out_key[447:416]; 
            ip_to_reg_file_data_o.dout[12].d = out_key[415:384]; 
            ip_to_reg_file_data_o.dout[11].d = out_key[383:352]; 
            ip_to_reg_file_data_o.dout[10].d = out_key[351:320]; 
            ip_to_reg_file_data_o.dout[9].d = out_key[319:288];
            ip_to_reg_file_data_o.dout[8].d = out_key[287:256];
            ip_to_reg_file_data_o.dout[7].d = out_key[255:224];
            ip_to_reg_file_data_o.dout[6].d = out_key[223:192];
            ip_to_reg_file_data_o.dout[5].d = out_key[191:160];
            ip_to_reg_file_data_o.dout[4].d = out_key[159:128];
            ip_to_reg_file_data_o.dout[3].d = out_key[127:96];
            ip_to_reg_file_data_o.dout[2].d = out_key[95:64];
            ip_to_reg_file_data_o.dout[1].d = out_key[63:32];
            ip_to_reg_file_data_o.dout[0].d = out_key[31:0];
            
            ready_o = key_ready_s;
            slave_resp_gnt_ready_o <= 1'b1;
        end

        default: begin
            slave_resp_gnt_ready_o <= '0;
        end
    endcase
    end




endmodule : athos_ip_dp
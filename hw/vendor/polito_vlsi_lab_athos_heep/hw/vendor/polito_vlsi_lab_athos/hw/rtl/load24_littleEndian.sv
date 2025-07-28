module load24_littleEndian (
    input athos_pkg::in_t load24_littleEndian_rd_i,
    output athos_pkg::out_t load24_littleEndian_o
);

    logic [31:0] temp, d1, d2, d3;
    logic [31:0] res;

    assign temp = {8'b0, load24_littleEndian_rd_i.rs1_0[23:16], load24_littleEndian_rd_i.rs1_0[15:8] , load24_littleEndian_rd_i.rs1_0[7:0]};

    assign d1 = temp & 32'b0000000001001001001001001001001; //0x00249249
    assign d2 = {1'b0, temp[31:1]} & 32'b0000000001001001001001001001001; //0x00249249
    assign d3 = {2'b00, temp[31:2]} & 32'b0000000001001001001001001001001; //0x00249249

    assign res = d1 + d2 + d3;
    
    assign load24_littleEndian_o.rd1 = '0;
    assign load24_littleEndian_o.rd2 = res;
    
    /*assign load24_littleEndian_o.rd2[31:24] = '0;
    assign load24_littleEndian_o.rd2[23:16] = load24_littleEndian_rd_i.rs1_0[23:16];
    assign load24_littleEndian_o.rd2[15:8]  = load24_littleEndian_rd_i.rs1_0[15:8];
    assign load24_littleEndian_o.rd2[7:0]   = load24_littleEndian_rd_i.rs1_0[7:0];*/
    
endmodule

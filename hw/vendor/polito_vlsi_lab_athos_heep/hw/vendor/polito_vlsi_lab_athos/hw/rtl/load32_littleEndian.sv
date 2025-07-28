module load32_littleEndian (
    input athos_pkg::in_t load32_littleEndian_rd_i,
    output athos_pkg::out_t load32_littleEndian_o
);

    logic [31:0] temp, d1, d2;
    logic [31:0] res;

    assign temp = {load32_littleEndian_rd_i.rs1_0[31:24], load32_littleEndian_rd_i.rs1_0[23:16], load32_littleEndian_rd_i.rs1_0[15:8] , load32_littleEndian_rd_i.rs1_0[7:0]};

    assign d1 = temp & 32'b01010101010101010101010101010101; //0x55555555
    assign d2 = {1'b0, temp[31:1]} & 32'b01010101010101010101010101010101; //0x55555555

    assign res = d1 + d2;

    assign load32_littleEndian_o.rd1 = '0;
    assign load32_littleEndian_o.rd2 = res;

endmodule

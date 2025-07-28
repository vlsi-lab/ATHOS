import athos_pkg::*;

module barr (
    input clk_i,
    input  athos_pkg::in_t  barrett_i,
    output athos_pkg::out_t barrett_o
);


    logic signed [15:0] a;
    logic signed [15:0] Q_K = 3329;
    logic signed [15:0] V = 20159;
    logic signed [27:0] extention;

    logic signed [63:0] temp1, temp2, temp3;
    logic signed [63:0] barrett_mul;
    logic signed [31:0] x;
    logic signed [31:0] res;

    assign a = barrett_i.rs1_0[15:0];
    assign temp1 = a * V;

    assign x = 32'b00000010000000000000000000000000;
    assign temp2 = (temp1 + x);
    assign extention = {28{temp2[31]}};
    assign temp3 = {extention, temp2[31:26]};
    assign barrett_mul = temp3 * Q_K;
    
    assign res = barrett_i.rs1_0 - barrett_mul;
    assign barrett_o.rd2[15:0]  = res;
    assign barrett_o.rd2[31:16] = '0;
    assign barrett_o.rd1 = '0;
   

endmodule
import athos_pkg::*;

module montg (
    input clk_i,
    input  athos_pkg::in_t  montg_in_i,
    input athos_pkg::funct7_t algorithm,
    output athos_pkg::out_t montg_out_o
);

    //Kyber
    logic signed [15:0] x1_16, extention;
    logic signed [31:0] x1_32, x2, mont_res;
    //Dilithium
    logic signed [31:0] x1_32_D, extention_D;
    logic signed [63:0] x1_64_D, x2_D, mont_res_D;

    CONSTANT myConstants = '{58728449, 8380417, -3327, 3329};

    //algorithm 1 is Dilithium, while 0 is Kyber
    always_comb begin
        case(algorithm.funct7_athos)
            athos_pkg::MONTG_K_MODE: begin
                x1_16 = (montg_in_i.rs1_0 * myConstants.QINV_K);
                extention = {16{x1_16[15]}};
                x1_32 = {extention, x1_16};
                x2 = x1_32 * myConstants.Q_K;
                mont_res =  montg_in_i.rs1_0 - x2;
                // This instruction need the write option 
                montg_out_o.rd2 = mont_res >> 16;
                montg_out_o.rd1 = '0;
            end
            athos_pkg::MONTG_D_MODE: begin
                x1_32_D = ({montg_in_i.rs2_0,montg_in_i.rs1_0}  * myConstants.QINV_D);
                extention_D = {32{x1_32_D[31]}};
                x1_64_D = {extention_D, x1_32_D};
                x2_D = x1_64_D * myConstants.Q_D;
                mont_res_D =  {montg_in_i.rs2_0,montg_in_i.rs1_0} - x2_D;
                montg_out_o.rd2 = mont_res_D >> 32;
                montg_out_o.rd1 = '0;
            end

            default: begin
                montg_out_o.rd1 = '0;
                montg_out_o.rd2 = '0;
            end
        endcase
    end



endmodule


module rej_uniform (
    input athos_pkg::in_t rej_uniform_i,
    input athos_pkg::funct7_t funct7_i, 
    output athos_pkg::out_t rej_uniform_o
);

    logic [15:0] u1, u2;
    logic [15:0] res;
    logic [15:0] temp_u1, temp_u2;

    assign u1= rej_uniform_i.rs1_0[15:0];
    assign u2 = rej_uniform_i.rs2_0[15:0];

    always_comb begin
        case(funct7_i.funct7_athos)
            athos_pkg::REJ_UNIFORM_0: begin
                //val0 = ((buf[pos + 0] >> 0) | ((uint16_t)buf[pos + 1] << 8)) & 0xFFF;
                temp_u2 = {u2[8:0], 8'b00000000};
                res = u1 | temp_u2 & 12'b111111111111;
            end
            athos_pkg::REJ_UNIFORM_1: begin
                //val1 = ((buf[pos + 1] >> 4) | ((uint16_t)buf[pos + 2] << 4)) & 0xFFF;
                temp_u1 = {{4{u1[15]}}, u1[15:4]};
                temp_u2 = {u2[11:0], 4'b0000};
                res = temp_u1 | temp_u2 & 12'b111111111111;
            end

            default: res = 'b0;  // Handle the default case if needed
        endcase
    end


    assign rej_uniform_o.rd1 = '0;
    assign rej_uniform_o.rd2 = res;



endmodule
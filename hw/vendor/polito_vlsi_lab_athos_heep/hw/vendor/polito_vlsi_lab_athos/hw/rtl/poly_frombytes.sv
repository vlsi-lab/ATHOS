module poly_frombytes (
    input athos_pkg::in_t poly_frombytes_i,
    input athos_pkg::funct7_t funct7_i, 
    output athos_pkg::out_t poly_frombytes_o
);

    logic [15:0] a1, a2;
    logic [15:0] temp1, temp2, temp3;
    logic [15:0] res;
    

    assign a1 = poly_frombytes_i.rs1_0[15:0];
    assign a2 = poly_frombytes_i.rs2_0[15:0];


    always_comb begin
        case(funct7_i.funct7_athos)
            athos_pkg::POLY_FROMBYTES_1: begin
                temp1 = {a2[7:0], 8'b0000000};
                temp2 = a1 | temp1;
                res = temp2 & 12'b111111111111;
            end
            athos_pkg::POLY_FROMBYTES_2: begin
                temp1 = {{4{a1[15]}}, a1[15:4]};
                temp2 = {a2[11:0], 4'b000};
                temp3 = temp1 | temp2;
                res = temp3 & 12'b111111111111;
            end
        
            default: res = 'b0;  // Handle the default case if needed
        endcase
    end

    assign poly_frombytes_o.rd2 = res;
    assign poly_frombytes_o.rd1 = '0;
    



endmodule
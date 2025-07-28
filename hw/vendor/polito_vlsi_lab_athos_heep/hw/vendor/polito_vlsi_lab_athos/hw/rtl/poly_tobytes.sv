module poly_tobytes (
    input athos_pkg::in_t poly_tobytes_i,
    input athos_pkg::funct7_t funct7_i, 
    output athos_pkg::out_t poly_tobytes_o
);

    logic [15:0] a, a1;
    logic [15:0] t0, t1;
    logic [14:0] extention, extention1;
    logic [15:0] temp1, temp2;
    logic [15:0] res1, res2;
    

    assign a = poly_tobytes_i.rs1_0[15:0];
    assign a1 = poly_tobytes_i.rs2_0[15:0];

    assign extention = {15{a[15]}};
    assign extention1 = {15{a1[15]}};

    assign t0 = a + ({extention, a[15]} & 16'b0000110100000001);
    assign t1 = a1 + ({extention1, a1[15]} & 16'b0000110100000001);

    assign temp1 = {{8{t0[15]}}, t0[15:8]};
    assign temp2 = {t1[11:0], 4'b0000};
    assign res1 = temp1 | temp2;
    assign res2 = {{4{t1[15]}}, t1[15:4]};

    always_comb begin
        case(funct7_i.funct7_athos)
            athos_pkg::POLY_TOBYTES_1: begin
                poly_tobytes_o.rd2 = t0[7:0];
            end
            athos_pkg::POLY_TOBYTES_2: begin
                poly_tobytes_o.rd2 = res1[7:0];
            end
            athos_pkg::POLY_TOBYTES_3: begin
                poly_tobytes_o.rd2 = res2[7:0];
            end

            default: poly_tobytes_o.rd2 = 'b0;  // Handle the default case if needed
        endcase
    end

    assign poly_tobytes_o.rd1 = '0;
    



endmodule
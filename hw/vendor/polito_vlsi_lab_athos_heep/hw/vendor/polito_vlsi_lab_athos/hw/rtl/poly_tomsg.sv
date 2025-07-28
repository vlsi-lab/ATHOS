module poly_tomsg (
    input athos_pkg::in_t poly_tomsg_i,
    input athos_pkg::funct7_t funct7_i, 
    output athos_pkg::out_t poly_tomsg_o
);

    logic [15:0] a, msg_old;

    logic [15:0] t;
    logic [14:0] extention;
    logic [15:0] temp1, temp2, temp3;
    logic [15:0] res1;
    

    assign a = poly_tomsg_i.rs1_0[15:0];
    assign msg_old = poly_tomsg_i.rs2_0[15:0];

    assign extention = {14{a[15]}};
    assign t = a + ({extention, a[15]} & 12'b110100000001);

    assign temp1 = {t[15:1], 1'b0};
    assign temp2 = temp1 + 11'b11010000001; //K_Q/2 = 1665
    assign temp3 = (temp2 / 12'b110100000001 ) & 1'b1;

    always_comb begin
        case(funct7_i.funct7_athos)
            athos_pkg::POLY_TOMSG_1: begin
                res1 = msg_old | (temp3 << 0);
            end
            athos_pkg::POLY_TOMSG_2: begin
                res1 = msg_old | (temp3 << 1);
            end
            athos_pkg::POLY_TOMSG_3: begin
                res1 = msg_old | (temp3 << 2);
            end
            athos_pkg::POLY_TOMSG_4: begin
                res1 = msg_old | (temp3 << 3);
            end
            athos_pkg::POLY_TOMSG_5: begin
                res1 = msg_old | (temp3 << 4);
            end
            athos_pkg::POLY_TOMSG_6: begin
                res1 = msg_old | (temp3 << 5);
            end
            athos_pkg::POLY_TOMSG_7: begin
                res1 = msg_old | (temp3 << 6);
            end
            athos_pkg::POLY_TOMSG_8: begin
                res1 = msg_old | (temp3 << 7);
            end
            default: res1 = 'b0;  // Handle the default case if needed
        endcase
    end

    assign poly_tomsg_o.rd1 = '0;
    assign poly_tomsg_o.rd2 = res1;


endmodule
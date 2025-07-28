module poly_frommsg (
    input athos_pkg::in_t poly_frommsg_i,
    output athos_pkg::out_t poly_frommsg_o
);

    logic [15:0] a;
    int j;
    logic [15:0] temp1;
    logic [15:0] res;
    

    assign a = poly_frommsg_i.rs1_0[15:0];
    assign j = poly_frommsg_i.rs2_0[15:0];


    assign temp1 = -((a >> j) & 1'b1);
    assign res = temp1 & 11'b11010000001; //(3329+1)/2

    assign poly_frommsg_o.rd2 = res;
    assign poly_frommsg_o.rd1 = '0;
    



endmodule
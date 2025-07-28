module GF_square (
    input  athos_pkg::in_t  GF_square_i,
    output athos_pkg::out_t GF_square_o
);

    logic [15:0] a;
    logic [15:0] b;
    logic [15:0] s, result;

    assign a = GF_square_i.rs1_0[15:0];

    always_comb begin
        b = a;
        s = b & 1;

        for (int i = 1; i < 8; i=i+1) begin
            b = b << 1;
            s = s ^ (b & (1 << (2 * i)));
        end

        result = s;
    end

    assign GF_square_o.rd2[15:0]  = result;
    assign GF_square_o.rd2[31:16] = '0;

    assign GF_square_o.rd1 = '0;


endmodule
module trailing_zero_bits_count(
    input  athos_pkg::in_t  trailing_zero_bits_count_i,
    output athos_pkg::out_t trailing_zero_bits_count_o
);

    logic [15:0] a;
    logic [15:0] tmp;
    logic [15:0] mask;

    assign a = trailing_zero_bits_count_i.rs1_0[15:0];

    always_comb begin
        tmp = 0;
        mask = 16'hFFFF;

        for (int i = 0; i < 14; i=i+1) begin
            tmp = tmp + ((1 - ((a >> i) & 1'b1)) & mask);
            mask = mask & - (1 - ((a >> i) & 1'b1));
        end
    end


    assign trailing_zero_bits_count_o.rd2[15:0]  = tmp;
    assign trailing_zero_bits_count_o.rd2[31:16] = '0;

    assign trailing_zero_bits_count_o.rd1 = '0;

endmodule

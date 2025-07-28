module poly_decompress (
    input athos_pkg::in_t poly_decompress_i,
    input athos_pkg::funct7_t funct7_i, 
    output athos_pkg::out_t poly_decompress_o
);

    logic [15:0] a;
    logic [15:0] a1, a2;
    logic [31:0] a1_mul, a2_mul, a1_add, a2_add;
    logic [15:0] res;

    assign a = poly_decompress_i.rs1_0[15:0];

    always_comb begin
        case(funct7_i.funct7_athos)
            athos_pkg::POLY_DECOMPRESS_1: begin
                a1 = a & 16'b0000000000001111; 
                a1_mul = a1 * 12'b110100000001;     //3329 = 110100000001
                a1_add = a1_mul + 4'b1000;
                res = {4'b0000, a1_add[15:4]}; 
               
            end
            athos_pkg::POLY_DECOMPRESS_2: begin
                a2 = {4'b0000, a[15:4]};
                a2_mul = a2 * 12'b110100000001;     //3329 = 110100000001
                a2_add = a2_mul + 4'b1000;
                res = {4'b0000, a2_mul[15:4]}; 
            end

            athos_pkg::POLY_DECOMPRESS_3: begin
                a1 = a & 5'b11111; 
                a1_mul = a1 * 12'b110100000001;     //3329 = 110100000001
                a1_add = a1_mul + 5'b10000;
                res = {5'b0000, a1_add[15:5]}; 
            end

            athos_pkg::POLY_VEC_DECOMPRESS: begin
                a1 = a & 12'b001111111111; //3ff
                a1_mul = a1 * 12'b110100000001;     //3329 = 110100000001
                a1_add = a1_mul + 10'b1000000000;   //512
                res = {6'b000000, a1_add[26:10]}; 
               
            end
            athos_pkg::POLY_VEC_DECOMPRESS2: begin
                a1 = a & 12'b011111111111; //7ff
                a1_mul = a1 * 12'b110100000001;     //3329 = 110100000001
                a1_add = a1_mul + 11'b10000000000;   //1024
                res = {{11{a1_add[15]}}, a1_add[15:11]}; 
            end

            default: res = 'b0;  // Handle the default case if needed
        endcase
    end


    assign poly_decompress_o.rd1 = '0;
    assign poly_decompress_o.rd2 = res;



endmodule
module poly_compress (
    input athos_pkg::in_t poly_compress_i,
    input athos_pkg::funct7_t funct7_i, 
    output athos_pkg::out_t poly_compress_o
);

    logic [15:0] u;
    logic [14:0] extention;
    logic [15:0] u_temp, u_add;
    logic [16:0] temp1;
    logic [31:0] temp2, temp3, t;
    logic [28:0] extetion2;
    logic [7:0] res;

    logic [31:0] temp1vec;
    logic [63:0] temp2vec, temp3vec, tvec;

    assign u = poly_compress_i.rs1_0[15:0];
    assign u2 = poly_compress_i.rs1_1[15:0];

    //3329 = 110100000001

    always_comb begin
        case(funct7_i.funct7_athos)
            athos_pkg::POLY_COMPRESS: begin
                extention = {15{u[15]}};
                u_temp = {extention, u[15]} & 16'b0000110100000001;
                u_add = u_temp + u;
                temp1 = {u_add[11:0], 4'b0000};
                //temp2 = temp1 / 16'b0000110100000001;
                //t = temp2 + 2'b10;
                temp2 = temp1 + 11'b11010000001; //1665
                temp3 = temp2 * 17'b10011101011111011; //80635
                t = {{28{temp3[31]}}, temp3[31:28]};
                res = t & 8'b00001111; 
               
            end
            athos_pkg::POLY_COMPRESS_2: begin
                extention = {15{u[15]}};
                u_temp = {extention, u[15]} & 16'b0000110100000001;
                u_add = u_temp + u;
                temp1 = {u_add[11:0], 5'b00000};
                temp2 = temp1 + 11'b11010000000; //1664
                temp3 = temp2 * 16'b1001110101111110; //40318
                t = {{27{temp3[31]}}, temp3[31:27]};
                res = t & 8'b00011111; 
            end

            athos_pkg::POLY_VEC_COMPRESS: begin
                extention = {15{u[15]}};
                u_temp = {extention, u[15]} & 16'b0000110100000001;
                u_add = u_temp + u;
                temp1vec = {6'b000000, u_add[15:0], 10'b0000000000};
                temp2vec = temp1vec + 11'b11010000001; //1665
                temp3vec = temp2vec * 21'b100111010111110110111; //1290167
                tvec = {{32{temp3vec[63]}}, temp3vec[63:32]};
                res = tvec & 12'b001111111111; 
            end

            athos_pkg::POLY_VEC_COMPRESS2: begin
                extention = {15{u[15]}};
                u_temp = {extention, u[15]} & 16'b0000110100000001;
                u_add = u_temp + u;
                temp1vec = {5'b00000, u_add[15:0], 11'b00000000000};
                temp2vec = temp1vec + 11'b11010000000; //1664
                temp3vec = temp2vec * 20'b10011101011111011100; //645084
                tvec = {{31{temp3vec[63]}}, temp3vec[63:32]}; //>>31
                res = tvec & 12'b001111111111; 
               
            end

            default: res = 'b0;  // Handle the default case if needed
        endcase
    end


    assign poly_compress_o.rd1 = '0;
    assign poly_compress_o.rd2 = res[7:0];



endmodule
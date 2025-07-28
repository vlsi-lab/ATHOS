import athos_pkg::*;

module athos (
    input logic clk_i,
    input logic rst_ni,

    input athos_pkg::mode_t mode_i,
    input athos_pkg::funct7_t funct7_i,
    input athos_pkg::immediate_t immediate_i,
    input athos_pkg::in_t in_i,
    input logic [1:0] insr_i,
    output athos_pkg::out_t out_o
);

  athos_pkg::out_t zero, load64_result, montg_result;
  athos_pkg::out_t poly_add_sub_result;
  athos_pkg::out_t trailing_zero_bits_count_result, GF_square_result;
  athos_pkg::out_t barrett_result, load24_littleEndian_result, load32_littleEndian_result;
  athos_pkg::out_t cbd_result, poly_compress_result, poly_decompress_result, poly_tobytes_result;
  athos_pkg::out_t poly_frombytes_result, poly_frommsg_result, poly_tomsg_result;
  athos_pkg::out_t rej_uniform_result;

  assign zero = '0;  


  load64 load64_i(
      .load64_in_i(in_i),
      .load64_out_o(load64_result)
  );

  montg montg_i(
    .clk_i(clk_i),
    .montg_in_i(in_i),  
    .algorithm(funct7_i), 
    .montg_out_o(montg_result)
  );

  barr barr_i(
    .clk_i(clk_i),
    .barrett_i(in_i), 
    .barrett_o(barrett_result)
  );

  load24_littleEndian load24_littleEndian_i(
    .load24_littleEndian_rd_i(in_i),
    .load24_littleEndian_o(load24_littleEndian_result)
  );

  load32_littleEndian load32_littleEndian_i(
    .load32_littleEndian_rd_i(in_i),
    .load32_littleEndian_o(load32_littleEndian_result)
  );

  cbd cbd_i (
    .cbd_i(in_i),
    .cycle_i(funct7_i), 
    .cbd_o(cbd_result)
  );

  poly_compress poly_compress_i(
    .poly_compress_i(in_i),
    .funct7_i(funct7_i), 
    .poly_compress_o(poly_compress_result)
  );

  poly_decompress poly_decompress_i(
    .poly_decompress_i(in_i),
    .funct7_i(funct7_i), 
    .poly_decompress_o(poly_decompress_result)
  );

  poly_tobytes poly_tobytes_i(
    .poly_tobytes_i(in_i),
    .funct7_i(funct7_i), 
    .poly_tobytes_o(poly_tobytes_result)
  );

  poly_frombytes poly_frombytes_i(
    .poly_frombytes_i(in_i),
    .funct7_i(funct7_i), 
    .poly_frombytes_o(poly_frombytes_result)
  );

  poly_frommsg poly_frommsg_i(
    .poly_frommsg_i(in_i),
    .poly_frommsg_o(poly_frommsg_result)
  );

  poly_tomsg poly_tomsg_i(
    .poly_tomsg_i(in_i),
    .funct7_i(funct7_i), 
    .poly_tomsg_o(poly_tomsg_result)
  );

  rej_uniform rej_uniform_i(
    .rej_uniform_i(in_i),
    .funct7_i(funct7_i), 
    .rej_uniform_o(rej_uniform_result)
);


  /*trailing_zero_bits_count trailing_zero_bits_count_i(
    .trailing_zero_bits_count_i(in_i),
    .trailing_zero_bits_count_o(trailing_zero_bits_count_result)
  );

  GF_square GF_square_i(
    .GF_square_i(in_i), 
    .GF_square_o(GF_square_result)
  );*/

  assign trailing_zero_bits_count_result = '0;
  assign GF_square_result = '0;

  enum_mux i_enum_mux (
      .data_in1(trailing_zero_bits_count_result),
      .data_in2(load64_result),
      .data_in3(montg_result),
      .data_in4(poly_add_sub_result),
      .data_in5(barrett_result),
      .data_in6(load24_littleEndian_result),
      .data_in7(load32_littleEndian_result),
      .data_in8(cbd_result),
      .data_in9(poly_compress_result),
      .data_in10(poly_decompress_result),
      .data_in11(poly_tobytes_result),
      .data_in12(poly_frombytes_result),
      .data_in13(poly_frommsg_result),
      .data_in14(poly_tomsg_result),
      .data_in15(rej_uniform_result),
      .mode_i(mode_i),
      .insr_i(insr_i),
      .funct7(funct7_i),
      .data_out(out_o)
  );
  


endmodule
    
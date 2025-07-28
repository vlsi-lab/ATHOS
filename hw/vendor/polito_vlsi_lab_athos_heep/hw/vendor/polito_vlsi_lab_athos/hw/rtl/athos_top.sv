// Copyright Polito.

////////////////////////////////////////////////////////////////////////////////
// Engineer:      Alessandra Dolmeta - alessandra.dolmeta@polito.it           //
//                                                                            //                                                                          //
// Design Name:    Top level module                                           //
// Project Name:   ATHOS                                                      //
// Language:       SystemVerilog                                              //
//                                                                            //
// Description:    Top level module of the ATHOS core.                       //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////



module athos_top (
  input clk_i,
  input rst_ni,

  cv32e40x_if_xif .coproc_compressed xif_compressed_if,
  cv32e40x_if_xif .coproc_issue      xif_issue_if,
  cv32e40x_if_xif .coproc_commit     xif_commit_if,
  cv32e40x_if_xif .coproc_mem        xif_mem_if,
  cv32e40x_if_xif .coproc_mem_result xif_mem_result_if,
  cv32e40x_if_xif .coproc_result     xif_result_if
);


athos_pkg::mode_t mode_xif_o, mode_athos_i;
athos_pkg::in_t in_xif_o, in_athos_i;
athos_pkg::out_t res_athos_o, res_register;
athos_pkg::funct7_t funct7_xif_o, funct7_athos_i;
athos_pkg::immediate_t immediate_xif_o, immediate_athos_i;
logic [1:0] insr_xif_o, insr_athos_i;


always_ff @(posedge clk_i, negedge rst_ni) begin : configuration_registers
  if (!rst_ni) begin
    mode_athos_i      = '0;
    funct7_athos_i    = '0;
    immediate_athos_i = '0;
    insr_athos_i      = '0;
    res_register.rd1  = '0;
    res_register.rd2  = '0;
  end else begin
    mode_athos_i       = mode_xif_o;
    funct7_athos_i     = funct7_xif_o;
    immediate_athos_i  = immediate_xif_o;
    insr_athos_i       = insr_xif_o;
    in_athos_i.rs1_0   = in_xif_o.rs1_0;
    in_athos_i.rs2_0   = in_xif_o.rs2_0;
    in_athos_i.rs1_1   = in_xif_o.rs1_1;
    in_athos_i.rs2_1   = in_xif_o.rs2_1;
  
    res_register.rd1   = res_athos_o.rd1;
    res_register.rd2   = res_athos_o.rd2;
  end
end


athos i_athos (
    .clk_i (clk_i),
    .rst_ni(rst_ni),

    .mode_i(mode_athos_i),
    .funct7_i(funct7_athos_i),
    .immediate_i(immediate_athos_i),
    .in_i(in_athos_i),
    .insr_i(insr_athos_i),

    .out_o (res_athos_o)
);

xif_controller i_xif_controller (
    .clk_i (clk_i),
    .rst_ni(rst_ni),
    .xif_compressed_if,
    .xif_issue_if,
    .xif_commit_if,
    .xif_mem_if,
    .xif_mem_result_if,
    .xif_result_if,

    .mode_o(mode_xif_o), 
    .in_o(in_xif_o),
    .funct7_o(funct7_xif_o),
    .immediate_o(immediate_xif_o),
    .insr_o(insr_xif_o)
);


assign xif_result_if.result.data = res_register;


endmodule

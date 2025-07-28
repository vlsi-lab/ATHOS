import athos_pkg::*;

module load64 (
    input  athos_pkg::in_t  load64_in_i,
    output athos_pkg::out_t load64_out_o
);

  athos_pkg::out_t results;
  logic [7:0] [7:0] x;
  
  assign x[0] = load64_in_i.rs1_0[7:0];
  assign x[1] = load64_in_i.rs1_0[15:8];
  assign x[2] = load64_in_i.rs1_0[23:16];
  assign x[3] = load64_in_i.rs1_0[31:24];
  
  assign x[4] = load64_in_i.rs2_0[7:0];
  assign x[5] = load64_in_i.rs2_0[15:8];
  assign x[6] = load64_in_i.rs2_0[23:16];
  assign x[7] = load64_in_i.rs2_0[31:24];

  always_comb begin : compute  
    //results.rd1 = {x[4], x[5], x[6], x[7]};
    //results.rd2 = {x[0], x[1], x[2], x[3]};
    results.rd1 = {x[7], x[6], x[5], x[4]};
    results.rd2 = {x[3], x[2], x[1], x[0]};
  end

  // This instruction need the dublewrite option 
  assign load64_out_o.rd1 = results.rd1;
  assign load64_out_o.rd2 = results.rd2;

endmodule


module SHIFT_REG #(
        parameter int unsigned NBITS
        ) 
   (
     input  logic                 in_bit,
     input  logic                 clk,
     input  logic                 dff_en,
     input  logic                 rst_ni,
     output logic[NBITS - 1 : 0]  sample_out	       
   );


    always_ff @(posedge clk) begin
      if(dff_en == 1 && rst_ni) begin
          sample_out <= {sample_out[NBITS - 2 : 0], in_bit};
      end 
    end

endmodule
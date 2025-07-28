module xif_controller (
  input clk_i,
  input rst_ni,

  cv32e40x_if_xif .coproc_compressed xif_compressed_if,
  cv32e40x_if_xif .coproc_issue      xif_issue_if,
  cv32e40x_if_xif .coproc_commit     xif_commit_if,
  cv32e40x_if_xif .coproc_mem        xif_mem_if,
  cv32e40x_if_xif .coproc_mem_result xif_mem_result_if,
  cv32e40x_if_xif .coproc_result     xif_result_if,

  //athos interface
  output athos_pkg::mode_t mode_o, 
  output athos_pkg::in_t in_o,
  output athos_pkg::funct7_t funct7_o,
  output athos_pkg::immediate_t immediate_o,
  output logic [1:0] insr_o
);


logic [4:0] rd_saved;
logic save_rd;


athos_pkg::instruction_u instruction; 

//*****COMPRESSED INTERFACE*********************************************
//not used
assign xif_compressed_if.compressed_ready = '0;
assign xif_compressed_if.compressed_resp = '0;


//*****ISSUE INTERFACE**************************************************
assign xif_issue_if.issue_resp.loadstore = '0;
assign xif_issue_if.issue_resp.ecswrite = '0;
assign xif_issue_if.issue_resp.exc = '0;

//*****MEMORY INTERFACE**************************************************
assign xif_mem_if.mem_valid = '0;
assign xif_mem_if.mem_req = '0;

assign instruction = xif_issue_if.issue_req.instr;


//Save the value of rd to perform write-back
always_ff @(posedge clk_i or negedge rst_ni) begin
  if (!rst_ni) begin
    rd_saved = '0;
  end else begin
    if (save_rd) rd_saved = instruction.as_athos_R.rd;
    else rd_saved = rd_saved;
  end
end


always_comb begin : issue_interface
  xif_issue_if.issue_ready = 1'b1;
  xif_issue_if.issue_resp.writeback = 1'b0;
  xif_issue_if.issue_resp.dualread = '0;
  xif_issue_if.issue_resp.dualwrite = '0;

  mode_o      = '0;
  in_o        = '0;
  save_rd     = '0;
  funct7_o    = '0;
  immediate_o = '0;
  insr_o        = '0;

  if (xif_issue_if.issue_valid == 1'b1) begin
    case (instruction.raw[6:0])
      athos_pkg::ATHOS_R: begin
        insr_o = 2'b01;
        case (instruction.as_athos_R.funct3)
          //athos_pkg::GF: begin
          //  case (instruction.as_athos_R.funct7)
          //    athos_pkg::GF_TRAIL_ZERO: begin
          //      xif_issue_if.issue_resp.accept = 1'b1;
          //      xif_issue_if.issue_resp.writeback = 1'b1;
          //      in_o.rs1_0 = xif_issue_if.issue_req.rs[0];
          //      in_o.rs2_0 =  xif_issue_if.issue_req.rs[1];
          //      mode_o.mode_athos = instruction.as_athos_R.funct3;
          //      funct7_o = instruction.as_athos_R.funct7;
          //    end
          //    athos_pkg::GF_SQUARE_MODE: begin
          //      xif_issue_if.issue_resp.accept = 1'b1;
          //      xif_issue_if.issue_resp.writeback = 1'b1;
          //      in_o.rs1_0 = xif_issue_if.issue_req.rs[0];
          //      in_o.rs2_0 =  xif_issue_if.issue_req.rs[1];
          //      mode_o.mode_athos = instruction.as_athos_R.funct3;
          //      funct7_o = instruction.as_athos_R.funct7;
          //    end
          //    default: xif_issue_if.issue_resp.accept = 1'b0;
          //  endcase

          //end

          athos_pkg::LOAD64: begin
            xif_issue_if.issue_resp.accept = 1'b1;
            xif_issue_if.issue_resp.writeback = 1'b1;
            in_o.rs1_0 = xif_issue_if.issue_req.rs[0];
            in_o.rs2_0 =  xif_issue_if.issue_req.rs[1];
            mode_o.mode_athos = instruction.as_athos_R.funct3;
  
            xif_issue_if.issue_resp.dualwrite = 1'b1;

          end

          athos_pkg::MONTG: begin
            xif_issue_if.issue_resp.accept = 1'b1;
            xif_issue_if.issue_resp.writeback = 1'b1;
            in_o.rs1_0 = xif_issue_if.issue_req.rs[0];
            in_o.rs2_0 =  xif_issue_if.issue_req.rs[1];
            mode_o.mode_athos = instruction.as_athos_R.funct3;
            funct7_o = instruction.as_athos_R.funct7;

          end

          athos_pkg::BARRETT: begin
            xif_issue_if.issue_resp.accept = 1'b1;
            xif_issue_if.issue_resp.writeback = 1'b1;
            in_o.rs1_0 = xif_issue_if.issue_req.rs[0];
            in_o.rs2_0 =  xif_issue_if.issue_req.rs[1];
            mode_o.mode_athos = instruction.as_athos_R.funct3;
            funct7_o = instruction.as_athos_R.funct7;

          end

          athos_pkg::CBD: begin
            xif_issue_if.issue_resp.accept = 1'b1;
            xif_issue_if.issue_resp.writeback = 1'b1;
            in_o.rs1_0 = xif_issue_if.issue_req.rs[0];
            in_o.rs2_0 =  xif_issue_if.issue_req.rs[1];
            mode_o.mode_athos = instruction.as_athos_R.funct3;
            funct7_o = instruction.as_athos_R.funct7;
          end

          athos_pkg::POLY: begin
              xif_issue_if.issue_resp.accept = 1'b1;
              xif_issue_if.issue_resp.writeback = 1'b1;
              in_o.rs1_0 = xif_issue_if.issue_req.rs[0];
              in_o.rs2_0 =  xif_issue_if.issue_req.rs[1];
              mode_o.mode_athos = instruction.as_athos_R.funct3;
              funct7_o = instruction.as_athos_R.funct7;
          end

          athos_pkg::KEM: begin
            xif_issue_if.issue_resp.accept = 1'b1;
            xif_issue_if.issue_resp.writeback = 1'b1;
            in_o.rs1_0 = xif_issue_if.issue_req.rs[0];
            in_o.rs2_0 =  xif_issue_if.issue_req.rs[1];
            mode_o.mode_athos = instruction.as_athos_R.funct3;
            funct7_o = instruction.as_athos_R.funct7;
        end

          default: xif_issue_if.issue_resp.accept = 1'b0; 

        endcase
      end

      athos_pkg::ATHOS_I: begin
        insr_o = 2'b10;
        
        case (instruction.as_athos_I.funct3)
          athos_pkg::LOAD24_LE: begin
              xif_issue_if.issue_resp.accept = 1'b1;
              xif_issue_if.issue_resp.writeback = 1'b1;
              in_o.rs1_0 = xif_issue_if.issue_req.rs[0];
              in_o.rs2_0 =  xif_issue_if.issue_req.rs[1];
              mode_o.mode_athos = instruction.as_athos_I.funct3;
              immediate_o = instruction.as_athos_I.immediate;
          end

          athos_pkg::LOAD32_LE: begin
            xif_issue_if.issue_resp.accept = 1'b1;
            xif_issue_if.issue_resp.writeback = 1'b1;
            in_o.rs1_0 = xif_issue_if.issue_req.rs[0];
            in_o.rs2_0 =  xif_issue_if.issue_req.rs[1];
            mode_o.mode_athos = instruction.as_athos_I.funct3;
            immediate_o = instruction.as_athos_I.immediate;

          end

          default: xif_issue_if.issue_resp.accept = 1'b0; 

        endcase
      end
      //xif_issue_if.issue_resp the offloaded instruction is not recognized, and ignored
      default: xif_issue_if.issue_resp.accept = 1'b0; 
    endcase
  end else begin
    //nothing
  end
end

//*****RESUT INTERFACE***********************************************
always_comb begin : result_interface
  xif_result_if.result.id = '0;
  xif_result_if.result.rd = '0;
  xif_result_if.result.we = '0;
  xif_result_if.result.ecsdata = '0;
  xif_result_if.result.ecswe = '0;
  xif_result_if.result.exc = '0;
  xif_result_if.result.exccode = '0;
  xif_result_if.result.err = '0;
  xif_result_if.result.dbg = '0;
  xif_result_if.result_valid = '0;
  if (xif_result_if.result_ready == 1'b1) begin
    xif_result_if.result_valid = '1;
    xif_result_if.result.rd = rd_saved;
    xif_result_if.result.we = '1;
  end
end


endmodule

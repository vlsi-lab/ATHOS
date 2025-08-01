// Copyright 2020 Silicon Labs, Inc.
//
// This file, and derivatives thereof are licensed under the
// Solderpad License, Version 2.0 (the "License").
//
// Use of this file means you agree to the terms and conditions
// of the license and are in full compliance with the License.
//
// You may obtain a copy of the License at:
//
//     https://solderpad.org/licenses/SHL-2.0/
//
// Unless required by applicable law or agreed to in writing, software
// and hardware implementations thereof distributed under the License
// is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS
// OF ANY KIND, EITHER EXPRESSED OR IMPLIED.
//
// See the License for the specific language governing permissions and
// limitations under the License.

////////////////////////////////////////////////////////////////////////////////
// Engineer:       Øystein Knauserud - oystein.knauserud@silabs.com           //
//                                                                            //
// Design Name:    Register file wrapper                                      //
// Project Name:   CV32E40X                                                   //
// Language:       SystemVerilog                                              //
//                                                                            //
// Description:    Wrapper for the register file                              //
////////////////////////////////////////////////////////////////////////////////

module cv32e40x_register_file_wrapper import cv32e40x_pkg::*;
#(
      parameter int unsigned REGFILE_NUM_READ_PORTS = 2,
      parameter int unsigned REGFILE_NUM_WRITE_PORTS = 2,
      parameter rv32_e       RV32                   = RV32I
)
(
        // Clock and Reset
        input  logic         clk,
        input  logic         rst_n,
    
        // Read ports
        input  logic         dualread_i,
        input  rf_addr_t     raddr_i [REGFILE_NUM_READ_PORTS],
        output rf_data_t     rdata_o [REGFILE_NUM_READ_PORTS],
    
        // Write ports
        input  logic        dualwrite_i,
        input rf_addr_t     waddr_i [REGFILE_NUM_WRITE_PORTS],
        input rf_data_t     wdata_i [REGFILE_NUM_WRITE_PORTS],
        input logic         we_i [REGFILE_NUM_WRITE_PORTS]
);
    
    rf_addr_t raddr [REGFILE_NUM_READ_PORTS];
    rf_addr_t waddr [REGFILE_NUM_WRITE_PORTS];

    generate
      if (REGFILE_NUM_READ_PORTS > 2) begin
        always_comb begin : dualread
          if (dualread_i) begin
            raddr[0] = raddr_i[0];
            raddr[1] = raddr_i[1];
            raddr[2] = raddr_i[0] ^ 1'b1;
            raddr[3] = raddr_i[1] ^ 1'b1;
          end
          else begin
            raddr[0] = raddr_i[0];
            raddr[1] = raddr_i[1];
            raddr[2] = '0;
            raddr[3] = '0;
          end
        end
      end else begin
        assign raddr[0] = raddr_i[0];
        assign raddr[1] = raddr_i[0];
      end
    endgenerate

    generate
      always_comb begin : dualwrite
        if (dualwrite_i) begin
          waddr[0] = waddr_i[0];
          waddr[1] = waddr_i[1];
        end
        else begin
          waddr[0] = waddr_i[0];
          waddr[1] = '0;
        end
      end
  endgenerate
    

    cv32e40x_register_file
    #(
      .REGFILE_NUM_READ_PORTS       ( REGFILE_NUM_READ_PORTS ),
      .REGFILE_NUM_WRITE_PORTS      ( REGFILE_NUM_WRITE_PORTS),
      .RV32                         ( RV32                   )
    )
    register_file_i
    (
      .clk                ( clk                ),
      .rst_n              ( rst_n              ),
    
      // Read ports
      .raddr_i            ( raddr              ),
      .rdata_o            ( rdata_o            ),
    
      // Write ports
      .waddr_i            ( waddr              ),
      .wdata_i            ( wdata_i            ),
      .we_i               ( we_i               )
                 
    ); 

    endmodule
    

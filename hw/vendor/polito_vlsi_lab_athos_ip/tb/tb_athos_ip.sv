// Copyright 2024 PoliTO
// Solderpad Hardware License, Version 2.1, see LICENSE.md for details.
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
//
// Testbench for athos_ip module
import athos_ip_pkg::*;
import athos_ip_data_reg_pkg::*;
import athos_ip_ctrl_reg_pkg::*;  

module tb_athos_ip;

    // Inputs
    logic clk;
    logic rst_n;
    logic [1599:0] din;
    logic [6:0] operation;
    logic [9:0] ctrl;
    logic [15:0] ctrl_reg;

    // Outputs
    logic [1599:0] dout;
    athos_ip_ctrl_reg_pkg::athos_ip_ctrl_hw2reg_t status;
    logic athos_ip_intr;

    // Instantiate athos_ip module
    athos_ip uut (
        .clk(clk),
        .rst_n(rst_n),
        .reg_file_to_ip_data_i(din),
        .reg_file_to_ip_ctrl_i(ctrl_reg),
        .ip_to_reg_file_data_o(dout),
        .ip_to_reg_file_ctrl_o(status),
        .athos_ip_intr(athos_ip_intr)
    );

    // Clock generation
    initial begin
      clk = 0;
      forever #5 clk = ~clk;
    end

    // Reset generation
    initial begin
      rst_n = 0;
      #10 rst_n = 1;
    end

    initial begin

      operation = 7'b000001; // KECCAK
      //operation = 7'b000010; // NTT
      ctrl = 10'b0000000001; // Set your control signal
      ctrl_reg = { ctrl,operation};

      case (operation)
        NULL: $display("NULL selected\n");

        KECCAK: begin
          $display("KECCAK selected\n");
          din[1599:1536] = 64'h0000000000000000;
          din[1535:1472] = 64'h0000000000000000;
          din[1471:1408] = 64'h0000000000000000;
          din[1407:1344] = 64'h0000000000000000;
          din[1343:1280] = 64'h0000000000000000;
          din[1279:1216] = 64'h0000000000000000;
          din[1215:1152] = 64'h0000000000000000;
          din[1151:1088] = 64'h0000000000000000;
          din[1087:1024] = 64'h0000000000000000;
          din[1023:960]  = 64'h8000000000000000;
          din[959:896]   = 64'h0000000000000000;
          din[895:832]   = 64'h0000000000000000;
          din[831:768]   = 64'h0000000000000000;
          din[767:704]   = 64'h0000000000000000;
          din[703:640]   = 64'h0000000000000000;
          din[639:576]   = 64'h0000000000000000;
          din[575:512]   = 64'h0000000000000000;
          din[511:448]   = 64'h0000000000000000;
          din[447:384]   = 64'h0000000000000000;
          din[383:320]   = 64'h0000000000000000;
          din[319:256]   = 64'h0000000000000000;
          din[255:192]   = 64'h0000000000000000;
          din[191:128]   = 64'h0000000000000000;
          din[127:64]    = 64'h00000010ABBACD29;
          din[63:0]      = 64'hEC4AFF517369C667;
          $display("din =");
          $display("%h - %h - %h - %h - %h", din[1599:1536], din[1535:1472], din[1471:1408], din[1407:1344], din[1343:1280]);
          $display("%h - %h - %h - %h - %h", din[1279:1216], din[1215:1152], din[1151:1088], din[1087:1024], din[1023:960]);
          $display("%h - %h - %h - %h - %h", din[959:896], din[895:832], din[831:768], din[767:704], din[703:640]);
          $display("%h - %h - %h - %h - %h", din[639:576], din[575:512], din[511:448], din[447:384], din[383:320]);  
          $display("%h - %h - %h - %h - %h", din[319:256], din[255:192], din[191:128], din[127:64] , din[63:0]);  
          
        end


        NTT: begin
          $display("NTT selected\n");
          
        
          
        end

        default: $display("Unknown mode\n");
      endcase
            

      // Wait until status[0] is equal to 1
      wait(status.status.s0.d == 1);
      #1
      $display("dout =");
          $display("%h - %h - %h - %h - %h", dout[1599:1536], dout[1535:1472], dout[1471:1408], dout[1407:1344], dout[1343:1280]);
          $display("%h - %h - %h - %h - %h", dout[1279:1216], dout[1215:1152], dout[1151:1088], dout[1087:1024], dout[1023:960]);
          $display("%h - %h - %h - %h - %h", dout[959:896], dout[895:832], dout[831:768], dout[767:704], dout[703:640]);
          $display("%h - %h - %h - %h - %h", dout[639:576], dout[575:512], dout[511:448], dout[447:384], dout[383:320]);  
          $display("%h - %h - %h - %h - %h", dout[319:256], dout[255:192], dout[191:128], dout[127:64] , dout[63:0]);     
      #5
      $stop;
    end


endmodule

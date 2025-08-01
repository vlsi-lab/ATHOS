// Copyright lowRISC contributors.
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0
//
// Register Top module auto-generated by `reggen`


`include "common_cells/assertions.svh"

module athos_ip_ctrl_reg_top #(
  parameter type reg_req_t = logic,
  parameter type reg_rsp_t = logic,
  parameter int AW = 3
) (
  input logic clk_i,
  input logic rst_ni,
  input  reg_req_t reg_req_i,
  output reg_rsp_t reg_rsp_o,
  // To HW
  output athos_ip_ctrl_reg_pkg::athos_ip_ctrl_reg2hw_t reg2hw, // Write
  input  athos_ip_ctrl_reg_pkg::athos_ip_ctrl_hw2reg_t hw2reg, // Read


  // Config
  input devmode_i // If 1, explicit error return for unmapped register access
);

  import athos_ip_ctrl_reg_pkg::* ;

  localparam int DW = 32;
  localparam int DBW = DW/8;                    // Byte Width

  // register signals
  logic           reg_we;
  logic           reg_re;
  logic [AW-1:0]  reg_addr;
  logic [DW-1:0]  reg_wdata;
  logic [DBW-1:0] reg_be;
  logic [DW-1:0]  reg_rdata;
  logic           reg_error;

  logic          addrmiss, wr_err;

  logic [DW-1:0] reg_rdata_next;

  // Below register interface can be changed
  reg_req_t  reg_intf_req;
  reg_rsp_t  reg_intf_rsp;


  assign reg_intf_req = reg_req_i;
  assign reg_rsp_o = reg_intf_rsp;


  assign reg_we = reg_intf_req.valid & reg_intf_req.write;
  assign reg_re = reg_intf_req.valid & ~reg_intf_req.write;
  assign reg_addr = reg_intf_req.addr;
  assign reg_wdata = reg_intf_req.wdata;
  assign reg_be = reg_intf_req.wstrb;
  assign reg_intf_rsp.rdata = reg_rdata;
  assign reg_intf_rsp.error = reg_error;
  assign reg_intf_rsp.ready = 1'b1;

  assign reg_rdata = reg_rdata_next ;
  assign reg_error = (devmode_i & addrmiss) | wr_err;


  // Define SW related signals
  // Format: <reg>_<field>_{wd|we|qs}
  //        or <reg>_{wd|we|qs} if field == 1 or 0
  logic ctrl_c0_wd;
  logic ctrl_c0_we;
  logic ctrl_c1_wd;
  logic ctrl_c1_we;
  logic ctrl_c2_wd;
  logic ctrl_c2_we;
  logic ctrl_c3_wd;
  logic ctrl_c3_we;
  logic ctrl_c4_wd;
  logic ctrl_c4_we;
  logic ctrl_c5_wd;
  logic ctrl_c5_we;
  logic ctrl_c6_wd;
  logic ctrl_c6_we;
  logic ctrl_c7_wd;
  logic ctrl_c7_we;
  logic ctrl_c8_wd;
  logic ctrl_c8_we;
  logic ctrl_c9_wd;
  logic ctrl_c9_we;
  logic [5:0] ctrl_operation_wd;
  logic ctrl_operation_we;
  logic status_s0_qs;
  logic status_s1_qs;
  logic status_s2_qs;
  logic status_s3_qs;
  logic status_s4_qs;
  logic status_s5_qs;
  logic status_s6_qs;
  logic status_s7_qs;
  logic status_s8_qs;
  logic status_s9_qs;

  // Register instances
  // R[ctrl]: V(False)

  //   F[c0]: 0:0
  prim_subreg #(
    .DW      (1),
    .SWACCESS("WO"),
    .RESVAL  (1'h0)
  ) u_ctrl_c0 (
    .clk_i   (clk_i    ),
    .rst_ni  (rst_ni  ),

    // from register interface
    .we     (ctrl_c0_we),
    .wd     (ctrl_c0_wd),

    // from internal hardware
    .de     (1'b0),
    .d      ('0  ),

    // to internal hardware
    .qe     (),
    .q      (reg2hw.ctrl.c0.q ),

    .qs     ()
  );


  //   F[c1]: 1:1
  prim_subreg #(
    .DW      (1),
    .SWACCESS("WO"),
    .RESVAL  (1'h0)
  ) u_ctrl_c1 (
    .clk_i   (clk_i    ),
    .rst_ni  (rst_ni  ),

    // from register interface
    .we     (ctrl_c1_we),
    .wd     (ctrl_c1_wd),

    // from internal hardware
    .de     (1'b0),
    .d      ('0  ),

    // to internal hardware
    .qe     (),
    .q      (reg2hw.ctrl.c1.q ),

    .qs     ()
  );


  //   F[c2]: 2:2
  prim_subreg #(
    .DW      (1),
    .SWACCESS("WO"),
    .RESVAL  (1'h0)
  ) u_ctrl_c2 (
    .clk_i   (clk_i    ),
    .rst_ni  (rst_ni  ),

    // from register interface
    .we     (ctrl_c2_we),
    .wd     (ctrl_c2_wd),

    // from internal hardware
    .de     (1'b0),
    .d      ('0  ),

    // to internal hardware
    .qe     (),
    .q      (reg2hw.ctrl.c2.q ),

    .qs     ()
  );


  //   F[c3]: 3:3
  prim_subreg #(
    .DW      (1),
    .SWACCESS("WO"),
    .RESVAL  (1'h0)
  ) u_ctrl_c3 (
    .clk_i   (clk_i    ),
    .rst_ni  (rst_ni  ),

    // from register interface
    .we     (ctrl_c3_we),
    .wd     (ctrl_c3_wd),

    // from internal hardware
    .de     (1'b0),
    .d      ('0  ),

    // to internal hardware
    .qe     (),
    .q      (reg2hw.ctrl.c3.q ),

    .qs     ()
  );


  //   F[c4]: 4:4
  prim_subreg #(
    .DW      (1),
    .SWACCESS("WO"),
    .RESVAL  (1'h0)
  ) u_ctrl_c4 (
    .clk_i   (clk_i    ),
    .rst_ni  (rst_ni  ),

    // from register interface
    .we     (ctrl_c4_we),
    .wd     (ctrl_c4_wd),

    // from internal hardware
    .de     (1'b0),
    .d      ('0  ),

    // to internal hardware
    .qe     (),
    .q      (reg2hw.ctrl.c4.q ),

    .qs     ()
  );


  //   F[c5]: 5:5
  prim_subreg #(
    .DW      (1),
    .SWACCESS("WO"),
    .RESVAL  (1'h0)
  ) u_ctrl_c5 (
    .clk_i   (clk_i    ),
    .rst_ni  (rst_ni  ),

    // from register interface
    .we     (ctrl_c5_we),
    .wd     (ctrl_c5_wd),

    // from internal hardware
    .de     (1'b0),
    .d      ('0  ),

    // to internal hardware
    .qe     (),
    .q      (reg2hw.ctrl.c5.q ),

    .qs     ()
  );


  //   F[c6]: 6:6
  prim_subreg #(
    .DW      (1),
    .SWACCESS("WO"),
    .RESVAL  (1'h0)
  ) u_ctrl_c6 (
    .clk_i   (clk_i    ),
    .rst_ni  (rst_ni  ),

    // from register interface
    .we     (ctrl_c6_we),
    .wd     (ctrl_c6_wd),

    // from internal hardware
    .de     (1'b0),
    .d      ('0  ),

    // to internal hardware
    .qe     (),
    .q      (reg2hw.ctrl.c6.q ),

    .qs     ()
  );


  //   F[c7]: 7:7
  prim_subreg #(
    .DW      (1),
    .SWACCESS("WO"),
    .RESVAL  (1'h0)
  ) u_ctrl_c7 (
    .clk_i   (clk_i    ),
    .rst_ni  (rst_ni  ),

    // from register interface
    .we     (ctrl_c7_we),
    .wd     (ctrl_c7_wd),

    // from internal hardware
    .de     (1'b0),
    .d      ('0  ),

    // to internal hardware
    .qe     (),
    .q      (reg2hw.ctrl.c7.q ),

    .qs     ()
  );


  //   F[c8]: 8:8
  prim_subreg #(
    .DW      (1),
    .SWACCESS("WO"),
    .RESVAL  (1'h0)
  ) u_ctrl_c8 (
    .clk_i   (clk_i    ),
    .rst_ni  (rst_ni  ),

    // from register interface
    .we     (ctrl_c8_we),
    .wd     (ctrl_c8_wd),

    // from internal hardware
    .de     (1'b0),
    .d      ('0  ),

    // to internal hardware
    .qe     (),
    .q      (reg2hw.ctrl.c8.q ),

    .qs     ()
  );


  //   F[c9]: 9:9
  prim_subreg #(
    .DW      (1),
    .SWACCESS("WO"),
    .RESVAL  (1'h0)
  ) u_ctrl_c9 (
    .clk_i   (clk_i    ),
    .rst_ni  (rst_ni  ),

    // from register interface
    .we     (ctrl_c9_we),
    .wd     (ctrl_c9_wd),

    // from internal hardware
    .de     (1'b0),
    .d      ('0  ),

    // to internal hardware
    .qe     (),
    .q      (reg2hw.ctrl.c9.q ),

    .qs     ()
  );


  //   F[operation]: 15:10
  prim_subreg #(
    .DW      (6),
    .SWACCESS("WO"),
    .RESVAL  (6'h0)
  ) u_ctrl_operation (
    .clk_i   (clk_i    ),
    .rst_ni  (rst_ni  ),

    // from register interface
    .we     (ctrl_operation_we),
    .wd     (ctrl_operation_wd),

    // from internal hardware
    .de     (1'b0),
    .d      ('0  ),

    // to internal hardware
    .qe     (),
    .q      (reg2hw.ctrl.operation.q ),

    .qs     ()
  );


  // R[status]: V(False)

  //   F[s0]: 0:0
  prim_subreg #(
    .DW      (1),
    .SWACCESS("RO"),
    .RESVAL  (1'h0)
  ) u_status_s0 (
    .clk_i   (clk_i    ),
    .rst_ni  (rst_ni  ),

    .we     (1'b0),
    .wd     ('0  ),

    // from internal hardware
    .de     (hw2reg.status.s0.de),
    .d      (hw2reg.status.s0.d ),

    // to internal hardware
    .qe     (),
    .q      (),

    // to register interface (read)
    .qs     (status_s0_qs)
  );


  //   F[s1]: 1:1
  prim_subreg #(
    .DW      (1),
    .SWACCESS("RO"),
    .RESVAL  (1'h0)
  ) u_status_s1 (
    .clk_i   (clk_i    ),
    .rst_ni  (rst_ni  ),

    .we     (1'b0),
    .wd     ('0  ),

    // from internal hardware
    .de     (hw2reg.status.s1.de),
    .d      (hw2reg.status.s1.d ),

    // to internal hardware
    .qe     (),
    .q      (),

    // to register interface (read)
    .qs     (status_s1_qs)
  );


  //   F[s2]: 2:2
  prim_subreg #(
    .DW      (1),
    .SWACCESS("RO"),
    .RESVAL  (1'h0)
  ) u_status_s2 (
    .clk_i   (clk_i    ),
    .rst_ni  (rst_ni  ),

    .we     (1'b0),
    .wd     ('0  ),

    // from internal hardware
    .de     (hw2reg.status.s2.de),
    .d      (hw2reg.status.s2.d ),

    // to internal hardware
    .qe     (),
    .q      (),

    // to register interface (read)
    .qs     (status_s2_qs)
  );


  //   F[s3]: 3:3
  prim_subreg #(
    .DW      (1),
    .SWACCESS("RO"),
    .RESVAL  (1'h0)
  ) u_status_s3 (
    .clk_i   (clk_i    ),
    .rst_ni  (rst_ni  ),

    .we     (1'b0),
    .wd     ('0  ),

    // from internal hardware
    .de     (hw2reg.status.s3.de),
    .d      (hw2reg.status.s3.d ),

    // to internal hardware
    .qe     (),
    .q      (),

    // to register interface (read)
    .qs     (status_s3_qs)
  );


  //   F[s4]: 4:4
  prim_subreg #(
    .DW      (1),
    .SWACCESS("RO"),
    .RESVAL  (1'h0)
  ) u_status_s4 (
    .clk_i   (clk_i    ),
    .rst_ni  (rst_ni  ),

    .we     (1'b0),
    .wd     ('0  ),

    // from internal hardware
    .de     (hw2reg.status.s4.de),
    .d      (hw2reg.status.s4.d ),

    // to internal hardware
    .qe     (),
    .q      (),

    // to register interface (read)
    .qs     (status_s4_qs)
  );


  //   F[s5]: 5:5
  prim_subreg #(
    .DW      (1),
    .SWACCESS("RO"),
    .RESVAL  (1'h0)
  ) u_status_s5 (
    .clk_i   (clk_i    ),
    .rst_ni  (rst_ni  ),

    .we     (1'b0),
    .wd     ('0  ),

    // from internal hardware
    .de     (hw2reg.status.s5.de),
    .d      (hw2reg.status.s5.d ),

    // to internal hardware
    .qe     (),
    .q      (),

    // to register interface (read)
    .qs     (status_s5_qs)
  );


  //   F[s6]: 6:6
  prim_subreg #(
    .DW      (1),
    .SWACCESS("RO"),
    .RESVAL  (1'h0)
  ) u_status_s6 (
    .clk_i   (clk_i    ),
    .rst_ni  (rst_ni  ),

    .we     (1'b0),
    .wd     ('0  ),

    // from internal hardware
    .de     (hw2reg.status.s6.de),
    .d      (hw2reg.status.s6.d ),

    // to internal hardware
    .qe     (),
    .q      (),

    // to register interface (read)
    .qs     (status_s6_qs)
  );


  //   F[s7]: 7:7
  prim_subreg #(
    .DW      (1),
    .SWACCESS("RO"),
    .RESVAL  (1'h0)
  ) u_status_s7 (
    .clk_i   (clk_i    ),
    .rst_ni  (rst_ni  ),

    .we     (1'b0),
    .wd     ('0  ),

    // from internal hardware
    .de     (hw2reg.status.s7.de),
    .d      (hw2reg.status.s7.d ),

    // to internal hardware
    .qe     (),
    .q      (),

    // to register interface (read)
    .qs     (status_s7_qs)
  );


  //   F[s8]: 8:8
  prim_subreg #(
    .DW      (1),
    .SWACCESS("RO"),
    .RESVAL  (1'h0)
  ) u_status_s8 (
    .clk_i   (clk_i    ),
    .rst_ni  (rst_ni  ),

    .we     (1'b0),
    .wd     ('0  ),

    // from internal hardware
    .de     (hw2reg.status.s8.de),
    .d      (hw2reg.status.s8.d ),

    // to internal hardware
    .qe     (),
    .q      (),

    // to register interface (read)
    .qs     (status_s8_qs)
  );


  //   F[s9]: 9:9
  prim_subreg #(
    .DW      (1),
    .SWACCESS("RO"),
    .RESVAL  (1'h0)
  ) u_status_s9 (
    .clk_i   (clk_i    ),
    .rst_ni  (rst_ni  ),

    .we     (1'b0),
    .wd     ('0  ),

    // from internal hardware
    .de     (hw2reg.status.s9.de),
    .d      (hw2reg.status.s9.d ),

    // to internal hardware
    .qe     (),
    .q      (),

    // to register interface (read)
    .qs     (status_s9_qs)
  );




  logic [1:0] addr_hit;
  always_comb begin
    addr_hit = '0;
    addr_hit[0] = (reg_addr == ATHOS_IP_CTRL_CTRL_OFFSET);
    addr_hit[1] = (reg_addr == ATHOS_IP_CTRL_STATUS_OFFSET);
  end

  assign addrmiss = (reg_re || reg_we) ? ~|addr_hit : 1'b0 ;

  // Check sub-word write is permitted
  always_comb begin
    wr_err = (reg_we &
              ((addr_hit[0] & (|(ATHOS_IP_CTRL_PERMIT[0] & ~reg_be))) |
               (addr_hit[1] & (|(ATHOS_IP_CTRL_PERMIT[1] & ~reg_be)))));
  end

  assign ctrl_c0_we = addr_hit[0] & reg_we & !reg_error;
  assign ctrl_c0_wd = reg_wdata[0];

  assign ctrl_c1_we = addr_hit[0] & reg_we & !reg_error;
  assign ctrl_c1_wd = reg_wdata[1];

  assign ctrl_c2_we = addr_hit[0] & reg_we & !reg_error;
  assign ctrl_c2_wd = reg_wdata[2];

  assign ctrl_c3_we = addr_hit[0] & reg_we & !reg_error;
  assign ctrl_c3_wd = reg_wdata[3];

  assign ctrl_c4_we = addr_hit[0] & reg_we & !reg_error;
  assign ctrl_c4_wd = reg_wdata[4];

  assign ctrl_c5_we = addr_hit[0] & reg_we & !reg_error;
  assign ctrl_c5_wd = reg_wdata[5];

  assign ctrl_c6_we = addr_hit[0] & reg_we & !reg_error;
  assign ctrl_c6_wd = reg_wdata[6];

  assign ctrl_c7_we = addr_hit[0] & reg_we & !reg_error;
  assign ctrl_c7_wd = reg_wdata[7];

  assign ctrl_c8_we = addr_hit[0] & reg_we & !reg_error;
  assign ctrl_c8_wd = reg_wdata[8];

  assign ctrl_c9_we = addr_hit[0] & reg_we & !reg_error;
  assign ctrl_c9_wd = reg_wdata[9];

  assign ctrl_operation_we = addr_hit[0] & reg_we & !reg_error;
  assign ctrl_operation_wd = reg_wdata[15:10];

  // Read data return
  always_comb begin
    reg_rdata_next = '0;
    unique case (1'b1)
      addr_hit[0]: begin
        reg_rdata_next[0] = '0;
        reg_rdata_next[1] = '0;
        reg_rdata_next[2] = '0;
        reg_rdata_next[3] = '0;
        reg_rdata_next[4] = '0;
        reg_rdata_next[5] = '0;
        reg_rdata_next[6] = '0;
        reg_rdata_next[7] = '0;
        reg_rdata_next[8] = '0;
        reg_rdata_next[9] = '0;
        reg_rdata_next[15:10] = '0;
      end

      addr_hit[1]: begin
        reg_rdata_next[0] = status_s0_qs;
        reg_rdata_next[1] = status_s1_qs;
        reg_rdata_next[2] = status_s2_qs;
        reg_rdata_next[3] = status_s3_qs;
        reg_rdata_next[4] = status_s4_qs;
        reg_rdata_next[5] = status_s5_qs;
        reg_rdata_next[6] = status_s6_qs;
        reg_rdata_next[7] = status_s7_qs;
        reg_rdata_next[8] = status_s8_qs;
        reg_rdata_next[9] = status_s9_qs;
      end

      default: begin
        reg_rdata_next = '1;
      end
    endcase
  end

  // Unused signal tieoff

  // wdata / byte enable are not always fully used
  // add a blanket unused statement to handle lint waivers
  logic unused_wdata;
  logic unused_be;
  assign unused_wdata = ^reg_wdata;
  assign unused_be = ^reg_be;

  // Assertions for Register Interface
  `ASSERT(en2addrHit, (reg_we || reg_re) |-> $onehot0(addr_hit))

endmodule

module athos_ip_ctrl_reg_top_intf
#(
  parameter int AW = 3,
  localparam int DW = 32
) (
  input logic clk_i,
  input logic rst_ni,
  REG_BUS.in  regbus_slave,
  // To HW
  output athos_ip_ctrl_reg_pkg::athos_ip_ctrl_reg2hw_t reg2hw, // Write
  input  athos_ip_ctrl_reg_pkg::athos_ip_ctrl_hw2reg_t hw2reg, // Read
  // Config
  input devmode_i // If 1, explicit error return for unmapped register access
);
 localparam int unsigned STRB_WIDTH = DW/8;

`include "register_interface/typedef.svh"
`include "register_interface/assign.svh"

  // Define structs for reg_bus
  typedef logic [AW-1:0] addr_t;
  typedef logic [DW-1:0] data_t;
  typedef logic [STRB_WIDTH-1:0] strb_t;
  `REG_BUS_TYPEDEF_ALL(reg_bus, addr_t, data_t, strb_t)

  reg_bus_req_t s_reg_req;
  reg_bus_rsp_t s_reg_rsp;
  
  // Assign SV interface to structs
  `REG_BUS_ASSIGN_TO_REQ(s_reg_req, regbus_slave)
  `REG_BUS_ASSIGN_FROM_RSP(regbus_slave, s_reg_rsp)

  

  athos_ip_ctrl_reg_top #(
    .reg_req_t(reg_bus_req_t),
    .reg_rsp_t(reg_bus_rsp_t),
    .AW(AW)
  ) i_regs (
    .clk_i,
    .rst_ni,
    .reg_req_i(s_reg_req),
    .reg_rsp_o(s_reg_rsp),
    .reg2hw, // Write
    .hw2reg, // Read
    .devmode_i
  );
  
endmodule



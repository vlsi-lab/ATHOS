// Copyright 2023 PoliTO
// Solderpad Hardware License, Version 2.1, see LICENSE.md for details.
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
//

// athos_ip_x_heep_pkg : address rules for athos_ip accelerator
// Designed by Alessandra Dolmeta
// alessandra.dolmeta@polito.it
//

package athos_ip_x_heep_pkg;

    import addr_map_rule_pkg::*;
    import core_v_mini_mcu_pkg::*;
  
    //master idx
    localparam logic [31:0] EXT_MASTER0_IDX = 0;
  
    // There's no Master o Slave port since athos_ip connected as a slave peripheral
    localparam EXT_XBAR_NMASTER = 1;
    // One slave port
    localparam EXT_XBAR_NSLAVE = 1;
  
    //slave mmap and idx
    localparam logic [31:0] ATHOS_IP_START_ADDRESS =  core_v_mini_mcu_pkg::EXT_SLAVE_START_ADDRESS + 32'h000000;
    localparam logic [31:0] ATHOS_IP_SIZE = 32'h200000;
    localparam logic [31:0] ATHOS_IP_END_ADDRESS = ATHOS_IP_START_ADDRESS + ATHOS_IP_SIZE;
    localparam logic [31:0] ATHOS_IP_IDX = 32'd0;
  
    localparam addr_map_rule_t [EXT_XBAR_NSLAVE-1:0] EXT_XBAR_ADDR_RULES = '{
        '{idx: ATHOS_IP_IDX, start_addr: ATHOS_IP_START_ADDRESS, end_addr: ATHOS_IP_END_ADDRESS}
    };
  
    //slave encoder
    localparam EXT_SYSTEM_NPERIPHERALS = 1;
  
    localparam logic [31:0] ATHOS_IP_PERIPH_START_ADDRESS = core_v_mini_mcu_pkg::EXT_PERIPHERAL_START_ADDRESS + 32'h0000000;
    localparam logic [31:0] ATHOS_IP_PERIPH_SIZE = 32'h0002000;
    localparam logic [31:0] ATHOS_IP_PERIPH_END_ADDRESS = ATHOS_IP_PERIPH_START_ADDRESS + ATHOS_IP_PERIPH_SIZE;
    localparam logic [31:0] ATHOS_IP_PERIPH_IDX = 32'd0;
  
    localparam addr_map_rule_t [EXT_SYSTEM_NPERIPHERALS-1:0] EXT_PERIPHERALS_ADDR_RULES = '{
        '{
            idx: ATHOS_IP_PERIPH_IDX,
            start_addr: ATHOS_IP_PERIPH_START_ADDRESS,
            end_addr: ATHOS_IP_PERIPH_END_ADDRESS
        }
    };
  
    localparam int unsigned EXT_PERIPHERALS_PORT_SEL_WIDTH = EXT_SYSTEM_NPERIPHERALS > 1 ? $clog2(
        EXT_SYSTEM_NPERIPHERALS
    ) : 32'd1;
  
  endpackage  // ATHOS_IP_x_heep_pkg
  
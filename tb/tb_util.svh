// Copyright 2022 OpenHW Group
// Solderpad Hardware License, Version 2.1, see LICENSE.md for details.
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1

`ifndef SYNTHESIS
// Task for loading 'mem' with SystemVerilog system task $readmemh()
export "DPI-C" task tb_readHEX;
export "DPI-C" task tb_loadHEX;
export "DPI-C" task tb_writetoSram0;
export "DPI-C" task tb_writetoSram1;
export "DPI-C" task tb_getMemSize;
export "DPI-C" task tb_set_exit_loop;

import core_v_mini_mcu_pkg::*;

task tb_getMemSize;
  output int mem_size;
  output int num_banks;
  mem_size  = core_v_mini_mcu_pkg::MEM_SIZE;
  num_banks = core_v_mini_mcu_pkg::NUM_BANKS;
endtask

task tb_readHEX;
  input string file;
  output logic [7:0] stimuli[core_v_mini_mcu_pkg::MEM_SIZE];
  $readmemh(file, stimuli);
endtask

task tb_loadHEX;
  input string file;
  //whether to use debug to write to memories
  logic [7:0] stimuli[core_v_mini_mcu_pkg::MEM_SIZE];
  int i, stimuli_counter, bank, NumBytes, NumBanks;
  logic [31:0] addr;

  tb_readHEX(file, stimuli);
  tb_getMemSize(NumBytes, NumBanks);

`ifndef VERILATOR
  for (i = 0; i < NumBytes; i = i + 4) begin

    @(posedge athos_mcu_i.x_heep_system_i.core_v_mini_mcu_i.clk_i);
    addr = i;
    #1;
    // write to memory
    force athos_mcu_i.x_heep_system_i.core_v_mini_mcu_i.debug_subsystem_i.dm_obi_top_i.master_req_o = 1'b1;
    force athos_mcu_i.x_heep_system_i.core_v_mini_mcu_i.debug_subsystem_i.dm_obi_top_i.master_addr_o = addr;
    force athos_mcu_i.x_heep_system_i.core_v_mini_mcu_i.debug_subsystem_i.dm_obi_top_i.master_we_o = 1'b1;
    force athos_mcu_i.x_heep_system_i.core_v_mini_mcu_i.debug_subsystem_i.dm_obi_top_i.master_be_o = 4'b1111;
    force athos_mcu_i.x_heep_system_i.core_v_mini_mcu_i.debug_subsystem_i.dm_obi_top_i.master_wdata_o = {
      stimuli[i+3], stimuli[i+2], stimuli[i+1], stimuli[i]
    };

    wait (athos_mcu_i.x_heep_system_i.core_v_mini_mcu_i.debug_subsystem_i.dm_obi_top_i.master_gnt_i);

    @(posedge athos_mcu_i.x_heep_system_i.core_v_mini_mcu_i.clk_i);

    #1;
    force athos_mcu_i.x_heep_system_i.core_v_mini_mcu_i.debug_subsystem_i.dm_obi_top_i.master_req_o = 1'b0;

    wait (athos_mcu_i.x_heep_system_i.core_v_mini_mcu_i.debug_subsystem_i.dm_obi_top_i.master_rvalid_i);

    #1;

  end

  release athos_mcu_i.x_heep_system_i.core_v_mini_mcu_i.debug_subsystem_i.dm_obi_top_i.master_req_o;
  release athos_mcu_i.x_heep_system_i.core_v_mini_mcu_i.debug_subsystem_i.dm_obi_top_i.master_addr_o;
  release athos_mcu_i.x_heep_system_i.core_v_mini_mcu_i.debug_subsystem_i.dm_obi_top_i.master_we_o;
  release athos_mcu_i.x_heep_system_i.core_v_mini_mcu_i.debug_subsystem_i.dm_obi_top_i.master_be_o;
  release athos_mcu_i.x_heep_system_i.core_v_mini_mcu_i.debug_subsystem_i.dm_obi_top_i.master_wdata_o;

`else

  stimuli_counter = 0;
  for (i = 0; i < NumBytes / NumBanks; i = i + 4) begin
    tb_writetoSram0(i / 4, stimuli[stimuli_counter+3], stimuli[stimuli_counter+2],
                   stimuli[stimuli_counter+1], stimuli[stimuli_counter]);
    stimuli_counter = stimuli_counter + 4;
  end
  for (i = 0; i < NumBytes / NumBanks; i = i + 4) begin
    tb_writetoSram1(i / 4, stimuli[stimuli_counter+3], stimuli[stimuli_counter+2],
                   stimuli[stimuli_counter+1], stimuli[stimuli_counter]);
    stimuli_counter = stimuli_counter + 4;
  end

`endif

endtask


parameter N_STAGES = 32;
parameter RO_LENGTH = 13;
parameter N_BITS_KEY = 512;

task assign_delays;

    output int unsigned delays_vec[N_STAGES][RO_LENGTH];

    string line;
    static string fixed_chars = "RO #xxxx";
    int fID_delays;

    fID_delays = $fopen ("../../../tb/model_files/model_13INV_33RO_30sigma.txt", "r");
    $fgets(line, fID_delays);
    for(int j = 0; j < N_STAGES; j++) begin
      $fscanf(fID_delays, "%s %s ", line, line);
      for(int i = 0; i < RO_LENGTH; i++) begin
          $fscanf(fID_delays, "%d ", delays_vec[j][i]);
      end
  end

  $fclose(fID_delays);

endtask


task tb_writetoSram0;
  input integer addr;
  input [7:0] val3;
  input [7:0] val2;
  input [7:0] val1;
  input [7:0] val0;
`ifdef VCS
  force athos_mcu_i.x_heep_system_i.core_v_mini_mcu_i.memory_subsystem_i.gen_sram[0].ram_i.tc_ram_i.sram[addr] = {
    val3, val2, val1, val0
  };
  release athos_mcu_i.x_heep_system_i.core_v_mini_mcu_i.memory_subsystem_i.gen_sram[0].ram_i.tc_ram_i.sram[addr];
`else
  athos_mcu_i.x_heep_system_i.core_v_mini_mcu_i.memory_subsystem_i.gen_sram[0].ram_i.tc_ram_i.sram[addr] = {
    val3, val2, val1, val0
  };
`endif
endtask

task tb_writetoSram1;
  input integer addr;
  input [7:0] val3;
  input [7:0] val2;
  input [7:0] val1;
  input [7:0] val0;
`ifdef VCS
  force athos_mcu_i.x_heep_system_i.core_v_mini_mcu_i.memory_subsystem_i.gen_sram[1].ram_i.tc_ram_i.sram[addr] = {
    val3, val2, val1, val0
  };
  release athos_mcu_i.x_heep_system_i.core_v_mini_mcu_i.memory_subsystem_i.gen_sram[1].ram_i.tc_ram_i.sram[addr];
`else
  athos_mcu_i.x_heep_system_i.core_v_mini_mcu_i.memory_subsystem_i.gen_sram[1].ram_i.tc_ram_i.sram[addr] = {
    val3, val2, val1, val0
  };
`endif
endtask


task tb_set_exit_loop;
`ifdef VCS
  force athos_mcu_i.x_heep_system_i.core_v_mini_mcu_i.ao_peripheral_subsystem_i.soc_ctrl_i.testbench_set_exit_loop[0] = 1'b1;
  release athos_mcu_i.x_heep_system_i.core_v_mini_mcu_i.ao_peripheral_subsystem_i.soc_ctrl_i.testbench_set_exit_loop[0];
`else
  athos_mcu_i.x_heep_system_i.core_v_mini_mcu_i.ao_peripheral_subsystem_i.soc_ctrl_i.testbench_set_exit_loop[0] = 1'b1;
`endif
endtask
`endif

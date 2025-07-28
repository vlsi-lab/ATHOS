add wave -divider EXT-IF-CONSTANT
add wave -position insertpoint -radix decimal -color Thistle \
sim:/tb_top/testharness_i/ext_if/X_NUM_RS \
sim:/tb_top/testharness_i/ext_if/X_ID_WIDTH \
sim:/tb_top/testharness_i/ext_if/X_MEM_WIDTH \
sim:/tb_top/testharness_i/ext_if/X_RFR_WIDTH \
sim:/tb_top/testharness_i/ext_if/X_RFW_WIDTH \
sim:/tb_top/testharness_i/ext_if/X_MISA \
sim:/tb_top/testharness_i/ext_if/X_ECS_XS \
sim:/tb_top/testharness_i/ext_if/XLEN \
sim:/tb_top/testharness_i/ext_if/FLEN 

add wave -divider EXT_IF
add wave -position insertpoint  \
sim:/tb_top/testharness_i/ext_if/compressed_valid \
sim:/tb_top/testharness_i/ext_if/compressed_ready \
sim:/tb_top/testharness_i/ext_if/compressed_req \
sim:/tb_top/testharness_i/ext_if/compressed_resp 
add wave -position insertpoint -color Plum sim:/tb_top/testharness_i/ext_if/issue_valid 
add wave -position insertpoint  \
sim:/tb_top/testharness_i/ext_if/issue_ready \
sim:/tb_top/testharness_i/ext_if/issue_req \
sim:/tb_top/testharness_i/ext_if/issue_resp 
add wave -position insertpoint -color Plum sim:/tb_top/testharness_i/ext_if/commit_valid 
add wave -position insertpoint  \
sim:/tb_top/testharness_i/ext_if/commit \
sim:/tb_top/testharness_i/ext_if/mem_valid \
sim:/tb_top/testharness_i/ext_if/mem_ready \
sim:/tb_top/testharness_i/ext_if/mem_req \
sim:/tb_top/testharness_i/ext_if/mem_resp \
sim:/tb_top/testharness_i/ext_if/mem_result_valid \
sim:/tb_top/testharness_i/ext_if/mem_result 
add wave -position insertpoint -color Orchid  \
sim:/tb_top/testharness_i/ext_if/result_valid \
sim:/tb_top/testharness_i/ext_if/result_ready \
sim:/tb_top/testharness_i/ext_if/result

add wave -divider ATHOS
add wave -position insertpoint sim:/tb_top/testharness_i/x_heep_system_i/athos_wrapper_i/i_athos_top/i_athos/*
add wave -position insertpoint sim:/tb_top/testharness_i/x_heep_system_i/athos_wrapper_i/i_athos_top/i_athos/montg_instance/*

add wave -divider ex_wb_pipe
add wave -position insertpoint  -color Turquoise \
sim:/tb_top/testharness_i/x_heep_system_i/core_v_mini_mcu_i/cpu_subsystem_i/gen_cv32e40x/cv32e40x_core_i/wb_stage_i/ex_wb_pipe_i

add wave -divider EX_WB_output
add wave -position insertpoint -color Blue \
sim:/tb_top/testharness_i/x_heep_system_i/core_v_mini_mcu_i/cpu_subsystem_i/gen_cv32e40x/cv32e40x_core_i/wb_stage_i/rf_we_wb_o \
sim:/tb_top/testharness_i/x_heep_system_i/core_v_mini_mcu_i/cpu_subsystem_i/gen_cv32e40x/cv32e40x_core_i/wb_stage_i/rf_waddr_wb_o \
sim:/tb_top/testharness_i/x_heep_system_i/core_v_mini_mcu_i/cpu_subsystem_i/gen_cv32e40x/cv32e40x_core_i/wb_stage_i/rf_wdata_wb_o


add wave -divider cv32e40x_CORE
add wave -position insertpoint  \
sim:/tb_top/testharness_i/x_heep_system_i/core_v_mini_mcu_i/cpu_subsystem_i/gen_cv32e40x/cv32e40x_core_i/X_DUALWRITE \
sim:/tb_top/testharness_i/x_heep_system_i/core_v_mini_mcu_i/cpu_subsystem_i/gen_cv32e40x/cv32e40x_core_i/X_RFW_WIDTH \
sim:/tb_top/testharness_i/x_heep_system_i/core_v_mini_mcu_i/cpu_subsystem_i/gen_cv32e40x/cv32e40x_core_i/rf_we_wb \
sim:/tb_top/testharness_i/x_heep_system_i/core_v_mini_mcu_i/cpu_subsystem_i/gen_cv32e40x/cv32e40x_core_i/rf_waddr_wb \
sim:/tb_top/testharness_i/x_heep_system_i/core_v_mini_mcu_i/cpu_subsystem_i/gen_cv32e40x/cv32e40x_core_i/rf_wdata_wb \
sim:/tb_top/testharness_i/x_heep_system_i/core_v_mini_mcu_i/cpu_subsystem_i/gen_cv32e40x/cv32e40x_core_i/rf_wdata_ex \
sim:/tb_top/testharness_i/x_heep_system_i/core_v_mini_mcu_i/cpu_subsystem_i/gen_cv32e40x/cv32e40x_core_i/rf_waddr \
sim:/tb_top/testharness_i/x_heep_system_i/core_v_mini_mcu_i/cpu_subsystem_i/gen_cv32e40x/cv32e40x_core_i/rf_wdata \
sim:/tb_top/testharness_i/x_heep_system_i/core_v_mini_mcu_i/cpu_subsystem_i/gen_cv32e40x/cv32e40x_core_i/rf_we

add wave -divider RF
add wave -position insertpoint  \
sim:/tb_top/testharness_i/x_heep_system_i/core_v_mini_mcu_i/cpu_subsystem_i/gen_cv32e40x/cv32e40x_core_i/register_file_wrapper_i/register_file_i/raddr_i \
sim:/tb_top/testharness_i/x_heep_system_i/core_v_mini_mcu_i/cpu_subsystem_i/gen_cv32e40x/cv32e40x_core_i/register_file_wrapper_i/register_file_i/rdata_o \
sim:/tb_top/testharness_i/x_heep_system_i/core_v_mini_mcu_i/cpu_subsystem_i/gen_cv32e40x/cv32e40x_core_i/register_file_wrapper_i/register_file_i/waddr_i \
sim:/tb_top/testharness_i/x_heep_system_i/core_v_mini_mcu_i/cpu_subsystem_i/gen_cv32e40x/cv32e40x_core_i/register_file_wrapper_i/register_file_i/wdata_i \
sim:/tb_top/testharness_i/x_heep_system_i/core_v_mini_mcu_i/cpu_subsystem_i/gen_cv32e40x/cv32e40x_core_i/register_file_wrapper_i/register_file_i/we_i \
sim:/tb_top/testharness_i/x_heep_system_i/core_v_mini_mcu_i/cpu_subsystem_i/gen_cv32e40x/cv32e40x_core_i/register_file_wrapper_i/register_file_i/mem \
sim:/tb_top/testharness_i/x_heep_system_i/core_v_mini_mcu_i/cpu_subsystem_i/gen_cv32e40x/cv32e40x_core_i/register_file_wrapper_i/register_file_i/we_dec
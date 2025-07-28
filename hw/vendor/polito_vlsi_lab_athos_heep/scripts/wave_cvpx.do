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

add wave -position insertpoint -radix decimal -color Thistle  \
sim:/cv32e40px_core_v_xif_pkg::X_DUALREAD \
sim:/cv32e40px_core_v_xif_pkg::X_DUALWRITE

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


add wave -divider id_stage_i
dd wave -position insertpoint  \
sim:/tb_top/testharness_i/x_heep_system_i/core_v_mini_mcu_i/cpu_subsystem_i/gen_cv32e40px/cv32e40px_top_i/core_i/id_stage_i/x_wb_fwd
add wave -position insertpoint  \
sim:/tb_top/testharness_i/x_heep_system_i/core_v_mini_mcu_i/cpu_subsystem_i/gen_cv32e40px/cv32e40px_top_i/core_i/id_stage_i/x_issue_resp_i


add wave -divider ex_wb_pipe
add wave -position insertpoint  \
sim:/tb_top/testharness_i/x_heep_system_i/core_v_mini_mcu_i/cpu_subsystem_i/gen_cv32e40px/cv32e40px_top_i/core_i/id_stage_i/register_file_i/dualwrite_i \
sim:/tb_top/testharness_i/x_heep_system_i/core_v_mini_mcu_i/cpu_subsystem_i/gen_cv32e40px/cv32e40px_top_i/core_i/id_stage_i/register_file_i/waddr_a_i \
sim:/tb_top/testharness_i/x_heep_system_i/core_v_mini_mcu_i/cpu_subsystem_i/gen_cv32e40px/cv32e40px_top_i/core_i/id_stage_i/register_file_i/wdata_a_i \
sim:/tb_top/testharness_i/x_heep_system_i/core_v_mini_mcu_i/cpu_subsystem_i/gen_cv32e40px/cv32e40px_top_i/core_i/id_stage_i/register_file_i/we_a_i \
sim:/tb_top/testharness_i/x_heep_system_i/core_v_mini_mcu_i/cpu_subsystem_i/gen_cv32e40px/cv32e40px_top_i/core_i/id_stage_i/register_file_i/waddr_b_i \
sim:/tb_top/testharness_i/x_heep_system_i/core_v_mini_mcu_i/cpu_subsystem_i/gen_cv32e40px/cv32e40px_top_i/core_i/id_stage_i/register_file_i/wdata_b_i \
sim:/tb_top/testharness_i/x_heep_system_i/core_v_mini_mcu_i/cpu_subsystem_i/gen_cv32e40px/cv32e40px_top_i/core_i/id_stage_i/register_file_i/we_b_i \
sim:/tb_top/testharness_i/x_heep_system_i/core_v_mini_mcu_i/cpu_subsystem_i/gen_cv32e40px/cv32e40px_top_i/core_i/id_stage_i/register_file_i/mem \
sim:/tb_top/testharness_i/x_heep_system_i/core_v_mini_mcu_i/cpu_subsystem_i/gen_cv32e40px/cv32e40px_top_i/core_i/id_stage_i/register_file_i/waddr_a \
sim:/tb_top/testharness_i/x_heep_system_i/core_v_mini_mcu_i/cpu_subsystem_i/gen_cv32e40px/cv32e40px_top_i/core_i/id_stage_i/register_file_i/waddr_b \
sim:/tb_top/testharness_i/x_heep_system_i/core_v_mini_mcu_i/cpu_subsystem_i/gen_cv32e40px/cv32e40px_top_i/core_i/id_stage_i/register_file_i/we_a_dec \
sim:/tb_top/testharness_i/x_heep_system_i/core_v_mini_mcu_i/cpu_subsystem_i/gen_cv32e40px/cv32e40px_top_i/core_i/id_stage_i/register_file_i/we_b_dec
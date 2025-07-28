add wave -divider tb_top
add wave -position insertpoint sim:/tb_top/clk
add wave -position insertpoint sim:/tb_top/rst_n

add wave -divider testharness_i
add wave -position insertpoint sim:/tb_top/testharness_i/boot_select_i
add wave -position insertpoint sim:/tb_top/testharness_i/uart_rx
add wave -position insertpoint sim:/tb_top/testharness_i/uart_tx
add wave -position insertpoint -color Plum sim:/tb_top/testharness_i/ext_master_req
add wave -position insertpoint -color Plum sim:/tb_top/testharness_i/ext_periph_select
add wave -position insertpoint -color Plum sim:/tb_top/testharness_i/heep_slave_req
add wave -position insertpoint -color Plum sim:/tb_top/testharness_i/ext_master_resp
add wave -position insertpoint -color Plum sim:/tb_top/testharness_i/heep_slave_resp

add wave -divider XIF
add wave -divider xif_compressed_if
add wave -position insertpoint -color pink \
sim:/tb_top/testharness_i/ext_if/compressed_valid \
sim:/tb_top/testharness_i/ext_if/compressed_ready \
sim:/tb_top/testharness_i/ext_if/compressed_req \
sim:/tb_top/testharness_i/ext_if/compressed_resp

add wave -divider xif_issue_if
add wave -position insertpoint -color Maroon \
sim:/tb_top/testharness_i/ext_if/issue_valid \
sim:/tb_top/testharness_i/ext_if/issue_ready \
sim:/tb_top/testharness_i/ext_if/issue_req \
sim:/tb_top/testharness_i/ext_if/issue_resp

add wave -divider xif_commit_if
add wave -position insertpoint -color MediumBlue \
sim:/tb_top/testharness_i/ext_if/commit_valid \
sim:/tb_top/testharness_i/ext_if/commit

add wave -divider xif_mem_if
add wave -position insertpoint -color SeaGreen \
sim:/tb_top/testharness_i/ext_if/mem_valid \
sim:/tb_top/testharness_i/ext_if/mem_ready \
sim:/tb_top/testharness_i/ext_if/mem_req \
sim:/tb_top/testharness_i/ext_if/mem_resp 

add wave -divider xif_mem_result_if
add wave -position insertpoint -color Coral \
sim:/tb_top/testharness_i/ext_if/mem_result_valid \
sim:/tb_top/testharness_i/ext_if/mem_result

add wave -divider xif_result_if
add wave -position insertpoint -color Orange  \
sim:/tb_top/testharness_i/ext_if/result_valid \
sim:/tb_top/testharness_i/ext_if/result_ready \
sim:/tb_top/testharness_i/ext_if/result


add wave -divider CV32E40X
add wave -position insertpoint  -color Gray55 \
sim:/tb_top/testharness_i/x_heep_system_i/COREV_PULP \
sim:/tb_top/testharness_i/x_heep_system_i/FPU \
sim:/tb_top/testharness_i/x_heep_system_i/ZFINX \
sim:/tb_top/testharness_i/x_heep_system_i/EXT_XBAR_NMASTER \
sim:/tb_top/testharness_i/x_heep_system_i/X_EXT \
sim:/tb_top/testharness_i/x_heep_system_i/EXT_XBAR_NMASTER_RND \
sim:/tb_top/testharness_i/x_heep_system_i/EXT_DOMAINS_RND \
sim:/tb_top/testharness_i/x_heep_system_i/NEXT_INT_RND 

add wave -position insertpoint  -color Magenta \
sim:/tb_top/testharness_i/x_heep_system_i/ext_core_instr_req_o \
sim:/tb_top/testharness_i/x_heep_system_i/ext_core_instr_resp_i \
sim:/tb_top/testharness_i/x_heep_system_i/ext_core_data_req_o \
sim:/tb_top/testharness_i/x_heep_system_i/ext_core_data_resp_i \

add wave -position insertpoint \
sim:/tb_top/testharness_i/x_heep_system_i/intr_vector_ext_i \
sim:/tb_top/testharness_i/x_heep_system_i/ext_xbar_master_req_i \
sim:/tb_top/testharness_i/x_heep_system_i/ext_xbar_master_resp_o \
sim:/tb_top/testharness_i/x_heep_system_i/ext_debug_master_req_o \
sim:/tb_top/testharness_i/x_heep_system_i/ext_debug_master_resp_i \
sim:/tb_top/testharness_i/x_heep_system_i/ext_dma_read_ch0_req_o \
sim:/tb_top/testharness_i/x_heep_system_i/ext_dma_read_ch0_resp_i \
sim:/tb_top/testharness_i/x_heep_system_i/ext_dma_write_ch0_req_o \
sim:/tb_top/testharness_i/x_heep_system_i/ext_dma_write_ch0_resp_i \
sim:/tb_top/testharness_i/x_heep_system_i/ext_dma_addr_ch0_req_o \
sim:/tb_top/testharness_i/x_heep_system_i/ext_dma_addr_ch0_resp_i \
sim:/tb_top/testharness_i/x_heep_system_i/ext_peripheral_slave_req_o \
sim:/tb_top/testharness_i/x_heep_system_i/ext_peripheral_slave_resp_i \
sim:/tb_top/testharness_i/x_heep_system_i/external_subsystem_powergate_switch_no \
sim:/tb_top/testharness_i/x_heep_system_i/external_subsystem_powergate_switch_ack_ni \
sim:/tb_top/testharness_i/x_heep_system_i/external_subsystem_powergate_iso_no \
sim:/tb_top/testharness_i/x_heep_system_i/external_subsystem_rst_no \
sim:/tb_top/testharness_i/x_heep_system_i/external_ram_banks_set_retentive_no \
sim:/tb_top/testharness_i/x_heep_system_i/external_subsystem_clkgate_en_no



add wave -divider ATHOS
add wave -position insertpoint  \
sim:/tb_top/testharness_i/x_heep_system_i/athos_wrapper_i/i_athos_top/clk_i \
sim:/tb_top/testharness_i/x_heep_system_i/athos_wrapper_i/i_athos_top/rst_ni \
sim:/tb_top/testharness_i/x_heep_system_i/athos_wrapper_i/i_athos_top/start \
sim:/tb_top/testharness_i/x_heep_system_i/athos_wrapper_i/i_athos_top/mode_o \
sim:/tb_top/testharness_i/x_heep_system_i/athos_wrapper_i/i_athos_top/in_o \
sim:/tb_top/testharness_i/x_heep_system_i/athos_wrapper_i/i_athos_top/input_i \
sim:/tb_top/testharness_i/x_heep_system_i/athos_wrapper_i/i_athos_top/out_o \
sim:/tb_top/testharness_i/x_heep_system_i/athos_wrapper_i/i_athos_top/results \
sim:/tb_top/testharness_i/x_heep_system_i/athos_wrapper_i/i_athos_top/done
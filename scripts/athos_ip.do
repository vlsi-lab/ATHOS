add wave -divider ATHOS_TOP
add wave -position insertpoint sim:/tb_top/testharness_i/athos_mcu_i/athos_ip_top_i/*
add wave -position insertpoint -color magenta sim:/tb_top/testharness_i/athos_mcu_i/athos_ip_top_i/reg_file_to_ip_data.din[0]
add wave -position insertpoint -color magenta sim:/tb_top/testharness_i/athos_mcu_i/athos_ip_top_i/ip_to_reg_file_data.dout[0]

add wave -divider ATHOS_IP
add wave -position insertpoint sim:/tb_top/testharness_i/athos_mcu_i/athos_ip_top_i/i_athos_ip/*
add wave -position insertpoint -color Orange sim:/tb_top/testharness_i/athos_mcu_i/athos_ip_top_i/i_athos_ip/reg_file_to_ip_data_i.din[49]
add wave -position insertpoint -color Orange sim:/tb_top/testharness_i/athos_mcu_i/athos_ip_top_i/i_athos_ip/reg_file_to_ip_data_i.din[0]
add wave -position insertpoint -color Gold sim:/tb_top/testharness_i/athos_mcu_i/athos_ip_top_i/i_athos_ip/load_en

add wave -divider ATHOS_CU
add wave -position insertpoint sim:/tb_top/testharness_i/athos_mcu_i/athos_ip_top_i/i_athos_ip/CU/*

add wave -divider ATHOS_DP
add wave -position insertpoint sim:/tb_top/testharness_i/athos_mcu_i/athos_ip_top_i/i_athos_ip/DP/*

add wave -divider TRNG
add wave -position insertpoint sim:/tb_top/testharness_i/athos_mcu_i/athos_ip_top_i/i_athos_ip/DP/i_trng/*
add wave -divider TRNG_CU
add wave -position insertpoint sim:/tb_top/testharness_i/athos_mcu_i/athos_ip_top_i/i_athos_ip/DP/i_trng/CU_comp/*

add wave -divider NTT_INTT
add wave -position insertpoint sim:/tb_top/testharness_i/athos_mcu_i/athos_ip_top_i/i_athos_ip/DP/i_ntt_intt_top/*

add wave -divider KECCAK
add wave -position insertpoint sim:/tb_top/testharness_i/athos_mcu_i/athos_ip_top_i/i_athos_ip/DP/i_keccak/*

add wave -divider DIN_STEP
add wave -position insertpoint  \
sim:/tb_top/testharness_i/athos_mcu_i/athos_ip_top_i/i_athos_ip/DP/reg_file_to_ip_data_i
add wave -position insertpoint  \
sim:/tb_top/testharness_i/athos_mcu_i/athos_ip_top_i/i_athos_ip/DP/din_ntt_intt_pwn_ip
add wave -position insertpoint  \
sim:/tb_top/testharness_i/athos_mcu_i/athos_ip_top_i/i_athos_ip/DP/i_ntt_intt_top/din
add wave -position insertpoint  \
sim:/tb_top/testharness_i/athos_mcu_i/athos_ip_top_i/i_athos_ip/DP/i_ntt_intt_top/din_en
add wave -position insertpoint  \
sim:/tb_top/testharness_i/athos_mcu_i/athos_ip_top_i/i_athos_ip/DP/i_ntt_intt_top/uut/din
add wave -position insertpoint  \
sim:/tb_top/testharness_i/athos_mcu_i/athos_ip_top_i/i_athos_ip/DP/i_ntt_intt_top/uut/din_en
add wave -position insertpoint  \
sim:/tb_top/testharness_i/athos_mcu_i/athos_ip_top_i/i_athos_ip/DP/i_ntt_intt_top/uut/din_cnt \

add wave -divider DOUT_STEP
add wave -position insertpoint  \
sim:/tb_top/testharness_i/athos_mcu_i/athos_ip_top_i/i_athos_ip/DP/i_ntt_intt_top/uut/gnt_valid \
sim:/tb_top/testharness_i/athos_mcu_i/athos_ip_top_i/i_athos_ip/DP/i_ntt_intt_top/uut/read_en \
sim:/tb_top/testharness_i/athos_mcu_i/athos_ip_top_i/i_athos_ip/DP/i_ntt_intt_top/uut/operation \
sim:/tb_top/testharness_i/athos_mcu_i/athos_ip_top_i/i_athos_ip/DP/i_ntt_intt_top/uut/dout_cnt_gnt
add wave -position insertpoint  \
sim:/tb_top/testharness_i/athos_mcu_i/athos_ip_top_i/i_athos_ip/DP/i_ntt_intt_top/uut/dout_cnt \
sim:/tb_top/testharness_i/athos_mcu_i/athos_ip_top_i/i_athos_ip/DP/i_ntt_intt_top/uut/dout_temp1 \
sim:/tb_top/testharness_i/athos_mcu_i/athos_ip_top_i/i_athos_ip/DP/i_ntt_intt_top/uut/dout_temp 
add wave -position insertpoint  \
sim:/tb_top/testharness_i/athos_mcu_i/athos_ip_top_i/i_athos_ip/DP/i_ntt_intt_top/uut/final_dout 
add wave -position insertpoint -color magenta  sim:/tb_top/testharness_i/athos_mcu_i/athos_ip_top_i/i_athos_ip/DP/i_ntt_intt_top/uut/dout

add wave -divider RAM00
add wave -position insertpoint  \
sim:/tb_top/testharness_i/athos_mcu_i/athos_ip_top_i/i_athos_ip/DP/i_ntt_intt_top/uut/b_ram0_0/*
add wave -position insertpoint sim:/tb_top/testharness_i/athos_mcu_i/athos_ip_top_i/i_athos_ip/DP/i_ntt_intt_top/uut/b_ram0_0/ram(128)
add wave -position insertpoint sim:/tb_top/testharness_i/athos_mcu_i/athos_ip_top_i/i_athos_ip/DP/i_ntt_intt_top/uut/b_ram0_0/ram(129)
add wave -position insertpoint sim:/tb_top/testharness_i/athos_mcu_i/athos_ip_top_i/i_athos_ip/DP/i_ntt_intt_top/uut/b_ram0_0/ram(130)
add wave -position insertpoint sim:/tb_top/testharness_i/athos_mcu_i/athos_ip_top_i/i_athos_ip/DP/i_ntt_intt_top/uut/b_ram0_0/ram(131)
add wave -position insertpoint sim:/tb_top/testharness_i/athos_mcu_i/athos_ip_top_i/i_athos_ip/DP/i_ntt_intt_top/uut/b_ram0_0/ram(254)
add wave -position insertpoint sim:/tb_top/testharness_i/athos_mcu_i/athos_ip_top_i/i_athos_ip/DP/i_ntt_intt_top/uut/b_ram0_0/ram(255)

add wave -divider RAM01
add wave -position insertpoint  \
sim:/tb_top/testharness_i/athos_mcu_i/athos_ip_top_i/i_athos_ip/DP/i_ntt_intt_top/uut/b_ram0_1/*
add wave -position insertpoint sim:/tb_top/testharness_i/athos_mcu_i/athos_ip_top_i/i_athos_ip/DP/i_ntt_intt_top/uut/b_ram0_1/ram(128)
add wave -position insertpoint sim:/tb_top/testharness_i/athos_mcu_i/athos_ip_top_i/i_athos_ip/DP/i_ntt_intt_top/uut/b_ram0_1/ram(129)
add wave -position insertpoint sim:/tb_top/testharness_i/athos_mcu_i/athos_ip_top_i/i_athos_ip/DP/i_ntt_intt_top/uut/b_ram0_1/ram(130)
add wave -position insertpoint sim:/tb_top/testharness_i/athos_mcu_i/athos_ip_top_i/i_athos_ip/DP/i_ntt_intt_top/uut/b_ram0_1/ram(131)
add wave -position insertpoint sim:/tb_top/testharness_i/athos_mcu_i/athos_ip_top_i/i_athos_ip/DP/i_ntt_intt_top/uut/b_ram0_1/ram(254)
add wave -position insertpoint sim:/tb_top/testharness_i/athos_mcu_i/athos_ip_top_i/i_athos_ip/DP/i_ntt_intt_top/uut/b_ram0_1/ram(255)


add wave -divider NTT_INTT
add wave -position insertpoint sim:/tb_top/testharness_i/athos_mcu_i/athos_ip_top_i/i_athos_ip/DP/i_ntt_intt_top/uut/*

add wave -divider DMA
add wave -position insertpoint sim:/tb_top/testharness_i/athos_mcu_i/x_heep_system_i/core_v_mini_mcu_i/ao_peripheral_subsystem_i/dma_i/*
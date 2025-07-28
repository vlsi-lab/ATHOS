add wave -divider TB
add wave -position insertpoint sim:/tb_athos/clk
add wave -position insertpoint sim:/tb_athos/rst
add wave -position insertpoint sim:/tb_athos/start
add wave -position insertpoint  -color Turquoise sim:/tb_athos/mode 
add wave -position insertpoint  -color Turquoise sim:/tb_athos/done
add wave -divider
add wave -position insertpoint -radix decimal -color Turquoise sim:/tb_athos/input_tb
add wave -position insertpoint -radix decimal -color Turquoise sim:/tb_athos/output_tb

add wave -divider ATHOS
add wave -position insertpoint -color Plum sim:/tb_athos/DUT/clk_i
add wave -position insertpoint -color Plum sim:/tb_athos/DUT/rst_ni
add wave -position insertpoint -color Plum sim:/tb_athos/DUT/start_i
add wave -position insertpoint -color Plum sim:/tb_athos/DUT/mode_i
add wave -position insertpoint -color Plum sim:/tb_athos/DUT/done_o
add wave -divider
add wave -position insertpoint -color Magenta sim:/tb_athos/DUT/state
add wave -position insertpoint -color Magenta sim:/tb_athos/DUT/next_state

add wave -divider MODKEY
add wave -position insertpoint -radix decimal -color MediumVioletRed sim:/tb_athos/DUT/i_modkey/modkey_in_i 
add wave -position insertpoint -radix decimal -color MediumVioletRed sim:/tb_athos/DUT/i_modkey/modkey_out_o

add wave -divider SHA_DUMMY
add wave -position insertpoint -radix decimal -color Orchid sim:/tb_athos/DUT/i_sha_dummy/start_i
add wave -position insertpoint -radix decimal -color Orchid sim:/tb_athos/DUT/i_sha_dummy/sha3_i
add wave -position insertpoint -radix decimal -color Orchid sim:/tb_athos/DUT/i_sha_dummy/sha3_o


add wave -divider MUX
add wave -position insertpoint -radix decimal -color Brown sim:/tb_athos/DUT/i_enum_mux/data_in0
add wave -position insertpoint -radix decimal -color Brown sim:/tb_athos/DUT/i_enum_mux/data_in1
add wave -position insertpoint -radix decimal -color Brown sim:/tb_athos/DUT/i_enum_mux/data_in2
add wave -position insertpoint -color Brown sim:/tb_athos/DUT/i_enum_mux/mode_i
add wave -position insertpoint -radix decimal -color Brown sim:/tb_athos/DUT/i_enum_mux/data_out

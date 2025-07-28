add wave -divider TB
add wave -position insertpoint sim:/tb_modkey/clk
add wave -position insertpoint sim:/tb_modkey/rst
add wave -position insertpoint  -color Turquoise sim:/tb_modkey/mode
add wave -divider
add wave -position insertpoint -radix decimal -color Turquoise sim:/tb_modkey/input_tb
add wave -position insertpoint -radix decimal -color Turquoise sim:/tb_modkey/output_tb

add wave -divider ATHOS
add wave -position insertpoint -color Plum sim:/tb_modkey/DUT/clk_i
add wave -position insertpoint -color Plum sim:/tb_modkey/DUT/rst_ni
add wave -position insertpoint -color Plum sim:/tb_modkey/DUT/mode_i

add wave -divider MODKEY
add wave -position insertpoint -radix decimal -color MediumVioletRed sim:/tb_modkey/DUT/i_modkey/modkey_in_i 
add wave -position insertpoint -radix decimal -color MediumVioletRed sim:/tb_modkey/DUT/i_modkey/modkey_out_o


add wave -divider OUT
add wave -position insertpoint -radix decimal -color Brown sim:/tb_modkey/DUT/out_o

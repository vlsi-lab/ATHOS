add wave -divider TB
add wave -position insertpoint sim:/tb_athos_ip/uut/clk
add wave -position insertpoint sim:/tb_athos_ip/uut/rst_n
add wave -position insertpoint -radix hex -color Turquoise sim:/tb_athos_ip/uut/din
add wave -position insertpoint -radix hex -color Turquoise sim:/tb_athos_ip/uut/dout
add wave -position insertpoint sim:/tb_athos_ip/uut/operation
add wave -position insertpoint sim:/tb_athos_ip/uut/ctrl
add wave -position insertpoint sim:/tb_athos_ip/uut/status
add wave -position insertpoint sim:/tb_athos_ip/uut/athos_ip_intr

add wave -divider CU
add wave -position insertpoint -color Plum sim:/tb_athos_ip/uut/CU/current_state
add wave -position insertpoint -color Plum sim:/tb_athos_ip/uut/CU/next_state
add wave -position insertpoint  -radix unsigned -color Plum sim:/tb_athos_ip/uut/CU/counter
add wave -divider
add wave -position insertpoint -color Plum sim:/tb_athos_ip/uut/CU/start_i
add wave -position insertpoint -color Plum sim:/tb_athos_ip/uut/CU/busy_dp_i
add wave -position insertpoint -color Plum sim:/tb_athos_ip/uut/CU/operation_i
add wave -position insertpoint -color Plum sim:/tb_athos_ip/uut/CU/start_dp_o
add wave -position insertpoint -color Plum sim:/tb_athos_ip/uut/CU/athos_ip_intr
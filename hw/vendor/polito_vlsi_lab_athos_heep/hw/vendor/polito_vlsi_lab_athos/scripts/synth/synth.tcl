remove_design -all

define_design_lib WORK -path ./work

source ${READ_SOURCES}.tcl

set search_path [list $search_path . ../include /software/synopsys/syn_current/libraries/syn /software/dk/umc65/Core-lib_LL_Multi-Voltage_Reg.Vt/synopsys ]
set link_library [list "*" "uk65lscllmvbbr_120c25_tc.db" "dw_foundation.sldb" ]
set target_library [list "uk65lscllmvbbr_120c25_tc.db" ]
set synthetic_library [list "dw_foundation.sldb" ]

elaborate ${TOP_MODULE}
link
create_clock -name "INPUT_CLK" -period 100 [ get_ports clk_i ]
write -f ddc -hierarchy -output ${REPORT_DIR}/precompiled.ddc

#report_clocks > ${REPORT_DIR}/clocks.rpt
#report_timing -loop -max_paths 10 > ${REPORT_DIR}/timing_loop.rpt

compile_ultra -no_autoungroup -no_boundary_optimization -timing -gate_clock

write -f ddc -hierarchy -output ${REPORT_DIR}/compiled.ddc

change_names -rules verilog -hier

write -format verilog -hier -o netlist.v

report_timing -nosplit > ${REPORT_DIR}/timing.rpt
report_area -hier -nosplit > ${REPORT_DIR}/area.rpt
report_resources -hierarchy > ${REPORT_DIR}/resources.rpt
report_power > ${REPORT_DIR}/power.rpt


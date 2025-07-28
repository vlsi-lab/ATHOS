#
# Copyright 2024 PoliTO
# Solderpad Hardware License, Version 2.1, see LICENSE.md for details.
# SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
#

echo "Generating ATHOS_ip data registers data RTL"
/home/alessandra.dolmeta/ATHOS/ATHOS/athos_top/hw/vendor/polito_vlsi_lab_athos_heep/hw/vendor/esl_epfl_x_heep/hw/vendor/pulp_platform_register_interface/vendor/lowrisc_opentitan/util/regtool.py -r -t hw/rtl/gen_sv data/athos_ip_data_regs.hjson
echo "Generating ATHOS_ip ctrl registers data RTL"
/home/alessandra.dolmeta/ATHOS/ATHOS/athos_top/hw/vendor/polito_vlsi_lab_athos_heep/hw/vendor/esl_epfl_x_heep/hw/vendor/pulp_platform_register_interface/vendor/lowrisc_opentitan/util/regtool.py -r -t hw/rtl/gen_sv data/athos_ip_ctrl_regs.hjson

echo "Generating ATHOS_ip data registers data SW"
/home/alessandra.dolmeta/ATHOS/ATHOS/athos_top/hw/vendor/polito_vlsi_lab_athos_heep/hw/vendor/esl_epfl_x_heep/hw/vendor/pulp_platform_register_interface/vendor/lowrisc_opentitan/util/regtool.py --cdefines -o sw/athos_ip_data_auto.h data/athos_ip_data_regs.hjson
echo "Generating ATHOS_ip ctrl registers data SW"
/home/alessandra.dolmeta/ATHOS/ATHOS/athos_top/hw/vendor/polito_vlsi_lab_athos_heep/hw/vendor/esl_epfl_x_heep/hw/vendor/pulp_platform_register_interface/vendor/lowrisc_opentitan/util/regtool.py --cdefines -o sw/athos_ip_ctrl_auto.h data/athos_ip_ctrl_regs.hjson


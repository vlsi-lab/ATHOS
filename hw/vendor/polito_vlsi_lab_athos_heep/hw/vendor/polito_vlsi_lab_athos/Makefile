# Copyright PoliTO contributors.
# Licensed under the Apache License, Version 2.0, see LICENSE for details.
# SPDX-License-Identifier: Apache-2.0

# Makefile to generates athos_heep files and build the design with fusesoc

# Global configuration
MAKE  				:= make
ROOT_DIR			:= $(realpath .)
BUILD_DIR			?= build
LOG_DIR				:= $(BUILD_DIR)/logs

# RTL simulation configuration
FUSESOC_FLAGS		?=
FUSESOC_ARGS		?=


#***********************************************************************************************
# CHECK
#***********************************************************************************************

# Runs verible formating
verible:
	util/format-verible;

# Update vendored IPs
.PHONY: vendor-update
vendor-update:
	@echo "### Updating vendored IPs..."
	find hw/vendor -maxdepth 1 -type f -name "*.vendor.hjson" -exec python3 util/vendor.py -vU '{}' \;

# Check if fusesoc is available
.PHONY: .check-fusesoc
.check-fusesoc:
	@if [ ! `which fusesoc` ]; then \
	printf -- "### ERROR: 'fusesoc' is not in PATH. Is the correct conda environment active?\n" >&2; \
	exit 1; fi

# Check if GTKWave is available
.PHONY: .check-gtkwave
.check-gtkwave:
	@if [ ! `which gtkwave` ]; then \
	printf -- "### ERROR: 'gtkwave' is not in PATH. Is the correct conda environment active?\n" >&2; \
	exit 1; fi

# Create directories
%/:
	mkdir -p $@


#***********************************************************************************************
# RUN
#***********************************************************************************************
# To run a simulation, launch one of the following targets
#	make questasim-sim PROJECT=<project name in sw/applications> <other parameters>
#	make verilator-sim PROJECT=<project name in sw/applications> <other parameters>

# Build and runsimulation model using QuestaSim
.PHONY: questasim-sim

questasim-sim:
	@mkdir -p build/polito_vlsi_lab_athos_0
	python $(ROOT_DIR)/scripts/sim/modelsim/modelsim.py
	@cd build/polito_vlsi_lab_athos_0 && \
	vsim -c -do "do analyze.tcl; exit" && \
	cd $(ROOT_DIR)

#***********************************************************************************************
# DEBUG
#***********************************************************************************************
.PHONY: .print
.print:
	@echo "ROOT_DIR: $(ROOT_DIR)"


#***********************************************************************************************
# CLEAN
#***********************************************************************************************
.PHONY: clean clean-build clean-lock
clean: clean-build  clean-lock
clean-build:
	@rm -rf $(BUILD_DIR)
clean-lock:
	$(RM) $(BUILD_DIR)/.*.lock


# Help option: List available commands
.PHONY: help
help:
	@echo "PoliTO VLSI Lab Athos Makefile Commands:"
	@echo ""
	@echo "Global Configuration:"
	@echo "  verible                - Run verible formatting"
	@echo "  vendor-update          - Update vendored IPs"
	@echo ""
	@echo "Simulation and Synthesis:"
	@echo "  questasim-run        - Build and run the simulation model using QuestaSim"
	@echo ""
	@echo "Debugging and Utilities:"
	@echo "  .print                 - Print ROOT_DIR"
	@echo ""
	@echo "Cleaning:"
	@echo "  clean                  - Clean everything"
	@echo "  clean-build            - Clean build directory"
	@echo "  clean-lock             - Clean lock files"
	@echo ""

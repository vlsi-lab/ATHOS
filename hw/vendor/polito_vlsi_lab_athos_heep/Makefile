# Copyright PoliTO contributors.
# Licensed under the Apache License, Version 2.0, see LICENSE for details.
# SPDX-License-Identifier: Apache-2.0

# Makefile to generates athos-x-heep files and build the design with fusesoc


#***********************************************************************************************
# CONFIGURATION
#***********************************************************************************************

# Global configuration
MAKE  				:= make
ROOT_DIR			:= $(realpath .)
BUILD_DIR			:= $(ROOT_DIR)/build
LOG_DIR				:= $(BUILD_DIR)/logs

# Target options are 'sim' (default) and 'pynq-z2'
TARGET   			?= sim

# Linker options are 'on_chip' (default),'flash_load','flash_exec','freertos'
LINKER   			?= on_chip

# X-HEEP configuration
XHEEP_DIR			:= $(ROOT_DIR)/hw/vendor/esl_epfl_x_heep
ATHOS_DIR			:= $(ROOT_DIR)/hw/vendor/polito_vlsi_lab_athos
MCU_CFG				?= $(ROOT_DIR)/config/mcu-gen.hjson
PAD_CFG				?= $(ROOT_DIR)/config/heep-pads.hjson
APP_DIR				:= $(ROOT_DIR)/sw/applications
EXTERNAL_DOMAINS 	:= 1 # athos accelerator
MCU_GEN_OPTS		:= \
	MCU_CFG=$(MCU_CFG) \
	PAD_CFG=$(PAD_CFG) \
	EXTERNAL_DOMAINS=$(EXTERNAL_DOMAINS)
MCU_GEN_LOCK		:= $(BUILD_DIR)/.mcu-gen.lock


# RTL simulation configuration
FIRMWARE 			?= $(ROOT_DIR)/sw/build/main.hex
BYPASS_FLL			?= 1 # 0: use FLL, 1: bypass FLL
FUSESOC_FLAGS		?=
FUSESOC_ARGS		?=

# Application-specific makefile
APP_MAKE  			:= $(wildcard sw/applications/$(PROJECT)/*akefile)
APP_MAKE_PARAMS		?=

# Software build configuration
COMPILER 			?= gcc # Compiler options are 'gcc' (default) and 'clang'
COMPILER_PREFIX 	?= riscv32-unknown-
ARCH     			?= rv32imc
PROJECT   			:= test_hex

# Application build configuration
TYPE ?= kem
SCHEME ?= kyber512
IMPLEMENTATION ?= clean

# List of valid TYPE and SCHEME values
VALID_TYPES := kem sign
VALID_SCHEMES := kyber512 kyber768 kyber1024 kyber512-90s kyber768-90s kyber1024-90s hqc-rmrs-128 hqc-rmrs-192 hqc-rmrs-256 \
                mceliece348864 mceliece348864f mceliece460896 mceliece460896f mceliece6688128 mceliece6688128f \
                mceliece6960119 mceliece6960119f mceliece8192128 mceliece8192128f dilithium2 dilithium3 dilithium5 \
                falcon-512 falcon-1024 sphincs-sha2-128f-simple sphincs-sha2-128s-simple sphincs-sha2-192f-simple \
                sphincs-sha2-192s-simple sphincs-sha2-256f-simple sphincs-sha2-256s-simple sphincs-shake-128f-simple \
                sphincs-shake-128s-simple sphincs-shake-192f-simple sphincs-shake-192s-simple sphincs-shake-256f-simple \
                sphincs-shake-256s-simple

#***********************************************************************************************
# X-HEEP RULES
#***********************************************************************************************
export TARGET
export LINKER
export MCU_CFG
export PAD_CFG
export EXT_PAD_CFG
export EXTERNAL_DOMAINS
export HEEP_DIR = $(ROOT_DIR)/hw/vendor/esl_epfl_x_heep
export ATHOS_DIR = $(ROOT_DIR)/hw/vendor/polito_vlsi_lab_ATHOS
XHEEP_MAKE		= $(HEEP_DIR)/external.mk
ATHOS_MAKE		= $(ATHOS_DIR)/external.mk
include Makefile.venv

#***********************************************************************************************
# BUILD RULES	
#***********************************************************************************************
all: clean-lock
	$(MAKE) mcu-gen
	
# X-HEEP MCU system: Build X-HEEP CORE-V-MINI-MCU
.PHONY: mcu-gen

mcu-gen:
	$(MAKE) -f $(XHEEP_MAKE) $(MAKECMDGOALS) CPU=cv32e40x BUS=NtoM MEMORY_BANKS=32 EXTERNAL_DOMAINS=$(EXTERNAL_DOMAINS)
	@echo "### DONE! X-HEEP MCU generated successfully"

#***********************************************************************************************
# SYNC RULES	
#***********************************************************************************************
.PHONY: athos-sync
athos-sync:
	@echo "### Updating athos repository..."
	rsync -a hw/vendor/polito_vlsi_lab_athos/ ../athos/

.PHONY: cvpx-sync
cvpx-sync:
	@echo "### Updating cvx repository..."
	rsync -a hw/vendor/esl_epfl_x_heep/hw/vendor/esl_epfl_cv32e40px/rtl/ ../cv32e40px/rtl
	rsync -a hw/vendor/esl_epfl_x_heep/hw/vendor/esl_epfl_cv32e40px/bhv/ ../cv32e40px/bhv
	rsync -a hw/vendor/esl_epfl_x_heep/hw/vendor/esl_epfl_cv32e40px/bhv/include/ ../cv32e40px/bhv/include

.PHONY: heep-sync
heep-sync:
	@echo "### Updating heep repository..."
	rsync -a hw/vendor/esl_epfl_x_heep/ ../x-heep


#***********************************************************************************************
# SOFTWARE
#***********************************************************************************************
# X-HEEP applications
.PHONY: app-x-heep

app-x-heep:
	@echo "Building application $(PROJECT)..."
	$(MAKE) -f $(XHEEP_MAKE) app SOURCE=.
	@echo "### DONE! PROJECT $(PROJECT) generated successfully"


# Rule to build app-PQClean-$(TYPE)-$(SCHEME)
app-PQClean-$(TYPE)-$(SCHEME): check-parameters
	$(MAKE) -C sw/applications/PQClean/test TYPE=$(TYPE) SCHEME=$(SCHEME)

.PHONY: app-PQClean-$(TYPE)-$(SCHEME) check-parameters

# Check if provided TYPE and SCHEME values are valid
check-parameters:
ifeq (,$(filter $(TYPE),$(VALID_TYPES)))
    $(error Invalid TYPE value. Choose from $(VALID_TYPES))
endif

ifeq (,$(filter $(SCHEME),$(VALID_SCHEMES)))
    $(error Invalid SCHEME value. Choose from $(VALID_SCHEMES))
endif


app-test-hex: 
	$(MAKE) -C sw applications/PQClean/test/crypto_kem/test_hex.hex PROJECT=$(PROJECT) TARGET=$(TARGET)
	@echo "### DONE! PROJECT $(PROJECT) generated successfully"

app-testvectors-kem-$(SCHEME)_clean: check-parameters
	$(MAKE) -C sw applications/PQClean/test/crypto_kem/testvectors-$(SCHEME)_clean.hex PROJECT=$(PROJECT) TARGET=$(TARGET)
	riscv32-unknown-elf-objdump -d sw/applications/PQClean/test/crypto_kem/testvectors-$(SCHEME)_clean.elf > dis/testvectors-$(SCHEME)_clean.s
	riscv32-unknown-elf-objdump -S sw/applications/PQClean/test/crypto_kem/testvectors-$(SCHEME)_clean.elf > dis/testvectors-$(SCHEME)_clean.disasm
	@echo "### DONE! App testvectors-kem-$(SCHEME)_clean generated successfully"

app-testvectors-sign-$(SCHEME)_clean: check-parameters
	$(MAKE) -C sw applications/PQClean/test/crypto_sign/testvectors-$(SCHEME)_clean.hex PROJECT=$(PROJECT) TARGET=$(TARGET)
	
	riscv32-unknown-elf-objdump -d sw/applications/PQClean/test/crypto_sign/testvectors-$(SCHEME)_clean.elf > dis/testvectors-$(SCHEME)_clean.s
	riscv32-unknown-elf-objdump -S sw/applications/PQClean/test/crypto_sign/testvectors-$(SCHEME)_clean.elf > dis/testvectors-$(SCHEME)_clean.disasm
	@echo "### DONE! App testvectors-sign-$(SCHEME)_clean generated successfully"

app-xiftest: 
	$(MAKE) -C sw applications/xiftest/xiftest.hex 
	riscv32-unknown-elf-objdump -d sw/applications/xiftest/xiftest.elf > dis/dis_xiftest.s
	@echo "### DONE! App xiftest generated successfully"

app-fips-test: 
	$(MAKE) -C sw applications/PQClean/test/test_common/fips202.hex
	riscv32-unknown-elf-objdump -d sw/applications/PQClean/test/test_common/fips202.elf > dis/dis_test_fips202.s
	riscv32-unknown-elf-objdump -S sw/applications/PQClean/test/test_common/fips202.elf > dis/dis_test_fips202.disasm
	@echo "### DONE! App fips generated successfully"

app-shatest: 
	$(MAKE) -C sw applications/shatest/shatest.hex
	riscv32-unknown-elf-objdump -d sw/applications/shatest/shatest.elf > dis/dis_shatest.s
	riscv32-unknown-elf-objdump -S sw/applications/shatest/shatest.elf > dis/dis_shatest.disasm
	@echo "### DONE! App sha-test generated successfully"

app-load64: 
	$(MAKE) -C sw applications/isatest/load64.hex
	riscv32-unknown-elf-objdump -d sw/applications/isatest/load64.elf > dis/dis_load64.s
	riscv32-unknown-elf-objdump -S sw/applications/isatest/load64.elf > dis/dis_load64.disasm
	@echo "### DONE! App load64-test generated successfully"

app-isa-test: 
	$(MAKE) -C sw applications/isatest/isa-test.hex
	riscv32-unknown-elf-objdump -d sw/applications/isatest/isa-test.elf > dis/dis_isa-test.s
	riscv32-unknown-elf-objdump -S sw/applications/isatest/isa-test.elf > dis/dis_isa-test.disasm
	@echo "### DONE! App isa-test-test generated successfully"


.PHONY: app
app:
	@echo "### Building application $(PROJECT)..."
ifneq ($(APP_MAKE),)
	@echo "Calling application makefile $(APP_MAKE)..."
	$(MAKE) -C $(dir $(APP_MAKE)) $(APP_MAKE_PARAMS)
endif
	@echo "Building application $(PROJECT)..."
	$(MAKE) -f $(XHEEP_MAKE) $(MAKECMDGOALS) 
	rm -rf $(ROOT_DIR)/sw/build
	mv $(HEEP_DIR)/sw/build $(ROOT_DIR)/sw/build


## Runs verible formating
verible:
	util/format-verible;


#***********************************************************************************************
# RTL simulation
#***********************************************************************************************

# To run a simulation, launch one of the following targets
#	make questasim-sim PROJECT=<project name in sw/applications> <other parameters>
#	make verilator-sim PROJECT=<project name in sw/applications> <other parameters>

# Build simulation model using QuestaSim
.PHONY: questasim-sim
questasim-sim: 
	fusesoc --cores-root . run --no-export --target=sim --tool=modelsim $(FUSESOC_FLAGS) --setup --build polito:vlsi_lab:athos_heep 2>&1 


# Run simulation model using QuestaSim
.PHONY: questasim-run

run-questasim:
	fusesoc --cores-root . run --no-export --target sim --tool modelsim --run $(FUSESOC_ARGS) polito:vlsi_lab:athos_heep \
		$(FUSESOC_FLAGS) \
		--firmware=$(FIRMWARE) \
		2>&1 | tee $(LOG_DIR)/questasim-run.log

run-questasim-gui:
	cd ./build/polito_vlsi_lab_athos_heep_0/sim-modelsim; \
	make run PLUSARGS="c firmware=../../../sw/build/main.hex"; \
	cat uart0.log; \
	mv uart0.log ../../../output/hello_uart0.txt; \
	cd ../../..;

run-test-hex-questasim: 
	cd ./build/polito_vlsi_lab_athos_heep_0/sim-modelsim; \
	make run PLUSARGS="c firmware=../../../sw/applications/PQClean/test/crypto_kem/test_hex.hex"; \
	cat uart0.log; \
	mv uart0.log ../../../output/test_hex_uart0.txt; \
	cd ../../..;

run-xiftest-questasim: 
	cd ./build/polito_vlsi_lab_athos_heep_0/sim-modelsim; \
	make run PLUSARGS="c firmware=../../../sw/applications/xiftest/xiftest.hex"; \
	cat uart0.log; \
	mv uart0.log ../../../output/xiftest_uart0.txt; \
	cd ../../..;

run-fips-questasim: 
	cd ./build/polito_vlsi_lab_athos_heep_0/sim-modelsim; \
	make run PLUSARGS="c firmware=../../../sw/applications/PQClean/test/test_common/fips202.hex"; \
	cat uart0.log; \
	mv uart0.log ../../../output/fips202_uart0.txt; \
	cd ../../..;

run-shatest-questasim: 
	cd ./build/polito_vlsi_lab_athos_heep_0/sim-modelsim; \
	make run PLUSARGS="c firmware=../../../sw/applications/shatest/shatest.hex"; \
	cat uart0.log; \
	mv uart0.log ../../../output/shatest_uart0.txt; \
	cd ../../..;

run-load64-questasim: 
	cd ./build/polito_vlsi_lab_athos_heep_0/sim-modelsim; \
	make run PLUSARGS="c firmware=../../../sw/applications/isatest/load64.hex"; \
	cat uart0.log; \
	mv uart0.log ../../../output/load64_uart0.txt; \
	cd ../../..;

run-isa-test-questasim: 
	cd ./build/polito_vlsi_lab_athos_heep_0/sim-modelsim; \
	make run PLUSARGS="c firmware=../../../sw/applications/isatest/isa-test.hex"; \
	cat uart0.log; \
	mv uart0.log ../../../output/isa-test_uart0.txt; \
	cd ../../..;

run-testvector-kem-$(SCHEME)-clean-questasim: 
	cd ./build/polito_vlsi_lab_athos_heep_0/sim-modelsim; \
	make run PLUSARGS="c firmware=../../../sw/applications/PQClean/test/crypto_kem/testvectors-$(SCHEME)_clean.hex"; \
	cat uart0.log; \
	mv uart0.log ../../../output/testvectors_$(SCHEME)_uart0.txt; \
	cd ../../..;

run-testvector-sign-$(SCHEME)-clean-questasim: 
	cd ./build/polito_vlsi_lab_athos_heep_0/sim-modelsim; \
	make run PLUSARGS="c firmware=../../../sw/applications/PQClean/test/crypto_sign/testvectors-$(SCHEME)_clean.hex"; \
	cat uart0.log; \
	mv uart0.log ../../../output/testvectors_$(SCHEME)_uart0.txt; \
	cd ../../..;

# Build simulation model using Verilator
.PHONY: verilator-build
verilator-build: $(LOG_DIR)/
	@echo "### Building Verilated model..."
	fusesoc --cores-root . run --no-export --target sim --tool verilator --build $(FUSESOC_ARGS) polito:vlsi_lab:athos_heep \
		$(FUSESOC_FLAGS) \
		2>&1 | tee $(LOG_DIR)/verilator-build.log

# Run verilated simulation model
.PHONY: verilator-run
verilator-run:
	@echo "### Running Verilated model..."
	fusesoc --cores-root . run --no-export --target sim --tool verilator --run $(FUSESOC_ARGS) polito:vlsi_lab:athos_heep \
		$(FUSESOC_FLAGS) \
		--run_options=+firmware=$(FIRMWARE) \
		2>&1 | tee $(LOG_DIR)/verilator-run.log

# Build and run simulation model using Verilator
.PHONY: verilator-sim
verilator-sim: | verilator-build
	@echo "### Running Verilated model..."
	fusesoc --cores-root . run --no-export --target sim --tool verilator --run $(FUSESOC_ARGS) polito:vlsi_lab:athos_heep \
		$(FUSESOC_FLAGS) \
		--run_options=+firmware=$(FIRMWARE) \
		2>&1 | tee $(LOG_DIR)/verilator-run.log


#***********************************************************************************************
# CHECK
#***********************************************************************************************

# Update vendored IPs
.PHONY: vendor-update
vendor-update: clean-lock
	@echo "### Updating vendored IPs..."
	find hw/vendor -maxdepth 1 -type f -name "polito_*.vendor.hjson" -exec python3 util/vendor.py -vUc '{}' \;
	@echo "### Updating vendored X-HEEP..."
	find hw/vendor -maxdepth 1 -type f -name "*.vendor.hjson" -exec python3 util/vendor.py -vUc '{}' \;


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
# DEBUG
#***********************************************************************************************

.PHONY: .print
.print:
	@echo "ROOT_DIR: $(ROOT_DIR)"

#***********************************************************************************************
# CLEAN
#***********************************************************************************************
.PHONY: clean clean-build clean-app clean-lock
clean: clean-app clean-build clean-lock
clean-build:
	@rm -rf $(BUILD_DIR)
clean-app:
	$(MAKE) -C sw clean
clean-lock:
	$(RM) $(BUILD_DIR)/.*.lock



#***********************************************************************************************
# HELP
#***********************************************************************************************

# Generate app-testvectors-kem-<SCHEME>_clean commands for each SCHEME
testvectors-kem-commands := $(foreach scheme,$(VALID_SCHEMES),app-testvectors-kem-$(scheme)_clean)

# Generate app-testvectors-sign-<SCHEME>_clean commands for each SCHEME
testvectors-sign-commands := $(foreach scheme,$(VALID_SCHEMES),app-testvectors-sign-$(scheme)_clean)

# Print the generated commands
.PHONY: list-commands
list-commands:
	@echo "app-testvectors-kem-<SCHEME>_clean commands:"
	@echo $(testvectors-kem-commands)
	@echo "app-testvectors-sign-<SCHEME>_clean commands:"
	@echo $(testvectors-sign-commands)

help:
	@echo "Usage: make <target>"
	@echo "Available targets:"
	@echo "  all                         - Build X-HEEP MCU and applications"
	@echo "  mcu-gen                     - Generate X-HEEP MCU"
	@echo "  app-x-heep                  - Build X-HEEP applications"
	@echo "  app-PQClean-<TYPE>-<SCHEME> - Build PQClean application with specific TYPE and SCHEME (e.g., kem, kyber512)"
	@echo "  app-test-hex                - Build a specific test_hex application"
	@echo "  app-testvectors-kem-<SCHEME>_clean - Build testvectors-kem application with a specific SCHEME"
	@echo "  app-testvectors-sign-<SCHEME>_clean - Build testvectors-sign application with a specific SCHEME"
	@echo "  verible                     - Run Verible formatting"
	@echo "  questasim-sim               - Build QuestaSim simulation model"
	@echo "  run-questasim               - Run QuestaSim simulation"
	@echo "  run-questasim-gui           - Run QuestaSim simulation with GUI"
	@echo "  run-test-hex-questasim      - Run test_hex application with QuestaSim"
	@echo "  run-testvector-kem-<SCHEME>-clean-questasim - Run testvectors-kem application with QuestaSim"
	@echo "  run-testvector-sign-<SCHEME>-clean-questasim - Run testvectors-sign application with QuestaSim"
	@echo "  verilator-build             - Build Verilator simulation model"
	@echo "  verilator-run               - Run Verilator simulation"
	@echo "  verilator-sim               - Build and run Verilator simulation model"
	@echo "  vendor-update               - Update vendored IPs"
	@echo "  athos-sync                  - Sync the athos repository"
	@echo "  clean                       - Clean build, app, and lock files"
	@echo "  clean-build                 - Clean build directory"
	@echo "  clean-app                   - Clean application files"
	@echo "  clean-lock                  - Clean lock files"
	@echo "  help                        - Display this help message"
	@echo "Available TYPE values: kem, sign"
	@echo "Available SCHEME values: kyber512, kyber768, kyber1024, kyber512-90s, kyber768-90s, kyber1024-90s, hqc-rmrs-128, hqc-rmrs-192, hqc-rmrs-256, mceliece348864, mceliece348864f, mceliece460896, mceliece460896f, mceliece6688128, mceliece6688128f, mceliece6960119, mceliece6960119f, mceliece8192128, mceliece8192128f, dilithium2, dilithium3, dilithium5, falcon-512, falcon-1024, sphincs-sha2-128f-simple, sphincs-sha2-128s-simple, sphincs-sha2-192f-simple, sphincs-sha2-192s-simple, sphincs-sha2-256f-simple, sphincs-sha2-256s-simple, sphincs-shake-128f-simple, sphincs-shake-128s-simple, sphincs-shake-192f-simple, sphincs-shake-192s-simple, sphincs-shake-256f-simple, sphincs-shake-256s-simple"

# Copyright PoliTO contributors.
# Licensed under the Apache License, Version 2.0, see LICENSE for details.
# SPDX-License-Identifier: Apache-2.0


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
XHEEP_DIR			:= $(ROOT_DIR)/hw/vendor/polito_vlsi_lab_athos_heep/hw/vendor/esl_epfl_x_heep
ATHOS_DIR			:= $(ROOT_DIR)/hw/vendor/polito_vlsi_lab_athos_heep/hw/vendor/polito_vlsi_lab_athos
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
#COMPILER_PREFIX     = riscv32-corev-
ARCH     			?= rv32imc
#ARCH				= rv32imc_zicsr_zifencei_xcvhwlp1p0_xcvmem1p0_xcvmac1p0_xcvbi1p0_xcvalu1p0_xcvsimd1p0_xcvbitmanip1p0
PROJECT   			:= load64
# 1 external domain for the KECCAK
EXTERNAL_DOMAINS = 1
# Keccak application flags
USE_DMA   = 1

# Application build configuration
TYPE ?= kem
SCHEME ?= kyber512
VERSION ?= ORIGINAL #ATHOS - if using accelerator
IMPLEMENTATION ?= clean

ISA_TYPE ?= load64

# List of valid TYPE and SCHEME values
VALID_TYPES := kem sign
VALID_SCHEMES := kyber512 kyber768 kyber1024 hqc-128 hqc-192 hqc-256 \
                mceliece348864 mceliece348864f mceliece460896 mceliece460896f mceliece6688128 mceliece6688128f \
                mceliece6960119 mceliece6960119f mceliece8192128 mceliece8192128f dilithium2 dilithium3 dilithium5 \
                

#***********************************************************************************************
# X-HEEP RULES
#***********************************************************************************************
export TARGET
export LINKER
export MCU_CFG
export PAD_CFG
export EXT_PAD_CFG
export EXTERNAL_DOMAINS
export HEEP_DIR = $(ROOT_DIR)/hw/vendor/polito_vlsi_lab_athos_heep/hw/vendor/esl_epfl_x_heep
export ATHOS_DIR = $(ROOT_DIR)/hw/vendor/polito_vlsi_lab_athos_heep/hw/vendor/polito_vlsi_lab_athos
XHEEP_MAKE		= $(HEEP_DIR)/external.mk
ATHOS_MAKE		= $(ATHOS_DIR)/external.mk
include Makefile.venv

ifndef CONDA_DEFAULT_ENV
$(info USING VENV)
FUSESOC = $(PWD)/$(VENV)/fusesoc
PYTHON  = $(PWD)/$(VENV)/python
else
$(info USING MINICONDA $(CONDA_DEFAULT_ENV))
FUSESOC := $(shell which fusesoc)
PYTHON  := $(shell which python)
endif

#***********************************************************************************************
# BUILD RULES	
#***********************************************************************************************
all: clean-lock
	$(MAKE) mcu-gen

mcu-gen:
	$(MAKE) -f $(XHEEP_MAKE) $(MAKECMDGOALS) CPU=cv32e40x BUS=NtoM MEMORY_BANKS=32 EXTERNAL_DOMAINS=$(EXTERNAL_DOMAINS)
	@echo "### DONE! X-HEEP MCU generated successfully"

#***********************************************************************************************
# SYNC RULES	
#***********************************************************************************************
.PHONY: athos-sync
athos-sync:
	@echo "### Updating athos repository..."
	rsync -a hw/vendor/polito_vlsi_lab_athos_heep/hw/vendor/polito_vlsi_lab_athos/ ../athos/

.PHONY: cvpx-sync
cvpx-sync:
	@echo "### Updating cvx repository..."
	rsync -a hw/vendor/polito_vlsi_lab_athos_heep/hw/vendor/polito_vlsi_lab_athos_heep/hw/vendor/esl_epfl_cv32e40x/rtl/ ../../cv32e40x/rtl
	rsync -a hw/vendor/polito_vlsi_lab_athos_heep/hw/vendor/polito_vlsi_lab_athos_heep/hw/vendor/esl_epfl_cv32e40x/bhv/ ../../cv32e40x/bhv
	rsync -a hw/vendor/polito_vlsi_lab_athos_heep/hw/vendor/polito_vlsi_lab_athos_heep/hw/vendor/esl_epfl_cv32e40x/bhv/include/ ../../cv32e40x/bhv/include
	rsync -a hw/vendor/polito_vlsi_lab_athos_heep/hw/vendor/polito_vlsi_lab_athos_heep/hw/vendor/esl_epfl_cv32e40x/bhv/include/ ../../cv32e40x/bhv/include

athos-heep-sync:
	@echo "### Updating athos_heep repository..."
	rsync -a hw/vendor/polito_vlsi_lab_athos_heep/ ../athos_heep/

athos-ip-sync:
	@echo "### Updating athos_heep repository..."
	rsync -a hw/vendor/polito_vlsi_lab_athos_ip/ ../athos_ip/

esl_epfl_x_heep-sync:
	@echo "### Modifiying esl_epfl_x_heep repository..."
	rsync -a config/rv_plic.c hw/vendor/polito_vlsi_lab_athos_heep/hw/vendor/esl_epfl_x_heep/sw/device/lib/drivers/rv_plic/rv_plic.c
	rsync -a config/rv_plic.h hw/vendor/polito_vlsi_lab_athos_heep/hw/vendor/esl_epfl_x_heep/sw/device/lib/drivers/rv_plic/rv_plic.h
	rsync -a config/dma.c hw/vendor/polito_vlsi_lab_athos_heep/hw/vendor/esl_epfl_x_heep/sw/device/lib/drivers/dma/dma.c
	rsync -a config/dma.h hw/vendor/polito_vlsi_lab_athos_heep/hw/vendor/esl_epfl_x_heep/sw/device/lib/drivers/dma/dma.h

.PHONY: heep-sync
heep-sync:
	@echo "### Updating heep repository..."
	rsync -a hw/vendor/polito_vlsi_lab_athos_heep/hw/vendor/esl_epfl_x_heep/ ../../x-heep

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

#***********************************************************************************************
# SOFTWARE
#***********************************************************************************************
.PHONY: app-helloworld

# Check if provided TYPE and SCHEME values are valid
check-parameters:
ifeq (,$(filter $(TYPE),$(VALID_TYPES)))
    $(error Invalid TYPE value. Choose from $(VALID_TYPES))
endif

ifeq (,$(filter $(SCHEME),$(VALID_SCHEMES)))
    $(error Invalid SCHEME value. Choose from $(VALID_SCHEMES))
endif


# Applications
app-helloworld:
	$(MAKE) -C sw applications/hello_world/hello_world.hex  TARGET=$(TARGET)

app-$(IP_TYPE): 
	$(MAKE) -C sw applications/athos_ip_test/$(IP_TYPE)/main.hex TARGET=$(TARGET) USE_DMA=$(USE_DMA)
	riscv32-unknown-elf-objdump -d sw/applications/athos_ip_test/$(IP_TYPE)/main.elf > dis/dis_$(IP_TYPE).s
	riscv32-unknown-elf-objdump -S sw/applications/athos_ip_test/$(IP_TYPE)/main.elf > dis/dis_$(IP_TYPE).disasm
	@echo "### DONE! App-$(IP_TYPE) generated successfully"


app-testvectors-kem-ORIGINAL-$(SCHEME)_clean: check-parameters
	$(MAKE) -C sw applications/PQClean-ORIGINAL/test/crypto_kem/testvectors-$(SCHEME)_clean.hex TARGET=$(TARGET) VERSION=$(VERSION)
	riscv32-unknown-elf-objdump -d sw/applications/PQClean-ORIGINAL/test/crypto_kem/testvectors-$(SCHEME)_clean.elf > dis/testvectors-$(SCHEME)-ORIGINAL_clean.s
	riscv32-unknown-elf-objdump -S sw/applications/PQClean-ORIGINAL/test/crypto_kem/testvectors-$(SCHEME)_clean.elf > dis/testvectors-$(SCHEME)-ORIGINAL_clean.disasm
	./../../../../software/x-heep/riscv-centos/bin/riscv32-unknown-elf-size ./sw/applications/PQClean-ORIGINAL/test/crypto_kem/testvectors-$(SCHEME)_clean.elf
	@echo "### DONE! App testvectors-kem-$(SCHEME)_clean generated successfully for ORIGINAL-version!"

app-testvectors-kem-ATHOS-$(SCHEME)_clean: check-parameters
	$(MAKE) -C sw applications/PQClean-ATHOS/test/crypto_kem/testvectors-$(SCHEME)_clean.hex  TARGET=$(TARGET) VERSION=$(VERSION)
	riscv32-unknown-elf-objdump -d sw/applications/PQClean-ATHOS/test/crypto_kem/testvectors-$(SCHEME)_clean.elf > dis/testvectors-$(SCHEME)-ATHOS_clean.s
	riscv32-unknown-elf-objdump -S sw/applications/PQClean-ATHOS/test/crypto_kem/testvectors-$(SCHEME)_clean.elf > dis/testvectors-$(SCHEME)-ATHOS_clean.disasm
	./../../../../software/x-heep/riscv-centos/bin/riscv32-unknown-elf-size ./sw/applications/PQClean-ATHOS/test/crypto_kem/testvectors-$(SCHEME)_clean.elf
	@echo "### DONE! App testvectors-kem-$(SCHEME)_clean generated successfully for ATHOS-version!"

app-testvectors-sign-ORIGINAL-$(SCHEME)_clean: check-parameters
	$(MAKE) -C sw applications/PQClean-ORIGINAL/test/crypto_sign/testvectors-$(SCHEME)_clean.hex  TARGET=$(TARGET) VERSION=$(VERSION)
	riscv32-unknown-elf-objdump -d sw/applications/PQClean-ORIGINAL/test/crypto_sign/testvectors-$(SCHEME)_clean.elf > dis/testvectors-$(SCHEME)-ORIGINAL_clean.s
	riscv32-unknown-elf-objdump -S sw/applications/PQClean-ORIGINAL/test/crypto_sign/testvectors-$(SCHEME)_clean.elf > dis/testvectors-$(SCHEME)-ORIGINAL_clean.disasm
	./../../../../software/x-heep/riscv-centos/bin/riscv32-unknown-elf-size ./sw/applications/PQClean-ORIGINAL/test/crypto_sign/testvectors-$(SCHEME)_clean.elf
	@echo "### DONE! App testvectors-sign-$(SCHEME)_clean generated successfully for ORIGINAL-version"

app-testvectors-sign-ATHOS-$(SCHEME)_clean: check-parameters
	$(MAKE) -C sw applications/PQClean-ATHOS/test/crypto_sign/testvectors-$(SCHEME)_clean.hex  TARGET=$(TARGET) VERSION=$(VERSION)
	riscv32-unknown-elf-objdump -d sw/applications/PQClean-ATHOS/test/crypto_sign/testvectors-$(SCHEME)_clean.elf > dis/testvectors-$(SCHEME)-ATHOS_clean.s
	riscv32-unknown-elf-objdump -S sw/applications/PQClean-ATHOS/test/crypto_sign/testvectors-$(SCHEME)_clean.elf > dis/testvectors-$(SCHEME)-ATHOS_clean.disasm
	./../../../../software/x-heep/riscv-centos/bin/riscv32-unknown-elf-size ./sw/applications/PQClean-ATHOS/test/crypto_sign/testvectors-$(SCHEME)_clean.elf
	@echo "### DONE! App testvectors-sign-$(SCHEME)_clean generated successfully for ATHOS-version"


app-$(ISA_TYPE): 
	$(MAKE) -C sw applications/isatest/$(ISA_TYPE).hex
	riscv32-unknown-elf-objdump -d sw/applications/isatest/$(ISA_TYPE).elf > dis/dis_$(ISA_TYPE).s
	riscv32-unknown-elf-objdump -S sw/applications/isatest/$(ISA_TYPE).elf > dis/dis_$(ISA_TYPE).disasm
	@echo "### DONE! App $(ISA_TYPE)-test generated successfully"


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



#***********************************************************************************************
# RTL simulation
#***********************************************************************************************

questasim-sim:
	$(FUSESOC) --cores-root . run --no-export --target=sim --tool=modelsim $(FUSESOC_FLAGS) --setup --build polito:vlsi_lab:athos_mcu 2>&1 | tee buildsim.log

verilator-sim: 
	fusesoc --cores-root . run --no-export --target=sim --tool=verilator $(FUSESOC_FLAGS) --setup --build polito:vlsi_lab:athos_mcu 2>&1 | tee buildsim.log

run-hello_world-questasim: 
	cd ./build/polito_vlsi_lab_athos_mcu_0/sim-modelsim; \
	make run PLUSARGS="c firmware=../../../sw/applications/PQClean/test/crypto_kem/test_hex.hex"; \
	cat uart0.log; \
	mv uart0.log ../../../output/test_hex_uart0.txt; \
	cd ../../..;


run-$(ISA_TYPE)-questasim: 
	cd ./build/polito_vlsi_lab_athos_mcu_0/sim-modelsim; \
	make run PLUSARGS="c firmware=../../../sw/applications/isatest/$(ISA_TYPE).hex"; \
	cat uart0.log; \
	mv uart0.log ../../../output/$(ISA_TYPE)_uart0.txt; \
	cd ../../..;


run-$(IP_TYPE)-questasim: 
	cd ./build/polito_vlsi_lab_athos_mcu_0/sim-modelsim; \
	make run PLUSARGS="c firmware=../../../sw/applications/athos_ip_test/$(IP_TYPE)/main.hex"; \
	cat uart0.log; \
	cd ../../..;

run-testvector-kem-ORIGINAL-$(SCHEME)-questasim: 
	cd ./build/polito_vlsi_lab_athos_mcu_0/sim-modelsim; \
	make run PLUSARGS="c firmware=../../../sw/applications/PQClean-ORIGINAL/test/crypto_kem/testvectors-$(SCHEME)_clean.hex"; \
	cat uart0.log; \
	cd ../../..;

run-testvector-kem-ATHOS-$(SCHEME)-questasim: 
	cd ./build/polito_vlsi_lab_athos_mcu_0/sim-modelsim; \
	make run PLUSARGS="c firmware=../../../sw/applications/PQClean-ATHOS/test/crypto_kem/testvectors-$(SCHEME)_clean.hex"; \
	cat uart0.log; \
	cd ../../..;

run-testvector-sign-ORIGINAL-$(SCHEME)-clean-questasim: 
	cd ./build/polito_vlsi_lab_athos_mcu_0/sim-modelsim; \
	make run PLUSARGS="c firmware=../../../sw/applications/PQClean-ORIGINAL/test/crypto_sign/testvectors-$(SCHEME)_clean.hex"; \
	cat uart0.log; \
	cd ../../..;

run-testvector-sign-ATHOS-$(SCHEME)-clean-questasim: 
	cd ./build/polito_vlsi_lab_athos_mcu_0/sim-modelsim; \
	make run PLUSARGS="c firmware=../../../sw/applications/PQClean-ATHOS/test/crypto_sign/testvectors-$(SCHEME)_clean.hex"; \
	cat uart0.log; \
	cd ../../..;

#***********************************************************************************************
## @section Vivado
## Builds (synthesis and implementation) the bitstream for the FPGA version using Vivado
## @param FPGA_BOARD=nexys-a7-100t,pynq-z2
## @param FUSESOC_FLAGS=--flag=<flagname>
vivado-keccak-fpga:
	$(FUSESOC) --cores-root . run --no-export --target=$(FPGA_BOARD) $(FUSESOC_FLAGS) --setup --build polito:vlsi_lab:athos_mcu 2>&1 | tee buildvivado.log

vivado-keccak-fpga-nobuild:
	$(FUSESOC) --cores-root . run --no-export --target=$(FPGA_BOARD) $(FUSESOC_FLAGS) --setup polito:vlsi_lab:athos_mcu 2>&1 | tee buildvivado.log

#***********************************************************************************************
# CLEAN
#***********************************************************************************************
.PHONY: clean clean-build clean-app clean-lock
clean: clean-app clean-sim clean-lock
clean-sim:
	@rm -rf build
clean-app:
	$(MAKE) -C sw clean
clean-lock:
	$(RM) $(BUILD_DIR)/.*.lock

# Copyright 2019 Clifford Wolf
# Copyright 2019 Robert Balas
#
# Permission to use, copy, modify, and/or distribute this software for any
# purpose with or without fee is hereby granted, provided that the above
# copyright notice and this permission notice appear in all copies.
#
# THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES WITH
# REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY
# AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY SPECIAL, DIRECT,
# INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM
# LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR
# OTHER TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR
# PERFORMANCE OF THIS SOFTWARE.

# Author: Robert Balas (balasr@iis.ee.ethz.ch)

MAKE                       = make

# riscv toolchain install path
#RISCV                      ?= ~/.riscv

HEEP_TOOL_PATH=/software/x-heep
RISCV_PATH=$(HEEP_TOOL_PATH)/riscv-centos
RISCV_EXE_PREFIX           = $(RISCV_PATH)/bin/riscv32-unknown-elf-

TARGET                     ?= sim

# GCC configuration
CUSTOM_GCC_FLAGS           =

INC_FOLDERS_GCC             = $(addprefix -I ,$(INC_FOLDERS))
LIB_CRT                    = $(wildcard device/lib/crt/crt0.S)
LIB_CRT                    += $(wildcard device/lib/crt/vectors.S)
LIB_CRT_FLASH_EXEC         = $(wildcard device/lib/crt_flash_exec/*.S)
LIB_CRT_FLASH_LOAD         = $(wildcard device/lib/crt_flash_load/*.S)
LIB_BASE                   = $(wildcard device/lib/base/*.c)
LIB_BASE_FREESTD           = device/lib/base/freestanding
LIB_RUNTIME                = $(wildcard device/lib/runtime/*.c)
LIB_DRIVERS                = $(wildcard device/lib/drivers/soc_ctrl/*.c)
LIB_DRIVERS                += $(wildcard device/lib/drivers/uart/*.c)
LIB_DRIVERS                += $(wildcard device/lib/drivers/rv_plic/*.c)
LIB_DRIVERS                += $(wildcard device/lib/drivers/rv_timer/*.c)
LIB_DRIVERS                += $(wildcard device/lib/drivers/gpio/*.c)
LIB_DRIVERS                += $(wildcard device/lib/drivers/i2c/*.c)
LIB_DRIVERS                += $(wildcard device/lib/drivers/dma/*.c)
LIB_DRIVERS                += $(wildcard device/lib/drivers/power_manager/*.c)
LIB_DRIVERS                += $(wildcard device/lib/drivers/fast_intr_ctrl/*.c)
LIB_DRIVERS                += $(wildcard device/lib/drivers/spi_mem/*.c)
LIB_DRIVERS                += $(wildcard device/lib/drivers/spi_host/*.c)
LIB_DRIVERS                += $(wildcard device/lib/drivers/pad_control/*.c)
INC_FOLDERS                = $(sort $(dir $(wildcard device/target/$(TARGET)/)))
INC_FOLDERS                += $(sort $(dir $(wildcard device/lib/drivers/*/)))
INC_FOLDERS                += $(sort $(dir $(wildcard device/lib/base/)))
INC_FOLDERS                += $(sort $(dir $(wildcard device/lib/runtime/)))
INC_FOLDERS                += $(sort $(dir $(wildcard device/lib/crt/)))
INC_FOLDERS                += $(sort $(dir $(wildcard external/lib/drivers/*/)))
INC_FOLDERS                += $(sort $(dir $(wildcard external/lib/runtime/)))

#ATHOS_IP driver
LIB_DRIVERS                += $(wildcard external/lib/drivers/athos_ip/*.c)
INC_DRIVERS                += $(wildcard external/lib/drivers/athos_ip)


#FILEs for applications
#PQC applications
ifeq ($(IP_TYPE), KECCAK)
	INC_FOLDERS                += applications/athos_ip_test/KECCAK
else ifeq ($(IP_TYPE), COMBO)
	INC_FOLDERS                += applications/athos_ip_test/COMBO
else ifeq ($(IP_TYPE), NTT)
	INC_FOLDERS                += applications/athos_ip_test/NTT
else ifeq ($(IP_TYPE), INTT)
	INC_FOLDERS                += applications/athos_ip_test/INTT
endif

#PQC applications
ifeq ($(VERSION), ORIGINAL)
	LIB_DRIVERS                += $(wildcard applications/PQClean-ORIGINAL/crypto_kem/$(SCHEME)/clean/*.c)
	INC_FOLDERS                += $(sort $(dir $(wildcard applications/PQClean-ORIGINAL/crypto_kem/$(SCHEME)/clean/*)))
	INC_FOLDERS                += applications/PQClean-ORIGINAL/common
	LIB_DRIVERS                += $(wildcard applications/PQClean-ORIGINAL/common/*.c)
	LIB_DRIVERS                += $(wildcard applications/PQClean-ORIGINAL/crypto_sign/$(SCHEME)/clean/*.c)
	INC_FOLDERS                += $(sort $(dir $(wildcard applications/PQClean-ORIGINAL/crypto_sign/$(SCHEME)/clean/*)))
else ifeq ($(VERSION), ATHOS)
	LIB_DRIVERS                += $(wildcard applications/PQClean-ATHOS/crypto_kem/$(SCHEME)/clean/*.c)
	INC_FOLDERS                += $(sort $(dir $(wildcard applications/PQClean-ATHOS/crypto_kem/$(SCHEME)/clean/*)))
	INC_FOLDERS                += applications/PQClean-ATHOS/common
	LIB_DRIVERS                += $(wildcard applications/PQClean-ATHOS/common/*.c)
	LIB_DRIVERS                += $(wildcard applications/PQClean-ATHOS/crypto_sign/$(SCHEME)/clean/*.c)
	INC_FOLDERS                += $(sort $(dir $(wildcard applications/PQClean-ATHOS/crypto_sign/$(SCHEME)/clean/*)))
endif

SCHEME_UPPERCASE=$(shell echo $(SCHEME) | tr a-z A-Z | sed 's/-//g')

# Rules to generate hex (loadable by simulators) from elf
%.hex: %.elf
	$(RISCV_EXE_PREFIX)objcopy -O verilog $< $@

%.flash_exec.hex: %.flash_exec.elf
	$(RISCV_EXE_PREFIX)objcopy -O verilog --adjust-vma=-0x40000000 $< $@

%.flash_load.hex: %.flash_load.elf
	$(RISCV_EXE_PREFIX)objcopy -O verilog --adjust-vma=-0x40000000 $< $@

%.dis: %.elf
	$(RISCV_EXE_PREFIX)objdump -S $^ > $@

%.dump: %.elf
	$(RISCV_EXE_PREFIX)objdump -xD $^ > $@


applications/hello_world/hello_world.elf: applications/hello_world/main.c
	$(RISCV_EXE_PREFIX)gcc -march=rv32imc -o $@ -w -O2 -g -nostdlib -D USE_DMA=$(USE_DMA)\
		$(CUSTOM_GCC_FLAGS) \
		-DHOST_BUILD \
		-T linker/link.ld \
		-I $(RISCV)/riscv32-unknown-elf/include \
		$(INC_FOLDERS_GCC) \
		-static \
		$(LIB_CRT) \
		$^ $(LIB_RUNTIME) \
		$(LIB_BASE) \
		$(LIB_DRIVERS) \
		-L $(RISCV)/riscv32-unknown-elf/lib \
		-lc -lm -lgcc -flto -ffunction-sections -fdata-sections -specs=nano.specs


applications/athos_ip_test/$(IP_TYPE)/main.elf: applications/athos_ip_test/$(IP_TYPE)/main.c 
	$(RISCV_EXE_PREFIX)gcc -march=rv32imc -o $@ -w -O2 -g -nostdlib \
		$(CUSTOM_GCC_FLAGS) \
		-DHOST_BUILD \
		-T linker/link.ld \
		-I $(RISCV)/riscv32-unknown-elf/include \
		$(INC_FOLDERS_GCC) \
		-static \
		$(LIB_CRT) \
		$^ $(LIB_RUNTIME) \
		$(LIB_BASE) \
		$(LIB_DRIVERS) \
		-L $(RISCV)/riscv32-unknown-elf/lib \
		-lc -lm -lgcc -flto -ffunction-sections -fdata-sections -specs=nano.specs


applications/isatest/$(ISA_TYPE).elf: applications/isatest/$(ISA_TYPE).c 
	$(RISCV_EXE_PREFIX)gcc -march=rv32imc -o $@ -w -O2 -g -nostdlib \
		$(CUSTOM_GCC_FLAGS) \
		-DHOST_BUILD \
		-T linker/link.ld \
		-I $(RISCV)/riscv32-unknown-elf/include \
		$(INC_FOLDERS_GCC) \
		-static \
		$(LIB_CRT) \
		$^ $(LIB_RUNTIME) \
		$(LIB_BASE) \
		$(LIB_DRIVERS) \
		-L $(RISCV)/riscv32-unknown-elf/lib \
		-lc -lm -lgcc -flto -ffunction-sections -fdata-sections -specs=nano.specs

applications/PQClean-ATHOS/test/crypto_kem/testvectors-$(SCHEME)_clean.elf: applications/PQClean-ATHOS/test/crypto_kem/testvectors.c 
	$(RISCV_EXE_PREFIX)gcc -march=rv32imc -o $@ -w -O2 -g -nostdlib \
		$(CUSTOM_GCC_FLAGS) \
		-DHOST_BUILD \
		-DPQCLEAN_NAMESPACE=PQCLEAN_$(SCHEME_UPPERCASE)_CLEAN \
		-T linker/link.ld \
		-I $(RISCV)/riscv32-unknown-elf/include \
		$(INC_FOLDERS_GCC) \
		-static \
		$(LIB_CRT) \
		$^ $(LIB_RUNTIME) \
		$(LIB_BASE) \
		$(LIB_DRIVERS) \
		-L $(RISCV)/riscv32-unknown-elf/lib \
		-lc -lm -lgcc -flto -ffunction-sections -fdata-sections -specs=nano.specs

applications/PQClean-ORIGINAL/test/crypto_kem/testvectors-$(SCHEME)_clean.elf: applications/PQClean-ORIGINAL/test/crypto_kem/testvectors.c 
	$(RISCV_EXE_PREFIX)gcc -march=rv32imc -o $@ -w -O2 -g -nostdlib \
		$(CUSTOM_GCC_FLAGS) \
		-DHOST_BUILD \
		-DPQCLEAN_NAMESPACE=PQCLEAN_$(SCHEME_UPPERCASE)_CLEAN \
		-T linker/link.ld \
		-I $(RISCV)/riscv32-unknown-elf/include \
		$(INC_FOLDERS_GCC) \
		-static \
		$(LIB_CRT) \
		$^ $(LIB_RUNTIME) \
		$(LIB_BASE) \
		$(LIB_DRIVERS) \
		-L $(RISCV)/riscv32-unknown-elf/lib \
		-lc -lm -lgcc -flto -ffunction-sections -fdata-sections -specs=nano.specs


applications/PQClean-$(VERSION)/test/crypto_sign/testvectors-$(SCHEME)_clean.elf: applications/PQClean-$(VERSION)/test/crypto_sign/testvectors.c 
	$(RISCV_EXE_PREFIX)gcc -march=rv32imc -o $@ -w -O2 -g -nostdlib \
		$(CUSTOM_GCC_FLAGS) \
		-DHOST_BUILD \
		-DPQCLEAN_NAMESPACE=PQCLEAN_$(SCHEME_UPPERCASE)_CLEAN \
		-T linker/link.ld \
		-I $(RISCV)/riscv32-unknown-elf/include \
		$(INC_FOLDERS_GCC) \
		-static \
		$(LIB_CRT) \
		$^ $(LIB_RUNTIME) \
		$(LIB_BASE) \
		$(LIB_DRIVERS) \
		-L $(RISCV)/riscv32-unknown-elf/lib \
		-lc -lm -lgcc -flto -ffunction-sections -fdata-sections -specs=nano.specs




clean:
	rm -rf applications/*/*.elf \
	rm -rf applications/*/*.hex \
	rm -rf applications/*/*.dis \
	rm -rf applications/*/*.map \
	rm -rf applications/*/*.dump \
	rm -rf applications/PQClean-ORIGINAL/test/crypto_kem/*.elf \
	rm -rf applications/PQClean-ORIGINAL/test/crypto_kem/*.hex \
	rm -rf applications/PQClean-ORIGINAL/test/crypto_sign/*.elf \
	rm -rf applications/PQClean-ORIGINAL/test/crypto_sign/*.hex \
	rm -rf applications/PQClean-ORIGINAL/test/test_common/*.elf \
	rm -rf applications/PQClean-ORIGINAL/test/test_common/*.hex \
	rm -rf applications/PQClean-ATHOS/test/crypto_kem/*.elf \
	rm -rf applications/PQClean-ATHOS/test/crypto_kem/*.hex \
	rm -rf applications/PQClean-ATHOS/test/crypto_sign/*.elf \
	rm -rf applications/PQClean-ATHOS/test/crypto_sign/*.hex \
	rm -rf applications/PQClean-ATHOS/test/test_common/*.elf \
	rm -rf applications/PQClean-ATHOS/test/test_common/*.hex \
	rm -rf x_heep_applications/*/*.elf \
	rm -rf x_heep_applications/*/*.hex \
	rm -rf x_heep_applications/*/*.dis \
	rm -rf x_heep_applications/*/*.map \
	rm -rf x_heep_applications/*/*.dump \
	rm -rf applications/athos_ip_test/KECCAK/*.elf \
	rm -rf applications/athos_ip_test/KECCAK/*.hex \
	rm -rf applications/athos_ip_test/NTT/*.elf \
	rm -rf applications/athos_ip_test/NTT/*.hex \
	rm -rf applications/athos_ip_test/INTT/*.elf \
	rm -rf applications/athos_ip_test/TRNG/*.hex \
	rm -rf applications/athos_ip_test/TRNG/*.elf \
	rm -rf applications/athos_ip_test/COMBO/*.hex \
	rm -rf applications/athos_ip_test/COMBO/*.elf
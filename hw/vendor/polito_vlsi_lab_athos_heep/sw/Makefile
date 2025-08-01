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
RISCV                      ?= ~/.riscv
RISCV_EXE_PREFIX           = $(RISCV)/bin/riscv32-unknown-elf-

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
#LIB_DRIVERS                += $(wildcard external/lib/drivers/keccak/*.c)
INC_FOLDERS                = $(sort $(dir $(wildcard device/target/$(TARGET)/)))
INC_FOLDERS                += $(sort $(dir $(wildcard device/lib/drivers/*/)))
INC_FOLDERS                += $(sort $(dir $(wildcard device/lib/base/)))
INC_FOLDERS                += $(sort $(dir $(wildcard device/lib/runtime/)))
INC_FOLDERS                += $(sort $(dir $(wildcard device/lib/crt/)))
INC_FOLDERS                += $(sort $(dir $(wildcard external/lib/drivers/*/)))
INC_FOLDERS                += $(sort $(dir $(wildcard external/lib/runtime/)))

#INC_FOLDERS                += applications/keccak_test

#INC_FOLDERS                += applications/shatest
#LIB_DRIVERS += $(filter-out applications/shatest/shatest.c,$(wildcard applications/shatest/*.c))

#COMMON folders
INC_FOLDERS                += applications/PQClean/common
LIB_DRIVERS                += $(wildcard applications/PQClean/common/*.c)
#KEM folders
LIB_DRIVERS                += $(wildcard applications/PQClean/crypto_kem/$(SCHEME)/clean/*.c)
INC_FOLDERS                += $(sort $(dir $(wildcard applications/PQClean/crypto_kem/$(SCHEME)/clean/*)))
#SIGN folders
LIB_DRIVERS                += $(wildcard applications/PQClean/crypto_sign/$(SCHEME)/clean/*.c)
INC_FOLDERS                += $(sort $(dir $(wildcard applications/PQClean/crypto_sign/$(SCHEME)/clean/*)))

#INC_FOLDERS                += $(sort $(dir $(wildcard applications/PQClean/test/common/*)))

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


# Running custom programs:
# This is an example for running a Hello World in the testbench
# We link with our custom crt0.s and syscalls.c against newlib so that we can
# use the c standard library
applications/hello_world/main.elf: applications/hello_world/main.c
	$(RISCV_EXE_PREFIX)gcc -march=rv32imc -o $@ -w -O2 -g -nostdlib \
		$(CUSTOM_GCC_FLAGS) \
		-DHOST_BUILD \
		-T linker/link_flash_exec.ld \
		-I $(RISCV)/riscv32-unknown-elf/include \
		$(INC_FOLDERS_GCC) \
		-static \
		$(LIB_CRT_FLASH_EXEC) \
		$^ $(LIB_RUNTIME) \
		$(LIB_BASE) \
		$(LIB_DRIVERS) \
		-Wl,-Map=applications/hello_world/hello_world.map \
		-L $(RISCV)/riscv32-unknown-elf/lib \
		-lc -lm -lgcc -flto -ffunction-sections -fdata-sections -specs=nano.specs

applications/PQClean/test/crypto_kem/test_hex.elf: applications/PQClean/test/crypto_kem/test_hex.c 
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

applications/xiftest/xiftest.elf: applications/xiftest/xiftest.c 
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

applications/isatest/load64.elf: applications/isatest/load64.c 
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

applications/isatest/isa-test.elf: applications/isatest/isa-test.c 
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

applications/keccak_test/main.elf: applications/keccak_test/main.c 
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

applications/PQClean/test/test_common/fips202.elf: applications/PQClean/test/test_common/fips202.c 
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

applications/shatest/shatest.elf: applications/shatest/shatest.c 
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

applications/isatest/div8.elf: applications/isatest/div8.c 
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


applications/PQClean/test/crypto_kem/testvectors-$(SCHEME)_clean.elf: applications/PQClean/test/crypto_kem/testvectors.c 
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

applications/PQClean/test/crypto_sign/testvectors-$(SCHEME)_clean.elf: applications/PQClean/test/crypto_sign/testvectors.c 
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
	rm -rf applications/PQClean/test/crypto_kem/*.elf \
	rm -rf applications/PQClean/test/crypto_kem/*.hex \
	rm -rf applications/PQClean/test/crypto_sign/*.elf \
	rm -rf applications/PQClean/test/crypto_sign/*.hex \
	rm -rf applications/PQClean/test/test_common/*.elf \
	rm -rf applications/PQClean/test/test_common/*.hex \
	rm -rf x_heep_applications/*/*.elf \
	rm -rf x_heep_applications/*/*.hex \
	rm -rf x_heep_applications/*/*.dis \
	rm -rf x_heep_applications/*/*.map \
	rm -rf x_heep_applications/*/*.dump 

#!/bin/bash

echo "athos_x_heep KEM-KYBER512 simulation"
echo "Insert if you want ORIGINAL or ATHOS code:"
read code

commands_512=(
    "make clean-app"
    "make app-testvectors-kem-${code}-kyber512_clean ORIGINAL=${code} SCHEME=kyber512 PROJECT=kyber512"
    "./../../../../software/x-heep/riscv-centos/bin/riscv32-unknown-elf-size ./sw/applications/PQClean-${code}/test/crypto_kem/testvectors-kyber512_clean.elf"
)


# Loop through and execute the commands
for cmd in "${commands_512[@]}"; do
    echo "Executing: $cmd"
    eval $cmd
    if [ $? -ne 0 ]; then
        echo "Error: Command '$cmd' failed."
    fi
done

echo "All commands from the Makefile have been executed successfully."

read -p "Press Enter to continue with the last command: 'make run-testvector-kem-${code}-kyber512-clean-questasim SCHEME=kyber512'"
make run-testvector-kem-${code}-kyber512-clean-questasim SCHEME=kyber512 ORIGINAL=${code}

if [ $? -ne 0 ]; then
    echo "Error: Command 'make run-testvector-kem-${code}-kyber512-clean-questasim SCHEME=kyber512' failed."
fi

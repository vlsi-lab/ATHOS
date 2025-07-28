#!/bin/bash

echo "athos_x_heep KEM-KYBER768 simulation"
echo "Insert if you want ORIGINAL or ATHOS code:"
read code

commands_768=(
    "make clean-app"
    "make app-testvectors-kem-${code}-kyber768_clean ORIGINAL=${code} SCHEME=kyber768 PROJECT=kyber768"
    "./../../../../software/x-heep/riscv-centos/bin/riscv32-unknown-elf-size ./sw/applications/PQClean-${code}/test/crypto_kem/testvectors-kyber768_clean.elf"
)


# Loop through and execute the commands
for cmd in "${commands_768[@]}"; do
    echo "Executing: $cmd"
    eval $cmd
    if [ $? -ne 0 ]; then
        echo "Error: Command '$cmd' failed."
    fi
done

echo "All commands from the Makefile have been executed successfully."

read -p "Press Enter to continue with the last command: 'make run-testvector-kem-${code}-kyber768-clean-questasim SCHEME=kyber768'"
make run-testvector-kem-${code}-kyber768-clean-questasim SCHEME=kyber768 ORIGINAL=${code}

if [ $? -ne 0 ]; then
    echo "Error: Command 'make run-testvector-kem-${code}-kyber768-clean-questasim SCHEME=kyber768' failed."
fi

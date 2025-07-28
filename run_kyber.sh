#!/bin/bash
echo "athos_x_heep KEM-KYBER simulation"


commands_512=(
"make clean-app"
"make app-testvectors-kem-kyber512_clean SCHEME=kyber512 PROJECT=kyber512"
"./../../../../../../software/x-heep/riscv-centos/bin/riscv32-unknown-elf-size ./sw/applications/PQClean/test/crypto_kem/testvectors-kyber512_clean.elf"
)

commands_768=(
"make clean-app"
"make app-testvectors-kem-kyber768_clean SCHEME=kyber768 PROJECT=kyber768"
"./../../../../../software/x-heep/riscv-centos/bin/riscv32-unknown-elf-size ./sw/applications/PQClean/test/crypto_kem/testvectors-kyber768_clean.elf"
)


commands_1024=(
"make clean-app"
"make app-testvectors-kem-kyber1024_clean SCHEME=kyber1024 PROJECT=kyber1024"
"./../../../../../software/x-heep/riscv-centos/bin/riscv32-unknown-elf-size ./sw/applications/PQClean/test/crypto_kem/testvectors-kyber1024_clean.elf"
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


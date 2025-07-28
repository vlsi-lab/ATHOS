#!/bin/bash

echo "athos_x_heep KEM simulation"

commands=(
"make app-testvectors-kem-ORIGINAL-kyber512_clean ORIGINAL=ORIGINAL SCHEME=kyber512 PROJECT=kyber512"
"make app-testvectors-kem-ORIGINAL-kyber768_clean ORIGINAL=ORIGINAL SCHEME=kyber768 PROJECT=kyber768"
"make app-testvectors-kem-ORIGINAL-kyber1024_clean ORIGINAL=ORIGINAL SCHEME=kyber1024 PROJECT=kyber1024"
)

commands1=(
"make app-testvectors-kem-ATHOS-hqc-128_clean ORIGINAL=ATHOS SCHEME=hqc-128 PROJECT=hqc-128"
"make app-testvectors-kem-ATHOS-hqc-192_clean ORIGINAL=ATHOS SCHEME=hqc-192 PROJECT=hqc-192"
)

:<<COMMENT
"make app-testvectors-kem-ORIGINAL-hqc-256_clean ORIGINAL=ORIGINAL SCHEME=hqc-256 PROJECT=hqc-256"
"make app-testvectors-kem-ORIGINAL-mceliece348864_clean ORIGINAL=ORIGINAL SCHEME=mceliece348864 PROJECT=mceliece348864"
"make app-testvectors-kem-ORIGINAL-mceliece348864f_clean ORIGINAL=ORIGINAL SCHEME=mceliece348864f PROJECT=mceliece348864f"
"make app-testvectors-kem-ORIGINAL-mceliece460896_clean ORIGINAL=ORIGINAL SCHEME=mceliece460896 PROJECT=mceliece460896"
"make app-testvectors-kem-ORIGINAL-mceliece460896f_clean ORIGINAL=ORIGINAL SCHEME=mceliece460896f PROJECT=mceliece460896f"
"make app-testvectors-kem-ORIGINAL-mceliece6688128_clean ORIGINAL=ORIGINAL SCHEME=mceliece6688128 PROJECT=mceliece6688128"
"make app-testvectors-kem-ORIGINAL-mceliece6688128f_clean ORIGINAL=ORIGINAL SCHEME=mceliece6688128f PROJECT=mceliece6688128f"
"make app-testvectors-kem-ORIGINAL-mceliece6960119_clean ORIGINAL=ORIGINAL SCHEME=mceliece6960119 PROJECT=mceliece6960119"
"make app-testvectors-kem-ORIGINAL-mceliece6960119f_clean ORIGINAL=ORIGINAL SCHEME=mceliece6960119f PROJECT=mceliece6960119f"
"make app-testvectors-kem-ORIGINAL-mceliece8192128_clean ORIGINAL=ORIGINAL SCHEME=mceliece8192128 PROJECT=mceliece8192128"
"make app-testvectors-kem-ORIGINAL-mceliece8192128f_clean ORIGINAL=ORIGINAL SCHEME=mceliece8192128f PROJECT=mceliece8192128f"
)
COMMENT

commands2=(
"make run-testvector-kem-ORIGINAL-kyber512-clean-questasim SCHEME=kyber512 ORIGINAL=ORIGINAL"
"make run-testvector-kem-ORIGINAL-kyber768-clean-questasim SCHEME=kyber768 ORIGINAL=ORIGINAL"
"make run-testvector-kem-ORIGINAL-kyber1024-clean-questasim SCHEME=kyber1024 ORIGINAL=ORIGINAL"
)

commands3=(
"make run-testvector-kem-ATHOS-hqc-128-clean-questasim SCHEME=hqc-128 ORIGINAL=ATHOS"
"make run-testvector-kem-ORIGINAL-hqc-192-clean-questasim SCHEME=hqc-192 ORIGINAL=ORIGINAL"
)
:<<COMMENT
"make run-testvector-kem-ORIGINAL-hqc-256-clean-questasim SCHEME=hqc-256 ORIGINAL=ORIGINAL"
"make run-testvector-kem-ORIGINAL-kyber512-clean-questasim SCHEME=kyber512 ORIGINAL=ORIGINAL"
"make run-testvector-kem-ORIGINAL-mceliece348864-clean-questasim SCHEME=mceliece348864 ORIGINAL=ORIGINAL"
"make run-testvector-kem-ORIGINAL-mceliece348864f-clean-questasim SCHEME=mceliece348864f ORIGINAL=ORIGINAL"
"make run-testvector-kem-ORIGINAL-mceliece460896-clean-questasim SCHEME=mceliece460896 ORIGINAL=ORIGINAL"
"make run-testvector-kem-ORIGINAL-mceliece460896f_clean-questasim SCHEME=mceliece460896f ORIGINAL=ORIGINAL"
"make run-testvector-kem-ORIGINAL-mceliece6688128-clean-questasim SCHEME=mceliece6688128 ORIGINAL=ORIGINAL"
"make run-testvector-kem-ORIGINAL-mceliece6688128f-clean-questasim SCHEME=mceliece6688128f ORIGINAL=ORIGINAL"
"make run-testvector-kem-ORIGINAL-mceliece6960119-clean-questasim SCHEME=mceliece6960119 ORIGINAL=ORIGINAL"
"make run-testvector-kem-ORIGINAL-mceliece6960119f-clean-questasim SCHEME=mceliece6960119f ORIGINAL=ORIGINAL"
"make run-testvector-kem-ORIGINAL-mceliece8192128-clean-questasim SCHEME=mceliece8192128 ORIGINAL=ORIGINAL"
"make run-testvector-kem-ORIGINAL-mceliece8192128f-clean-questasim SCHEME=mceliece8192128f ORIGINAL=ORIGINAL"
)
COMMENT

# Loop through and execute the commands
for cmd in "${commands3[@]}"; do
    echo "Executing: $cmd"
    eval $cmd
    if [ $? -ne 0 ]; then
        echo "Error: Command '$cmd' failed."
    fi
done

echo "All commands from the Makefile have been executed successfully."


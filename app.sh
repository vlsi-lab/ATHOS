#ISA EXTENTION WITH ATHOS
#montgomery
make app-montg ISA_TYPE=montg
make run-montg-questasim ISA_TYPE=montg
#barrett
make app-barrett ISA_TYPE=barrett
make run-barrett-questasim ISA_TYPE=barrett
#gf_square
make app-gf_square ISA_TYPE=gf_square
make run-gf_square-questasim ISA_TYPE=gf_square
#trailing_zero
make app-trailing_zero ISA_TYPE=trailing_zero
make run-trailing_zero-questasim ISA_TYPE=trailing_zero
#
make app-polyvec_compress ISA_TYPE=polyvec_compress
make run-polyvec_compress-questasim ISA_TYPE=polyvec_compress
#
make app-polyvec_decompress ISA_TYPE=polyvec_decompress
make run-polyvec_decompress-questasim ISA_TYPE=polyvec_decompress
#
make app-rej_uniform ISA_TYPE=rej_uniform
make run-rej_uniform-questasim ISA_TYPE=rej_uniform


#EXTERNAL IP WITH ATHOS_IP
make app-KECCAK IP_TYPE=KECCAK
make run-KECCAK-questasim IP_TYPE=KECCAK

make app-NTT IP_TYPE=NTT
make run-NTT-questasim IP_TYPE=NTT

make app-TRNG IP_TYPE=TRNG
make run-TRNG-questasim IP_TYPE=TRNG

make app-COMBO IP_TYPE=COMBO
make run-COMBO-questasim IP_TYPE=COMBO

make app-INTT IP_TYPE=INTT
make run-INTT-questasim IP_TYPE=INTT


#hqc-128

make app-testvectors-kem-hqc-128_clean_keygen SCHEME=hqc-128 KEM=keygen
make app-testvectors-kem-hqc-128_clean_enc SCHEME=hqc-128 KEM=enc
make app-testvectors-kem-hqc-128_clean_dec SCHEME=hqc-128 KEM=dec

make run-testvectors-kem-hqc-128-clean_keygen-questasim SCHEME=hqc-128 KEM=keygen
make run-testvectors-kem-hqc-128-clean_enc-questasim SCHEME=hqc-128 KEM=enc
make run-testvectors-kem-hqc-128-clean_dec-questasim SCHEME=hqc-128 KEM=dec
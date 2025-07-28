# ATHOS


Accelerated Trusted Hardware for Optimal Security (ATHOS) is introduced as a robust solution for enhancing cryptographic operations, specifically designed for the RISC-V architecture. In addressing the challenges of implementing cryptographic algorithms, ATHOS leverages a unique combination of both tightly and loosely coupled accelerators. This hybrid approach aims to optimize security while maintaining flexibility for various cryptographic tasks.


## Getting started

Once you have cloned the repository:
```
make vendor-update
make esl_epfl_x_heep-sync
make questasim-sim
```

## IP-tests
The repository includes different applications to test individual IPs and their integration in various configurations.

### Keccak
To build and run the Keccak application:
```
make app-KECCAK IP_TYPE=KECCAK 
make run-KECCAK-questasim IP_TYPE=KECCAK

```

### NTT
To build and run the NTT (Number Theoretic Transform) application:
```
make app-NTT IP_TYPE=NTT
make run-NTT-questasim IP_TYPE=NTT

```


### INTT
To build and run the INTT (Inverse Number Theoretic Transform) application:
```
make app-INTT IP_TYPE=INTT
make run-INTT-questasim IP_TYPE=INTT
```


### COMBO
To test combinations of multiple IPs (e.g., Keccak + NTT/INTT), use the COMBO app:
```
make app-COMBO IP_TYPE=COMBO
make run-COMBO-questasim IP_TYPE=COMBO
```
There are 5 predefined configurations. To select the desired test, rename the corresponding main#.c to main.c before building. The available combinations are:
- main1.c – Keccak called 2 times
- main2.c – Keccak followed by INTT
- main3.c – Keccak followed by NTT
- main4.c – NTT followed by Keccak
- main5.c – INTT followed by Keccak

These combinations are intended to ensure correct functionality and interoperability of the IPs when used consecutively, as required in ML-KEM workloads.


## Kyber
To test the different Kyber level of security.

```
make app-testvectors-kem-ATHOS-kyber512_clean SCHEME=kyber512 VERSION=ATHOS
make run-testvector-kem-ATHOS-kyber512-questasim SCHEME=kyber512
```

```
make app-testvectors-kem-ATHOS-kyber768_clean SCHEME=kyber768 VERSION=ATHOS
make run-testvector-kem-ATHOS-kyber768-questasim SCHEME=kyber768
```

```
make app-testvectors-kem-ATHOS-kyber1024_clean SCHEME=kyber1024 VERSION=ATHOS
make run-testvector-kem-ATHOS-kyber1024-questasim SCHEME=kyber1024
```
KeccakF_RoundConstants = [
    0x0000000000000001, 0x0000000000008082,
    0x800000000000808a, 0x8000000080008000,
    0x000000000000808b, 0x0000000080000001,
    0x8000000080008081, 0x8000000000008009,
    0x000000000000008a, 0x0000000000000088,
    0x0000000080008009, 0x000000008000000a,
    0x000000008000808b, 0x800000000000008b,
    0x8000000000008089, 0x8000000000008003,
    0x8000000000008002, 0x8000000000000080,
    0x000000000000800a, 0x800000008000000a,
    0x8000000080008081, 0x8000000000008080,
    0x0000000080000001, 0x8000000080008008
]

NROUNDS = 24

def rotate_left(value, offset):
    return ((value << offset) | (value >> (64 - offset))) & 0xFFFFFFFFFFFFFFFF

def keccakf(state):
    for round in range(0, NROUNDS, 2):
        # prepareTheta
        BC = [state[j] ^ state[j + 5] ^ state[j + 10] ^ state[j + 15] ^ state[j + 20] for j in range(5)]

        # thetaRhoPiChiIotaPrepareTheta(round, A, E)
        D = [BC[(j + 4) % 5] ^ rotate_left(BC[(j + 1) % 5], 1) for j in range(5)]
        for j in range(5):
            for i in range(5):
                state[i * 5 + j] ^= D[j]

        E = [0] * 25
        for i in range(5):
            for j in range(5):
                E[j * 5 + (2 * i + 3 * j) % 5] = rotate_left(state[i * 5 + j], (i + 1) * (j + 1))

        for i in range(5):
            for j in range(5):
                state[i * 5 + j] = E[i * 5 + j] ^ KeccakF_RoundConstants[round]

        # prepareTheta
        BC = [state[j] ^ state[j + 5] ^ state[j + 10] ^ state[j + 15] ^ state[j + 20] for j in range(5)]

        # thetaRhoPiChiIotaPrepareTheta(round+1, E, A)
        D = [BC[(j + 4) % 5] ^ rotate_left(BC[(j + 1) % 5], 1) for j in range(5)]
        for j in range(5):
            for i in range(5):
                state[i * 5 + j] ^= D[j]

        A = [0] * 25
        for i in range(5):
            for j in range(5):
                A[j * 5 + (2 * i + 3 * j) % 5] = rotate_left(state[i * 5 + j], (i + 1) * (j + 1))

        for i in range(5):
            for j in range(5):
                state[i * 5 + j] = A[i * 5 + j]
                
                
# Example usage:
# Initialize state with your data (64-bit integers)
state = [
    0xEC4AFF517369C667, 0x00000010ABBACD29, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,
    0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,
    0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,
    0x8000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000,
    0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000 ]


keccakf(state)
print([hex(i) for i in state])
output = [int(i, 16) for i in [hex(x) for x in state]]
formatted_output = [f'{x:016x}' for x in output]
print(formatted_output)
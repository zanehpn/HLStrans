// Converted from chacha20.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: chacha20.cpp ----
#include <stdint.h>

#define ROUNDS 20
#define ARRAY_SIZE 1024

void chacha20_block(uint32_t output[16], const uint32_t input[16]) {
    uint32_t x[16];
    for (int i = 0; i < 16; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=16
        x[i] = input[i];
    }

    for (int i = 0; i < ROUNDS; i += 2) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
        // Column round
        x[0] += x[4]; x[12] ^= x[0]; x[12] = (x[12] << 16) | (x[12] >> 16);
        x[8] += x[12]; x[4] ^= x[8]; x[4] = (x[4] << 12) | (x[4] >> 20);
        x[0] += x[4]; x[12] ^= x[0]; x[12] = (x[12] << 8) | (x[12] >> 24);
        x[8] += x[12]; x[4] ^= x[8]; x[4] = (x[4] << 7) | (x[4] >> 25);

        x[1] += x[5]; x[13] ^= x[1]; x[13] = (x[13] << 16) | (x[13] >> 16);
        x[9] += x[13]; x[5] ^= x[9]; x[5] = (x[5] << 12) | (x[5] >> 20);
        x[1] += x[5]; x[13] ^= x[1]; x[13] = (x[13] << 8) | (x[13] >> 24);
        x[9] += x[13]; x[5] ^= x[9]; x[5] = (x[5] << 7) | (x[5] >> 25);

        x[2] += x[6]; x[14] ^= x[2]; x[14] = (x[14] << 16) | (x[14] >> 16);
        x[10] += x[14]; x[6] ^= x[10]; x[6] = (x[6] << 12) | (x[6] >> 20);
        x[2] += x[6]; x[14] ^= x[2]; x[14] = (x[14] << 8) | (x[14] >> 24);
        x[10] += x[14]; x[6] ^= x[10]; x[6] = (x[6] << 7) | (x[6] >> 25);

        x[3] += x[7]; x[15] ^= x[3]; x[15] = (x[15] << 16) | (x[15] >> 16);
        x[11] += x[15]; x[7] ^= x[11]; x[7] = (x[7] << 12) | (x[7] >> 20);
        x[3] += x[7]; x[15] ^= x[3]; x[15] = (x[15] << 8) | (x[15] >> 24);
        x[11] += x[15]; x[7] ^= x[11]; x[7] = (x[7] << 7) | (x[7] >> 25);

        // Diagonal round
        x[0] += x[5]; x[15] ^= x[0]; x[15] = (x[15] << 16) | (x[15] >> 16);
        x[10] += x[15]; x[5] ^= x[10]; x[5] = (x[5] << 12) | (x[5] >> 20);
        x[0] += x[5]; x[15] ^= x[0]; x[15] = (x[15] << 8) | (x[15] >> 24);
        x[10] += x[15]; x[5] ^= x[10]; x[5] = (x[5] << 7) | (x[5] >> 25);

        x[1] += x[6]; x[12] ^= x[1]; x[12] = (x[12] << 16) | (x[12] >> 16);
        x[11] += x[12]; x[6] ^= x[11]; x[6] = (x[6] << 12) | (x[6] >> 20);
        x[1] += x[6]; x[12] ^= x[1]; x[12] = (x[12] << 8) | (x[12] >> 24);
        x[11] += x[12]; x[6] ^= x[11]; x[6] = (x[6] << 7) | (x[6] >> 25);

        x[2] += x[7]; x[13] ^= x[2]; x[13] = (x[13] << 16) | (x[13] >> 16);
        x[8] += x[13]; x[7] ^= x[8]; x[7] = (x[7] << 12) | (x[7] >> 20);
        x[2] += x[7]; x[13] ^= x[2]; x[13] = (x[13] << 8) | (x[13] >> 24);
        x[8] += x[13]; x[7] ^= x[8]; x[7] = (x[7] << 7) | (x[7] >> 25);

        x[3] += x[4]; x[14] ^= x[3]; x[14] = (x[14] << 16) | (x[14] >> 16);
        x[9] += x[14]; x[4] ^= x[9]; x[4] = (x[4] << 12) | (x[4] >> 20);
        x[3] += x[4]; x[14] ^= x[3]; x[14] = (x[14] << 8) | (x[14] >> 24);
        x[9] += x[14]; x[4] ^= x[9]; x[4] = (x[4] << 7) | (x[4] >> 25);
    }

    for (int i = 0; i < 16; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=2
        output[i] = x[i] + input[i];
    }
}

void chacha20(uint32_t output[ARRAY_SIZE], const uint32_t input[ARRAY_SIZE], const uint32_t key[8], const uint32_t nonce[3]) {
#pragma HLS ARRAY_PARTITION variable=nonce type=cyclic dim=1 factor=8
#pragma HLS ARRAY_PARTITION variable=key type=cyclic dim=1 factor=8
#pragma HLS ARRAY_PARTITION variable=input type=cyclic dim=1 factor=2
#pragma HLS ARRAY_PARTITION variable=output type=cyclic dim=1 factor=1
    uint32_t block[16];
    uint32_t counter = 1;

    for (int i = 0; i < ARRAY_SIZE; i += 16) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
        // Setup the block
        block[0] = 0x61707865;
        block[1] = 0x3320646e;
        block[2] = 0x79622d32;
        block[3] = 0x6b206574;

        for (int j = 0; j < 8; j++) {
#pragma HLS PIPELINE 
#pragma HLS UNROLL factor=16
            block[4 + j] = key[j];
        }

        block[12] = counter++;
        block[13] = nonce[0];
        block[14] = nonce[1];
        block[15] = nonce[2];

        uint32_t keystream[16];
        chacha20_block(keystream, block);

        for (int j = 0; j < 16; j++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=4
            output[i + j] = input[i + j] ^ keystream[j];
        }
    }
}

// Top function name: chacha20

// Converted from AES_Encrypt.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: AES_Encrypt.cpp ----
#include <stdint.h>

#define AES_BLOCK_SIZE 16
#define AES_KEY_SIZE 16
#define DATA_SIZE (1 << 10)

void SubBytes(uint8_t state[AES_BLOCK_SIZE]) {
    static const uint8_t sbox[256] = {
        // S-box values...
    };
    for (int i = 0; i < AES_BLOCK_SIZE; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=16
        state[i] = sbox[state[i]];
    }
}

void ShiftRows(uint8_t state[AES_BLOCK_SIZE]) {
    uint8_t temp[AES_BLOCK_SIZE];
    for (int i = 0; i < AES_BLOCK_SIZE; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=4
        temp[i] = state[i];
    }
    for (int i = 0; i < 4; i++) {
#pragma HLS PIPELINE 
#pragma HLS UNROLL factor=4
        for (int j = 0; j < 4; j++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=4
            state[i * 4 + j] = temp[i * 4 + ((j + i) % 4)];
        }
    }
}

void MixColumns(uint8_t state[AES_BLOCK_SIZE]) {
    uint8_t temp[AES_BLOCK_SIZE];
    for (int i = 0; i < 4; i++) {
#pragma HLS PIPELINE 
#pragma HLS UNROLL factor=16
        temp[i * 4 + 0] = (uint8_t)(0x02 * state[i * 4 + 0] ^ 0x03 * state[i * 4 + 1] ^ state[i * 4 + 2] ^ state[i * 4 + 3]);
        temp[i * 4 + 1] = (uint8_t)(state[i * 4 + 0] ^ 0x02 * state[i * 4 + 1] ^ 0x03 * state[i * 4 + 2] ^ state[i * 4 + 3]);
        temp[i * 4 + 2] = (uint8_t)(state[i * 4 + 0] ^ state[i * 4 + 1] ^ 0x02 * state[i * 4 + 2] ^ 0x03 * state[i * 4 + 3]);
        temp[i * 4 + 3] = (uint8_t)(0x03 * state[i * 4 + 0] ^ state[i * 4 + 1] ^ state[i * 4 + 2] ^ 0x02 * state[i * 4 + 3]);
    }
    for (int i = 0; i < AES_BLOCK_SIZE; i++) {
#pragma HLS PIPELINE 
#pragma HLS UNROLL factor=1
        state[i] = temp[i];
    }
}

void AddRoundKey(uint8_t state[AES_BLOCK_SIZE], const uint8_t roundKey[AES_BLOCK_SIZE]) {
    for (int i = 0; i < AES_BLOCK_SIZE; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=2
        state[i] ^= roundKey[i];
    }
}

void AES_Encrypt_Block(uint8_t input[AES_BLOCK_SIZE], const uint8_t key[AES_KEY_SIZE], uint8_t output[AES_BLOCK_SIZE]) {
    uint8_t state[AES_BLOCK_SIZE];
    uint8_t roundKey[AES_KEY_SIZE];

    for (int i = 0; i < AES_BLOCK_SIZE; i++) {
#pragma HLS PIPELINE 
#pragma HLS UNROLL factor=1
        state[i] = input[i];
        roundKey[i] = key[i];
    }

    AddRoundKey(state, roundKey);

    for (int round = 1; round < 10; round++) {
#pragma HLS PIPELINE 
#pragma HLS UNROLL factor=2
        SubBytes(state);
        ShiftRows(state);
        MixColumns(state);
        AddRoundKey(state, roundKey);
    }

    SubBytes(state);
    ShiftRows(state);
    AddRoundKey(state, roundKey);

    for (int i = 0; i < AES_BLOCK_SIZE; i++) {
#pragma HLS PIPELINE 
#pragma HLS UNROLL factor=8
        output[i] = state[i];
    }
}

void AES_Encrypt(uint8_t input[DATA_SIZE], const uint8_t key[AES_KEY_SIZE], uint8_t output[DATA_SIZE]) {
#pragma HLS ARRAY_PARTITION variable=output type=cyclic dim=1 factor=4
#pragma HLS ARRAY_PARTITION variable=key type=cyclic dim=1 factor=16
#pragma HLS ARRAY_PARTITION variable=input type=cyclic dim=1 factor=1
    for (int i = 0; i < DATA_SIZE; i += AES_BLOCK_SIZE) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
        AES_Encrypt_Block(&input[i], key, &output[i]);
    }
}

// Top function name: AES_Encrypt

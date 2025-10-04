// MALLOC_VARIANT
#include <stdint.h>
#include <cstdlib>

#define AES_BLOCK_SIZE 16
#define AES_KEY_SIZE 16
#define DATA_SIZE (1 << 10)

static uint8_t* get_sbox() {
    static uint8_t* s = nullptr;
    if (!s) {
        s = (uint8_t*)std::malloc(256 * sizeof(uint8_t));
        for (int i = 0; i < 256; ++i) s[i] = (uint8_t)i; // identity mapping placeholder
    }
    return s;
}

void SubBytes(uint8_t state[AES_BLOCK_SIZE]) {
    uint8_t* sbox = get_sbox();
    for (int i = 0; i < AES_BLOCK_SIZE; i++) {
        state[i] = sbox[state[i]];
    }
}

void ShiftRows(uint8_t state[AES_BLOCK_SIZE]) {
    uint8_t* temp = (uint8_t*)std::malloc(AES_BLOCK_SIZE * sizeof(uint8_t));
    for (int i = 0; i < AES_BLOCK_SIZE; i++) {
        temp[i] = state[i];
    }
    for (int i = 0; i < 4; i++) {
        for (int j = 0; j < 4; j++) {
            state[i * 4 + j] = temp[i * 4 + ((j + i) % 4)];
        }
    }
    std::free(temp);
}

void MixColumns(uint8_t state[AES_BLOCK_SIZE]) {
    uint8_t* temp = (uint8_t*)std::malloc(AES_BLOCK_SIZE * sizeof(uint8_t));
    for (int i = 0; i < 4; i++) {
        temp[i * 4 + 0] = (uint8_t)(0x02 * state[i * 4 + 0] ^ 0x03 * state[i * 4 + 1] ^ state[i * 4 + 2] ^ state[i * 4 + 3]);
        temp[i * 4 + 1] = (uint8_t)(state[i * 4 + 0] ^ 0x02 * state[i * 4 + 1] ^ 0x03 * state[i * 4 + 2] ^ state[i * 4 + 3]);
        temp[i * 4 + 2] = (uint8_t)(state[i * 4 + 0] ^ state[i * 4 + 1] ^ 0x02 * state[i * 4 + 2] ^ 0x03 * state[i * 4 + 3]);
        temp[i * 4 + 3] = (uint8_t)(0x03 * state[i * 4 + 0] ^ state[i * 4 + 1] ^ state[i * 4 + 2] ^ 0x02 * state[i * 4 + 3]);
    }
    for (int i = 0; i < AES_BLOCK_SIZE; i++) {
        state[i] = temp[i];
    }
    std::free(temp);
}

void AddRoundKey(uint8_t state[AES_BLOCK_SIZE], const uint8_t roundKey[AES_BLOCK_SIZE]) {
    for (int i = 0; i < AES_BLOCK_SIZE; i++) {
        state[i] ^= roundKey[i];
    }
}

void AES_Encrypt_Block(uint8_t input[AES_BLOCK_SIZE], const uint8_t key[AES_KEY_SIZE], uint8_t output[AES_BLOCK_SIZE]) {
    uint8_t* state = (uint8_t*)std::malloc(AES_BLOCK_SIZE * sizeof(uint8_t));
    uint8_t* roundKey = (uint8_t*)std::malloc(AES_KEY_SIZE * sizeof(uint8_t));

    for (int i = 0; i < AES_BLOCK_SIZE; i++) {
        state[i] = input[i];
        roundKey[i] = key[i];
    }

    AddRoundKey(state, roundKey);

    for (int round = 1; round < 10; round++) {
        SubBytes(state);
        ShiftRows(state);
        MixColumns(state);
        AddRoundKey(state, roundKey);
    }

    SubBytes(state);
    ShiftRows(state);
    AddRoundKey(state, roundKey);

    for (int i = 0; i < AES_BLOCK_SIZE; i++) {
        output[i] = state[i];
    }

    std::free(state);
    std::free(roundKey);
}

void AES_Encrypt(uint8_t input[DATA_SIZE], const uint8_t key[AES_KEY_SIZE], uint8_t output[DATA_SIZE]) {
    for (int i = 0; i < DATA_SIZE; i += AES_BLOCK_SIZE) {
        AES_Encrypt_Block(&input[i], key, &output[i]);
    }
}

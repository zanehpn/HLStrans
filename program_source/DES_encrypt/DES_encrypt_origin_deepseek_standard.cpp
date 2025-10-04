// Converted from DES_encrypt_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: DES_encrypt.cpp ----
#include <cstdint>

#define DATA_SIZE 1024

void DES_encrypt(uint64_t plaintext[DATA_SIZE], uint64_t key, uint64_t ciphertext[DATA_SIZE]) {

    uint64_t subkeys[16];
    uint64_t permuted_text;
    uint32_t left, right, temp;

    // Key schedule (simplified)
    for (int i = 0; i < 16; i++) {
        subkeys[i] = key & ((1ULL << 48) - 1ULL); // Simplified key schedule: keep lower 48 bits
    }

    // Initial permutation (simplified)
    for (int i = 0; i < DATA_SIZE; i++) {

        permuted_text = plaintext[i]; // Simplified initial permutation
        left = static_cast<uint32_t>((permuted_text >> 32) & 0xFFFFFFFFULL);
        right = static_cast<uint32_t>(permuted_text & 0xFFFFFFFFULL);

        // 16 rounds of DES
        for (int round = 0; round < 16; round++) {

            temp = right;
            // Simplified Feistel function with 48-bit subkey; only lower 32 bits affect the result
            right = left ^ (right ^ static_cast<uint32_t>(subkeys[round] & 0xFFFFFFFFu));
            left = temp;
        }

        // Final permutation (simplified): concatenate right (high) and left (low)
        ciphertext[i] = (static_cast<uint64_t>(right) << 32) | static_cast<uint64_t>(left);
    }
}

// Top function name: DES_encrypt

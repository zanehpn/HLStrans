// Converted from DES_encrypt.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: DES_encrypt.cpp ----
#include <ap_int.h>

#define DATA_SIZE 1024

void DES_encrypt(ap_uint<64> plaintext[DATA_SIZE], ap_uint<64> key, ap_uint<64> ciphertext[DATA_SIZE]) {
#pragma HLS ARRAY_PARTITION variable=ciphertext type=cyclic dim=1 factor=8
#pragma HLS ARRAY_PARTITION variable=plaintext type=cyclic dim=1 factor=8
    ap_uint<48> subkeys[16];
    ap_uint<64> permuted_text;
    ap_uint<32> left, right, temp;

    // Key schedule (simplified)
    for (int i = 0; i < 16; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=16
        subkeys[i] = key.range(47, 0); // Simplified key schedule
    }

    // Initial permutation (simplified)
    for (int i = 0; i < DATA_SIZE; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=8
        permuted_text = plaintext[i]; // Simplified initial permutation
        left = permuted_text.range(63, 32);
        right = permuted_text.range(31, 0);

        // 16 rounds of DES
        for (int round = 0; round < 16; round++) {
#pragma HLS PIPELINE 
#pragma HLS UNROLL factor=16
            temp = right;
            right = left ^ (right ^ subkeys[round]); // Simplified Feistel function
            left = temp;
        }

        // Final permutation (simplified)
        ciphertext[i] = (ap_uint<64>(right), ap_uint<64>(left)); // Simplified final permutation
    }
}

// Top function name: DES_encrypt

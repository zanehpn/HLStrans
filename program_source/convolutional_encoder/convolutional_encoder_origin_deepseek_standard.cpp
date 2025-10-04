// Converted from convolutional_encoder_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: convolutional_encoder.cpp ----
#include <cstdint>

#define N 1024

static inline uint8_t xor_reduce_bits(uint8_t v) {
    v ^= static_cast<uint8_t>(v >> 1);
    v ^= static_cast<uint8_t>(v >> 2);
    return static_cast<uint8_t>(v & 1u);
}

void convolutional_encoder(uint8_t input[N], uint8_t output[2 * N]) {

    const uint8_t G1 = 0b111u; // Generator polynomial 1
    const uint8_t G2 = 0b101u; // Generator polynomial 2

    uint8_t shift_reg = 0;

    for (int i = 0; i < N; i++) {

        shift_reg = static_cast<uint8_t>(((shift_reg << 1) | (input[i] & 1u)) & 0x07u);

        uint8_t out1 = xor_reduce_bits(static_cast<uint8_t>(shift_reg & G1));
        uint8_t out2 = xor_reduce_bits(static_cast<uint8_t>(shift_reg & G2));

        output[2 * i] = out1;
        output[2 * i + 1] = out2;
    }
}

// Top function name: convolutional_encoder

// Converted from viterbi_decoder_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: viterbi_decoder.cpp ----
#include <cstdint>

#define N 1024
#define K 2

void viterbi_decoder(uint8_t input[N], uint8_t output[N]) {

    uint8_t state[K] = {0};
    uint8_t next_state[K];
    uint8_t path_metric[K] = {0};
    uint8_t next_path_metric[K];
    uint8_t decoded_bits[N];

    for (int i = 0; i < N; i++) {

        for (int j = 0; j < K; j++) {

            next_state[j] = static_cast<uint8_t>(((state[j] << 1) | (input[i] & 1)) & 1);
            next_path_metric[j] = static_cast<uint8_t>((path_metric[j] + (((input[i] & 1) ^ (state[j] & 1)))) & 1);
        }
        for (int j = 0; j < K; j++) {

            state[j] = static_cast<uint8_t>(next_state[j] & 1);
            path_metric[j] = static_cast<uint8_t>(next_path_metric[j] & 1);
        }
        decoded_bits[i] = static_cast<uint8_t>(state[0] & 1);
    }

    for (int i = 0; i < N; i++) {

        output[i] = decoded_bits[i];
    }
}

// Top function name: viterbi_decoder

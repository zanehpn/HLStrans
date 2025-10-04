// Converted from viterbi_decoder_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: viterbi_decoder.cpp ----
#include <ap_int.h>

#define N 1024
#define K 2

void viterbi_decoder(ap_uint<1> input[N], ap_uint<1> output[N]) {

    ap_uint<1> state[K] = {0};
    ap_uint<1> next_state[K];
    ap_uint<1> path_metric[K] = {0};
    ap_uint<1> next_path_metric[K];
    ap_uint<1> decoded_bits[N];

    for (int i = 0; i < N; i++) {

        for (int j = 0; j < K; j++) {

            next_state[j] = (state[j] << 1) | input[i];
            next_path_metric[j] = path_metric[j] + (input[i] ^ state[j]);
        }
        for (int j = 0; j < K; j++) {

            state[j] = next_state[j];
            path_metric[j] = next_path_metric[j];
        }
        decoded_bits[i] = state[0];
    }

    for (int i = 0; i < N; i++) {

        output[i] = decoded_bits[i];
    }
}

// Top function name: viterbi_decoder

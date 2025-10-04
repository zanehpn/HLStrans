// ---- file: audio_mixing.cpp ----
#include <iostream>

#define SIZE 1024

void audio_mixing(float input1[SIZE], float input2[SIZE], float output[SIZE], float volume1, float volume2) {
#pragma HLS ARRAY_PARTITION variable=output type=cyclic dim=1 factor=16
#pragma HLS ARRAY_PARTITION variable=input2 type=cyclic dim=1 factor=1
#pragma HLS ARRAY_PARTITION variable=input1 type=cyclic dim=1 factor=1
    for (int i = 0; i < SIZE; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
        output[i] = (input1[i] * volume1) + (input2[i] * volume2);
    }
}

// Top function name: audio_mixing

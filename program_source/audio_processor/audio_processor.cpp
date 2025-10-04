// Converted from audio_processor.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: audio_processor.cpp ----
#include <cmath>

#define N 1024

void audio_processor(float input[N], float output[N], float gain, float threshold) {
#pragma HLS ARRAY_PARTITION variable=output type=cyclic dim=1 factor=1
#pragma HLS ARRAY_PARTITION variable=input type=cyclic dim=1 factor=1
    for (int i = 0; i < N; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
        // Apply gain
        float amplified = input[i] * gain;

        // Apply threshold
        if (amplified > threshold) {
            output[i] = threshold;
        } else if (amplified < -threshold) {
            output[i] = -threshold;
        } else {
            output[i] = amplified;
        }
    }
}

// Top function name: audio_processor

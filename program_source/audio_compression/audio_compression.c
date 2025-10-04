// ---- file: audio_compression.cpp ----
#include <cmath>
#include <cstdint>

#define ARRAY_SIZE 1024

void audio_compression(float input[ARRAY_SIZE], float output[ARRAY_SIZE]) {
#pragma HLS ARRAY_PARTITION variable=output type=cyclic dim=1 factor=2
#pragma HLS ARRAY_PARTITION variable=input type=cyclic dim=1 factor=1
    const float quantization_step = 0.1f;
    const float dequantization_step = 0.1f;
    const float threshold = 0.5f;

    // Quantization
    for (int i = 0; i < ARRAY_SIZE; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
        if (std::abs(input[i]) > threshold) {
            output[i] = std::round(input[i] / quantization_step) * quantization_step;
        } else {
            output[i] = 0.0f;
        }
    }

    // Dequantization
    for (int i = 0; i < ARRAY_SIZE; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
        if (output[i] != 0.0f) {
            output[i] = output[i] * dequantization_step;
        }
    }
}

// Top function name: audio_compression

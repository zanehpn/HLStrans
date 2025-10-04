// Converted from pitch_detection.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: pitch_detection.cpp ----
#include <cmath>
#include <cstdint>

#define N 1024

void pitch_detection(float signal[N], float pitch[N]) {
#pragma HLS ARRAY_PARTITION variable=pitch type=cyclic dim=1 factor=16
#pragma HLS ARRAY_PARTITION variable=signal type=cyclic dim=1 factor=1
    float autocorrelation[N] = {0};

    // Compute autocorrelation
    for (int lag = 0; lag < N; lag++) {
#pragma HLS PIPELINE 
#pragma HLS UNROLL factor=1
        float sum = 0;
        for (int i = 0; i < N - lag; i++) {
#pragma HLS PIPELINE 
#pragma HLS UNROLL factor=16
            sum += signal[i] * signal[i + lag];
        }
        autocorrelation[lag] = sum;
    }

    // Find the peak in the autocorrelation
    int peak_index = 0;
    float peak_value = 0;
    for (int i = 1; i < N; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
        if (autocorrelation[i] > peak_value) {
            peak_value = autocorrelation[i];
            peak_index = i;
        }
    }

    // Calculate pitch
    for (int i = 0; i < N; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=2
        pitch[i] = (peak_index != 0) ? (44100.0f / peak_index) : 0;
    }
}

// Top function name: pitch_detection

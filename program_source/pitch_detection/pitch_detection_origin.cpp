// Converted from pitch_detection_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: pitch_detection.cpp ----
#include <cmath>
#include <cstdint>

#define N 1024

void pitch_detection(float signal[N], float pitch[N]) {

    float autocorrelation[N] = {0};

    // Compute autocorrelation
    for (int lag = 0; lag < N; lag++) {

        float sum = 0;
        for (int i = 0; i < N - lag; i++) {

            sum += signal[i] * signal[i + lag];
        }
        autocorrelation[lag] = sum;
    }

    // Find the peak in the autocorrelation
    int peak_index = 0;
    float peak_value = 0;
    for (int i = 1; i < N; i++) {

        if (autocorrelation[i] > peak_value) {
            peak_value = autocorrelation[i];
            peak_index = i;
        }
    }

    // Calculate pitch
    for (int i = 0; i < N; i++) {

        pitch[i] = (peak_index != 0) ? (44100.0f / peak_index) : 0;
    }
}

// Top function name: pitch_detection

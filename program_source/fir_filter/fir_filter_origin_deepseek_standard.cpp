// Converted from fir_filter_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: fir_filter.cpp ----
#include <cstdint>

#define N 1024

void fir_filter(int16_t input[N], int16_t output[N], int16_t coeffs[64]) {

    int32_t acc;
    for (int i = 0; i < N; i++) {

        acc = 0;
        for (int j = 0; j < 64; j++) {

            if (i - j >= 0) {
                acc += static_cast<int32_t>(input[i - j]) * static_cast<int32_t>(coeffs[j]);
            }
        }
        output[i] = static_cast<int16_t>(acc >> 15); // Assuming fixed-point arithmetic with scaling
    }
}

// Top function name: fir_filter

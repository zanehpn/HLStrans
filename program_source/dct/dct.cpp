// Converted from dct.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: dct.cpp ----
#include <cmath>
#include <cstdint>

#define N 1024

void dct(int16_t input[N], int16_t output[N]) {
#pragma HLS ARRAY_PARTITION variable=output type=cyclic dim=1 factor=2
#pragma HLS ARRAY_PARTITION variable=input type=cyclic dim=1 factor=1
    const double PI = 3.14159265358979323846;
    double factor = sqrt(2.0 / N);
    double sum;
    int i, j;

    for (i = 0; i < N; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
        sum = 0.0;
        for (j = 0; j < N; j++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
            sum += input[j] * cos(PI * (j + 0.5) * i / N);
        }
        if (i == 0) {
            output[i] = (int16_t)(sum * sqrt(1.0 / N));
        } else {
            output[i] = (int16_t)(sum * factor);
        }
    }
}

// Top function name: dct

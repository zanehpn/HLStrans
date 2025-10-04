// Converted from chebyshev_filter.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: chebyshev_filter.cpp ----
#include <cmath>

#define N 1024

void chebyshev_filter(double input[N], double output[N], double coeffs[5]) {
#pragma HLS ARRAY_PARTITION variable=coeffs type=cyclic dim=1 factor=16
#pragma HLS ARRAY_PARTITION variable=output type=cyclic dim=1 factor=16
#pragma HLS ARRAY_PARTITION variable=input type=cyclic dim=1 factor=1
    double x[N + 4] = {0}; // Extended array to handle boundary conditions
    double y[N + 4] = {0}; // Extended array to handle boundary conditions

    // Copy input to extended array
    for (int i = 0; i < N; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
        x[i + 2] = input[i];
    }

    // Apply Chebyshev filter
    for (int i = 2; i < N + 2; i++) {
#pragma HLS PIPELINE 
#pragma HLS UNROLL factor=1
        y[i] = coeffs[0] * x[i] + coeffs[1] * x[i - 1] + coeffs[2] * x[i - 2]
             - coeffs[3] * y[i - 1] - coeffs[4] * y[i - 2];
    }

    // Copy result to output array
    for (int i = 0; i < N; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=2
        output[i] = y[i + 2];
    }
}

// Top function name: chebyshev_filter

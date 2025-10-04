// ---- file: butterworth_filter.cpp ----
#include <cmath>
#include <cstdint>

#define N 1024

void butterworth_filter(const float input[N], float output[N], const float a[3], const float b[3]) {
#pragma HLS ARRAY_PARTITION variable=b type=cyclic dim=1 factor=8
#pragma HLS ARRAY_PARTITION variable=a type=cyclic dim=1 factor=1
#pragma HLS ARRAY_PARTITION variable=output type=cyclic dim=1 factor=1
#pragma HLS ARRAY_PARTITION variable=input type=cyclic dim=1 factor=1
    float w[3] = {0.0, 0.0, 0.0};

    for (int i = 0; i < N; i++) {
#pragma HLS PIPELINE 
#pragma HLS UNROLL factor=1
        float new_w = input[i] - a[1] * w[1] - a[2] * w[2];
        output[i] = b[0] * new_w + b[1] * w[1] + b[2] * w[2];
        w[2] = w[1];
        w[1] = new_w;
    }
}

// Top function name: butterworth_filter

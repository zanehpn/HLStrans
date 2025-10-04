// ---- file: branch_prediction.cpp ----
#include <stdint.h>

#define N 1024

void branch_prediction(int32_t input[N], int32_t output[N]) {
#pragma HLS ARRAY_PARTITION variable=output type=cyclic dim=1 factor=1
#pragma HLS ARRAY_PARTITION variable=input type=cyclic dim=1 factor=1
    int32_t threshold = 500;
    for (int i = 0; i < N; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
        if (input[i] > threshold) {
            output[i] = input[i] * 2;
        } else {
            output[i] = input[i] / 2;
        }
    }
}

// Top function name: branch_prediction

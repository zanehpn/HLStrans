// ---- file: iir_filter.cpp ----
#include <cmath>

#define N 1024

void iir_filter(float input[N], float output[N], float a[3], float b[3]) {
#pragma HLS ARRAY_PARTITION variable=b type=cyclic dim=1 factor=8
#pragma HLS ARRAY_PARTITION variable=a type=cyclic dim=1 factor=4
#pragma HLS ARRAY_PARTITION variable=output type=cyclic dim=1 factor=1
#pragma HLS ARRAY_PARTITION variable=input type=cyclic dim=1 factor=4
    float w[N] = {0};

    for (int n = 0; n < N; n++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
        float wn = input[n];
        if (n >= 1) {
            wn -= a[1] * w[n - 1];
        }
        if (n >= 2) {
            wn -= a[2] * w[n - 2];
        }
        w[n] = wn;

        output[n] = b[0] * w[n];
        if (n >= 1) {
            output[n] += b[1] * w[n - 1];
        }
        if (n >= 2) {
            output[n] += b[2] * w[n - 2];
        }
    }
}

// Top function name: iir_filter

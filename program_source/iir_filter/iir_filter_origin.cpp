// Converted from iir_filter_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: iir_filter.cpp ----
#include <cmath>

#define N 1024

void iir_filter(float input[N], float output[N], float a[3], float b[3]) {

    float w[N] = {0};

    for (int n = 0; n < N; n++) {

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

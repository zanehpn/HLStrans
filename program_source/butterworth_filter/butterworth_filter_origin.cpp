// Converted from butterworth_filter_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: butterworth_filter.cpp ----
#include <cmath>
#include <cstdint>

#define N 1024

void butterworth_filter(const float input[N], float output[N], const float a[3], const float b[3]) {

    float w[3] = {0.0, 0.0, 0.0};

    for (int i = 0; i < N; i++) {

        float new_w = input[i] - a[1] * w[1] - a[2] * w[2];
        output[i] = b[0] * new_w + b[1] * w[1] + b[2] * w[2];
        w[2] = w[1];
        w[1] = new_w;
    }
}

// Top function name: butterworth_filter

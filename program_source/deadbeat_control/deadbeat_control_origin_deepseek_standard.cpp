// Converted from deadbeat_control_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: deadbeat_control.cpp ----
#include <cstdint>

#define N 1024

void deadbeat_control(int16_t input[N], int16_t output[N], int16_t coefficients[N]) {

    for (int i = 0; i < N; i++) {

        int32_t acc = 0;
        for (int j = 0; j <= i; j++) {

            acc += static_cast<int32_t>(input[j]) * static_cast<int32_t>(coefficients[i - j]);
        }
        output[i] = static_cast<int16_t>(acc);
    }
}

// Top function name: deadbeat_control

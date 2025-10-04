// Converted from clock_divider_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: clock_divider.cpp ----
#include <cstdint>

#define N 1024

void clock_divider(uint32_t input_clock[N], uint32_t output_clock[N], uint32_t divisor) {

    for (int i = 0; i < N; i++) {

        output_clock[i] = input_clock[i] / divisor;
    }
}

// Top function name: clock_divider

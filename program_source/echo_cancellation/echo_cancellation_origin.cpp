// Converted from echo_cancellation_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: echo_cancellation.cpp ----
#include <iostream>
#include <cmath>

#define N 1024

void echo_cancellation(float input_signal[N], float echo_signal[N], float output_signal[N], float filter_coeff[N]) {

    for (int i = 0; i < N; i++) {

        float estimated_echo = 0.0;
        for (int j = 0; j < N; j++) {

            if (i - j >= 0) {
                estimated_echo += filter_coeff[j] * input_signal[i - j];
            }
        }
        output_signal[i] = input_signal[i] - estimated_echo + echo_signal[i];
    }
}

// Top function name: echo_cancellation

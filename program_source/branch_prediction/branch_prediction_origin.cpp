// Converted from branch_prediction_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: branch_prediction.cpp ----
#include <stdint.h>

#define N 1024

void branch_prediction(int32_t input[N], int32_t output[N]) {

    int32_t threshold = 500;
    for (int i = 0; i < N; i++) {

        if (input[i] > threshold) {
            output[i] = input[i] * 2;
        } else {
            output[i] = input[i] / 2;
        }
    }
}

// Top function name: branch_prediction

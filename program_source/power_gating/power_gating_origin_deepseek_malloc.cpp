// MALLOC_VARIANT

#include <iostream>

#define ARRAY_SIZE 1024

void power_gating(int input[ARRAY_SIZE], int output[ARRAY_SIZE], int threshold) {
    int* in_buf = new int[ARRAY_SIZE];
    int* out_buf = new int[ARRAY_SIZE];

    for (int i = 0; i < ARRAY_SIZE; ++i) {
        in_buf[i] = input[i];
    }

    for (int i = 0; i < ARRAY_SIZE; ++i) {
        if (in_buf[i] > threshold) {
            out_buf[i] = in_buf[i];
        } else {
            out_buf[i] = 0;
        }
    }

    for (int i = 0; i < ARRAY_SIZE; ++i) {
        output[i] = out_buf[i];
    }

    delete[] in_buf;
    delete[] out_buf;
}

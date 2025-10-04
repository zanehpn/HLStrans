// Converted from temperature_based_shutdown.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: temperature_based_shutdown.cpp ----
#include <stdint.h>

#define ARRAY_SIZE 1024
#define THRESHOLD 75

void temperature_based_shutdown(int temperature_readings[ARRAY_SIZE], int shutdown_flags[ARRAY_SIZE]) {
#pragma HLS ARRAY_PARTITION variable=shutdown_flags type=cyclic dim=1 factor=1
#pragma HLS ARRAY_PARTITION variable=temperature_readings type=cyclic dim=1 factor=1
    for (int i = 0; i < ARRAY_SIZE; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
        if (temperature_readings[i] > THRESHOLD) {
            shutdown_flags[i] = 1;
        } else {
            shutdown_flags[i] = 0;
        }
    }
}

// Top function name: temperature_based_shutdown

// Converted from temperature_based_shutdown_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: temperature_based_shutdown.cpp ----
#include <stdint.h>

#define ARRAY_SIZE 1024
#define THRESHOLD 75

void temperature_based_shutdown(int temperature_readings[ARRAY_SIZE], int shutdown_flags[ARRAY_SIZE]) {

    for (int i = 0; i < ARRAY_SIZE; i++) {

        if (temperature_readings[i] > THRESHOLD) {
            shutdown_flags[i] = 1;
        } else {
            shutdown_flags[i] = 0;
        }
    }
}

// Top function name: temperature_based_shutdown

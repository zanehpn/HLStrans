// Converted from hazard_detection_resolution_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: hazard_detection_resolution.cpp ----
#include <stdint.h>

#define ARRAY_SIZE 1024

void hazard_detection_resolution(int32_t input1[ARRAY_SIZE], int32_t input2[ARRAY_SIZE], int32_t output[ARRAY_SIZE]) {

    for (int i = 0; i < ARRAY_SIZE; i++) {

        int32_t temp1 = input1[i];
        int32_t temp2 = input2[i];

        // Hazard detection and resolution logic
        if (temp1 > temp2) {
            output[i] = temp1 - temp2;
        } else if (temp1 < temp2) {
            output[i] = temp2 - temp1;
        } else {
            output[i] = 0; // No hazard
        }
    }
}

// Top function name: hazard_detection_resolution

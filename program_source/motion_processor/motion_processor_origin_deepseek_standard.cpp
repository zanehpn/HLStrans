// Converted from motion_processor_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: motion_processor.cpp ----
#include <cstdint>

#define SIZE 1024

void motion_processor(int16_t input1[SIZE], int16_t input2[SIZE], int16_t output[SIZE]) {

    for (int i = 0; i < SIZE; i++) {

        int16_t diff = static_cast<int16_t>(static_cast<int32_t>(input1[i]) - static_cast<int32_t>(input2[i]));
        if (diff < 0) {
            output[i] = static_cast<int16_t>(-diff);
        } else {
            output[i] = diff;
        }
    }
}
// Top function name: motion_processor

// Converted from audio_mixing_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: audio_mixing.cpp ----
#include <iostream>

#define SIZE 1024

void audio_mixing(float input1[SIZE], float input2[SIZE], float output[SIZE], float volume1, float volume2) {

    for (int i = 0; i < SIZE; i++) {

        output[i] = (input1[i] * volume1) + (input2[i] * volume2);
    }
}

// Top function name: audio_mixing

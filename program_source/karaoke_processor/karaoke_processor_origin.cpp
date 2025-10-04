// Converted from karaoke_processor_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: karaoke_processor.cpp ----
#include <iostream>
#include <cmath>

#define SIZE 1024

void karaoke_processor(float input_audio[SIZE], float output_audio[SIZE], float vocal_gain, float music_gain) {

    for (int i = 0; i < SIZE; i++) {

        float vocal = input_audio[i] * vocal_gain;
        float music = input_audio[i] * music_gain;
        output_audio[i] = vocal + music;
    }
}

// Top function name: karaoke_processor

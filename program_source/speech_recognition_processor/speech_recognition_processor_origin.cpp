// Converted from speech_recognition_processor_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: speech_recognition_processor.cpp ----
#include <cmath>
#include <cstdint>

#define N 1024

void speech_recognition_processor(float input[N], float output[N]) {

    float mfcc[N];
    float dct[N];
    float energy[N];
    float delta[N];
    float delta_delta[N];

    // Step 1: MFCC Calculation
    for (int i = 0; i < N; i++) {

        mfcc[i] = log(input[i] + 1.0f); // Simplified MFCC calculation
    }

    // Step 2: Discrete Cosine Transform (DCT)
    for (int i = 0; i < N; i++) {

        dct[i] = 0;
        for (int j = 0; j < N; j++) {

            dct[i] += mfcc[j] * cos(M_PI * i * (j + 0.5) / N);
        }
    }

    // Step 3: Energy Calculation
    for (int i = 0; i < N; i++) {

        energy[i] = dct[i] * dct[i];
    }

    // Step 4: Delta Calculation
    for (int i = 1; i < N - 1; i++) {

        delta[i] = (dct[i + 1] - dct[i - 1]) / 2.0f;
    }
    delta[0] = delta[1];
    delta[N - 1] = delta[N - 2];

    // Step 5: Delta-Delta Calculation
    for (int i = 1; i < N - 1; i++) {

        delta_delta[i] = (delta[i + 1] - delta[i - 1]) / 2.0f;
    }
    delta_delta[0] = delta_delta[1];
    delta_delta[N - 1] = delta_delta[N - 2];

    // Step 6: Combine Features
    for (int i = 0; i < N; i++) {

        output[i] = dct[i] + delta[i] + delta_delta[i];
    }
}

// Top function name: speech_recognition_processor

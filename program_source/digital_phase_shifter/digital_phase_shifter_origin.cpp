// Converted from digital_phase_shifter_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: digital_phase_shifter.cpp ----
#include <cmath>
#include <cstdint>

#define N 1024

void digital_phase_shifter(int16_t input_real[N], int16_t input_imag[N], int16_t output_real[N], int16_t output_imag[N], float phase_shift) {

    float cos_val = cos(phase_shift);
    float sin_val = sin(phase_shift);

    for (int i = 0; i < N; i++) {

        output_real[i] = static_cast<int16_t>(input_real[i] * cos_val - input_imag[i] * sin_val);
        output_imag[i] = static_cast<int16_t>(input_real[i] * sin_val + input_imag[i] * cos_val);
    }
}

// Top function name: digital_phase_shifter

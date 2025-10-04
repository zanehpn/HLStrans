// MALLOC_VARIANT
#include <cmath>
#include <cstdint>

#define N 1024

void digital_phase_shifter(int16_t input_real[N], int16_t input_imag[N], int16_t output_real[N], int16_t output_imag[N], float phase_shift) {
    float cos_val = std::cos(phase_shift);
    float sin_val = std::sin(phase_shift);

    // Dynamically allocate buffers for inputs and outputs
    int16_t* in_real = new int16_t[N];
    int16_t* in_imag = new int16_t[N];
    int16_t* out_real_buf = new int16_t[N];
    int16_t* out_imag_buf = new int16_t[N];

    // Copy inputs to dynamic buffers
    for (int i = 0; i < N; i++) {
        in_real[i] = input_real[i];
        in_imag[i] = input_imag[i];
    }

    // Compute into dynamic output buffers
    for (int i = 0; i < N; i++) {
        out_real_buf[i] = static_cast<int16_t>(in_real[i] * cos_val - in_imag[i] * sin_val);
        out_imag_buf[i] = static_cast<int16_t>(in_real[i] * sin_val + in_imag[i] * cos_val);
    }

    // Copy results back to provided output arrays
    for (int i = 0; i < N; i++) {
        output_real[i] = out_real_buf[i];
        output_imag[i] = out_imag_buf[i];
    }

    // Free dynamic memory
    delete[] in_real;
    delete[] in_imag;
    delete[] out_real_buf;
    delete[] out_imag_buf;
}

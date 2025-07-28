// file: fir2d_non_synth.cpp
#include <cstdlib>
#include <iostream>

#define CHANNELS 4
#define TAPS     8

void fir2d(
    int** in,      // pointer-to-pointer unsupported :contentReference[oaicite:14]{index=14}
    int** coeffs,
    int** out,
    int len
) {
    // Dynamic allocation of 2D arrays (unsupported)
    int** shift_reg = (int**)malloc(CHANNELS * sizeof(int*));
    for (int ch = 0; ch < CHANNELS; ++ch) {
        shift_reg[ch] = (int*)malloc(TAPS * sizeof(int));
    }

    for (int idx = 0; idx < len; idx++) {
        for (int ch = 0; ch < CHANNELS; ch++) {
            // Shift
            for (int t = TAPS-1; t > 0; t--) {
                shift_reg[ch][t] = shift_reg[ch][t-1];
            }
            shift_reg[ch][0] = in[ch][idx];

            // Accumulate
            int acc = 0;
            for (int t = 0; t < TAPS; t++) {
                acc += shift_reg[ch][t] * coeffs[ch][t];
            }
            out[ch][idx] = acc;
        }
    }

    // Free dynamic memory
    for (int ch = 0; ch < CHANNELS; ++ch) free(shift_reg[ch]);
    free(shift_reg);
}

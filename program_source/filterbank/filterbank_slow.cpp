#include <stdio.h>
#include <stdlib.h>

#include <ap_int.h>
typedef float vec_type;
#define R_LEN 256
#define BANKS 8
#define TAPS 32

void filterbank(
    vec_type r[R_LEN],
    vec_type y[R_LEN],
    vec_type H[BANKS][TAPS],
    vec_type F[BANKS][TAPS]
) {
    int i, j, k;

    // Zero-initialize output
    for (i = 0; i < R_LEN; i++) {
        y[i] = 0.0f;
    }

    // For each filter bank
    for (i = 0; i < BANKS; i++) {
        vec_type Vect_H[R_LEN];   // after H convolution
        vec_type Vect_Dn[TAPS];   // down-sampled
        vec_type Vect_Up[R_LEN];  // up-sampled
        vec_type Vect_F[R_LEN];   // after F convolution

        // 1) Convolve H with input r
        for (j = 0; j < R_LEN; j++) {
            vec_type acc = 0.0f;
            for (k = 0; k < TAPS; k++) {
                if (j - k < 0) break;
                acc += H[i][k] * r[j - k];
            }
            Vect_H[j] = acc;
        }

        // 2) Down-sample by factor BANKS (here 8)
        for (j = 0; j < TAPS; j++) {
            Vect_Dn[j] = Vect_H[j * BANKS];
        }

        // 3) Up-sample back to R_LEN (zero-insert)
        for (j = 0; j < R_LEN; j++) {
            Vect_Up[j] = 0.0f;
        }
        for (j = 0; j < TAPS; j++) {
            Vect_Up[j * BANKS] = Vect_Dn[j];
        }

        // 4) Convolve F with up-sampled signal
        for (j = 0; j < R_LEN; j++) {
            vec_type acc = 0.0f;
            for (k = 0; k < TAPS; k++) {
                if (j - k < 0) break;
                acc += F[i][k] * Vect_Up[j - k];
            }
            Vect_F[j] = acc;
        }

        // 5) Accumulate into final output
        for (j = 0; j < R_LEN; j++) {
            y[j] += Vect_F[j];
        }
    }
}
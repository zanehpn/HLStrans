// MALLOC_VARIANT
#include <cmath>
#include <cstring>
#include <cstdlib>

#define MATRIX_SIZE 1024

void matrix_inversion(float A[MATRIX_SIZE][MATRIX_SIZE], float A_inv[MATRIX_SIZE][MATRIX_SIZE]) {
    const int N = MATRIX_SIZE;
    float* A_dyn = static_cast<float*>(std::malloc(sizeof(float) * N * N));
    float* Ainv_dyn = static_cast<float*>(std::malloc(sizeof(float) * N * N));
    if (!A_dyn || !Ainv_dyn) {
        if (A_dyn) std::free(A_dyn);
        if (Ainv_dyn) std::free(Ainv_dyn);
        return;
    }

    // Copy input A to dynamic storage
    std::memcpy(A_dyn, A, sizeof(float) * N * N);

    // Initialize A_inv (dynamic) to identity matrix
    for (int i = 0; i < N; ++i) {
        int rowBase = i * N;
        for (int j = 0; j < N; ++j) {
            Ainv_dyn[rowBase + j] = (i == j) ? 1.0f : 0.0f;
        }
    }

    // Perform Gaussian elimination
    for (int i = 0; i < N; ++i) {
        float temp = A_dyn[i * N + i];

        // Normalize pivot row
        for (int j = 0; j < N; ++j) {
            A_dyn[i * N + j] /= temp;
            Ainv_dyn[i * N + j] /= temp;
        }

        // Eliminate other rows
        for (int j = 0; j < N; ++j) {
            if (i != j) {
                float t = A_dyn[j * N + i];
                for (int k = 0; k < N; ++k) {
                    A_dyn[j * N + k] -= A_dyn[i * N + k] * t;
                    Ainv_dyn[j * N + k] -= Ainv_dyn[i * N + k] * t;
                }
            }
        }
    }

    // Copy results back to provided arrays
    std::memcpy(A_inv, Ainv_dyn, sizeof(float) * N * N);
    std::memcpy(A, A_dyn, sizeof(float) * N * N);

    std::free(A_dyn);
    std::free(Ainv_dyn);
}

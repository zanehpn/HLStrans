#include <cmath>

#define MATRIX_SIZE 1024

void cholesky_decomposition(double A[MATRIX_SIZE][MATRIX_SIZE], double L[MATRIX_SIZE][MATRIX_SIZE]) {
    // Allocate dynamic buffers for A and L
    double* Ad = new double[MATRIX_SIZE * MATRIX_SIZE];
    double* Ld = new double[MATRIX_SIZE * MATRIX_SIZE];

    // Copy A into dynamic buffer and initialize Ld to 0
    for (int i = 0; i < MATRIX_SIZE; ++i) {
        for (int j = 0; j < MATRIX_SIZE; ++j) {
            Ad[i * MATRIX_SIZE + j] = A[i][j];
            Ld[i * MATRIX_SIZE + j] = 0.0;
        }
    }

    // Perform Cholesky decomposition using dynamically allocated arrays
    for (int i = 0; i < MATRIX_SIZE; ++i) {
        for (int j = 0; j <= i; ++j) {
            double sum = 0.0;
            for (int k = 0; k < j; ++k) {
                sum += Ld[i * MATRIX_SIZE + k] * Ld[j * MATRIX_SIZE + k];
            }
            if (i == j) {
                Ld[i * MATRIX_SIZE + j] = std::sqrt(Ad[i * MATRIX_SIZE + i] - sum);
            } else {
                Ld[i * MATRIX_SIZE + j] = (Ad[i * MATRIX_SIZE + j] - sum) / Ld[j * MATRIX_SIZE + j];
            }
        }
    }

    // Copy result back to output L
    for (int i = 0; i < MATRIX_SIZE; ++i) {
        for (int j = 0; j < MATRIX_SIZE; ++j) {
            L[i][j] = Ld[i * MATRIX_SIZE + j];
        }
    }

    // Free dynamic memory
    delete[] Ad;
    delete[] Ld;
}

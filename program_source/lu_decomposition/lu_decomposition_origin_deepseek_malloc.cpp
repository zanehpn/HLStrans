// MALLOC_VARIANT

#include <cmath>
#include <cstdlib>

#define N 1024

void lu_decomposition(double A[N][N], double L[N][N], double U[N][N]) {

    int i, j, k;

    const size_t NN = static_cast<size_t>(N) * static_cast<size_t>(N);
    double* A_d = static_cast<double*>(std::malloc(NN * sizeof(double)));
    double* L_d = static_cast<double*>(std::malloc(NN * sizeof(double)));
    double* U_d = static_cast<double*>(std::malloc(NN * sizeof(double)));

    if (!A_d || !L_d || !U_d) {
        if (A_d) std::free(A_d);
        if (L_d) std::free(L_d);
        if (U_d) std::free(U_d);
        return;
    }

    // Copy A into dynamic buffer
    for (i = 0; i < N; ++i) {
        for (j = 0; j < N; ++j) {
            A_d[i * N + j] = A[i][j];
        }
    }

    // Initialize L and U in dynamic buffers
    for (i = 0; i < N; ++i) {
        for (j = 0; j < N; ++j) {
            L_d[i * N + j] = (i == j) ? 1.0 : 0.0;
            U_d[i * N + j] = 0.0;
        }
    }

    // Perform LU Decomposition using dynamic buffers
    for (k = 0; k < N; ++k) {
        U_d[k * N + k] = A_d[k * N + k];
        for (i = k + 1; i < N; ++i) {
            L_d[i * N + k] = A_d[i * N + k] / U_d[k * N + k];
            U_d[k * N + i] = A_d[k * N + i];
        }
        for (i = k + 1; i < N; ++i) {
            for (j = k + 1; j < N; ++j) {
                A_d[i * N + j] = A_d[i * N + j] - L_d[i * N + k] * U_d[k * N + j];
            }
        }
    }

    // Copy results back to provided arrays
    for (i = 0; i < N; ++i) {
        for (j = 0; j < N; ++j) {
            L[i][j] = L_d[i * N + j];
            U[i][j] = U_d[i * N + j];
            A[i][j] = A_d[i * N + j];
        }
    }

    std::free(A_d);
    std::free(L_d);
    std::free(U_d);
}

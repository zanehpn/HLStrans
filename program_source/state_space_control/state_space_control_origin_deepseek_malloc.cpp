// MALLOC_VARIANT

#include <cstddef>

#define N 1024

void state_space_control(
    float A[N][N],
    float B[N][N],
    float C[N][N],
    float D[N][N],
    float x[N],
    float u[N],
    float y[N],
    float x_next[N]
) {
    // Dynamically allocate storage for large arrays
    float* Ad = new float[N * N];
    float* Bd = new float[N * N];
    float* Cd = new float[N * N];
    float* Dd = new float[N * N];
    float* xd = new float[N];
    float* ud = new float[N];

    // Copy input data into dynamic buffers
    for (int i = 0; i < N; ++i) {
        xd[i] = x[i];
        ud[i] = u[i];
        for (int j = 0; j < N; ++j) {
            Ad[i * N + j] = A[i][j];
            Bd[i * N + j] = B[i][j];
            Cd[i * N + j] = C[i][j];
            Dd[i * N + j] = D[i][j];
        }
    }

    // Compute y = C * x + D * u using dynamic buffers
    for (int i = 0; i < N; i++) {
        float acc = 0.0f;
        for (int j = 0; j < N; j++) {
            acc += Cd[i * N + j] * xd[j];
        }
        for (int j = 0; j < N; j++) {
            acc += Dd[i * N + j] * ud[j];
        }
        y[i] = acc;
    }

    // Compute x_next = A * x + B * u using dynamic buffers
    for (int i = 0; i < N; i++) {
        float acc = 0.0f;
        for (int j = 0; j < N; j++) {
            acc += Ad[i * N + j] * xd[j];
        }
        for (int j = 0; j < N; j++) {
            acc += Bd[i * N + j] * ud[j];
        }
        x_next[i] = acc;
    }

    // Free dynamic storage
    delete[] Ad;
    delete[] Bd;
    delete[] Cd;
    delete[] Dd;
    delete[] xd;
    delete[] ud;
}

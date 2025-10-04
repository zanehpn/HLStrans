// Converted from state_space_control_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: state_space_control.cpp ----
#include <iostream>

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

    // Compute y = C * x + D * u
    for (int i = 0; i < N; i++) {

        y[i] = 0;
        for (int j = 0; j < N; j++) {

            y[i] += C[i][j] * x[j];
        }
        for (int j = 0; j < N; j++) {

            y[i] += D[i][j] * u[j];
        }
    }

    // Compute x_next = A * x + B * u
    for (int i = 0; i < N; i++) {

        x_next[i] = 0;
        for (int j = 0; j < N; j++) {

            x_next[i] += A[i][j] * x[j];
        }
        for (int j = 0; j < N; j++) {

            x_next[i] += B[i][j] * u[j];
        }
    }
}

// Top function name: state_space_control

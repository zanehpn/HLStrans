// Converted from mpc_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: mpc.cpp ----
#include <iostream>

#define N 1024

void mpc(double state[N], double control[N], double A[N][N], double B[N][N], double Q[N][N], double R[N][N], double ref[N]) {

    double temp1[N], temp2[N], temp3[N];
    double new_state[N];

    // Initialize new_state to zero
    for (int i = 0; i < N; i++) {

        new_state[i] = 0.0;
    }

    // Compute new_state = A * state + B * control
    for (int i = 0; i < N; i++) {

        temp1[i] = 0.0;
        temp2[i] = 0.0;
        for (int j = 0; j < N; j++) {

            temp1[i] += A[i][j] * state[j];
            temp2[i] += B[i][j] * control[j];
        }
        new_state[i] = temp1[i] + temp2[i];
    }

    // Compute cost function J = (new_state - ref)^T * Q * (new_state - ref) + control^T * R * control
    double J = 0.0;
    for (int i = 0; i < N; i++) {

        temp3[i] = new_state[i] - ref[i];
    }

    for (int i = 0; i < N; i++) {

        double sum1 = 0.0;
        double sum2 = 0.0;
        for (int j = 0; j < N; j++) {

            sum1 += temp3[j] * Q[j][i];
            sum2 += control[j] * R[j][i];
        }
        J += sum1 * temp3[i] + sum2 * control[i];
    }

    // Output the cost function value
    std::cout << "Cost function value: " << J << std::endl;
}

// Top function name: mpc

// contents of mpc_tb.cpp
#include <iostream>
#include <cmath>
#include "mpc.cpp"

// Helper to fill a matrix with zeros
void fill_zero(double (*M)[N]) {
    for (int i = 0; i < N; ++i) {
        for (int j = 0; j < N; ++j) {
            M[i][j] = 0.0;
        }
    }
}

// Helper to fill a matrix as a scaled identity
void fill_identity(double (*M)[N], double scale = 1.0) {
    for (int i = 0; i < N; ++i) {
        for (int j = 0; j < N; ++j) {
            M[i][j] = (i == j) ? scale : 0.0;
        }
    }
}

// Compute expected cost using the same algorithm as mpc(), for validation
double compute_expected_J(double state[N], double control[N],
                          double A[N][N], double B[N][N],
                          double Q[N][N], double R[N][N],
                          double ref[N]) {
    double new_state[N];
    double temp1[N], temp2[N], temp3[N];
    double J = 0.0;

    // Initialize
    for (int i = 0; i < N; ++i) {
        new_state[i] = 0.0;
    }

    // new_state = A*state + B*control
    for (int i = 0; i < N; ++i) {
        temp1[i] = 0.0;
        temp2[i] = 0.0;
        for (int j = 0; j < N; ++j) {
            temp1[i] += A[i][j] * state[j];
            temp2[i] += B[i][j] * control[j];
        }
        new_state[i] = temp1[i] + temp2[i];
    }

    // temp3 = new_state - ref
    for (int i = 0; i < N; ++i) {
        temp3[i] = new_state[i] - ref[i];
    }

    // J = (new_state - ref)^T * Q * (new_state - ref) + control^T * R * control
    for (int i = 0; i < N; ++i) {
        double sum1 = 0.0;
        double sum2 = 0.0;
        for (int j = 0; j < N; ++j) {
            sum1 += temp3[j] * Q[j][i];
            sum2 += control[j] * R[j][i];
        }
        J += sum1 * temp3[i] + sum2 * control[i];
    }

    return J;
}

int main() {
    // Allocate matrices and vectors on heap to avoid stack overflow
    double (*A)[N] = new double[N][N];
    double (*B)[N] = new double[N][N];
    double (*Q)[N] = new double[N][N];
    double (*R)[N] = new double[N][N];

    double* state  = new double[N];
    double* control = new double[N];
    double* ref    = new double[N];

    // ------------------------------
    // Test 1: Identity dynamics and costs
    // new_state = state + control
    // J = ||(state + control - ref)||_Q^2 + ||control||_R^2 with Q=I, R=I
    // ------------------------------
    fill_identity(A, 1.0);
    fill_identity(B, 1.0);
    fill_identity(Q, 1.0);
    fill_identity(R, 1.0);

    for (int i = 0; i < N; ++i) {
        state[i] = 0.001 * i;   // small ramp signal
        control[i] = 1.0;       // constant control
        ref[i] = 0.0;           // zero reference
    }

    double expected_J1 = compute_expected_J(state, control, A, B, Q, R, ref);
    std::cout << "Test 1 expected J: " << expected_J1 << std::endl;
    mpc(state, control, A, B, Q, R, ref);

    // ------------------------------
    // Test 2: Pure control-driven dynamics
    // new_state = control (A=0, B=I), Q=I, R=I
    // J = ||(control - ref)||^2 + ||control||^2
    // ------------------------------
    fill_zero(A);
    fill_identity(B, 1.0);
    fill_identity(Q, 1.0);
    fill_identity(R, 1.0);

    for (int i = 0; i < N; ++i) {
        state[i] = 0.02 * (i % 10 - 5);     // centered small values
        control[i] = (i % 2 == 0) ? 0.5 : -0.5; // alternating control
        ref[i] = 0.1;                        // constant reference
    }

    double expected_J2 = compute_expected_J(state, control, A, B, Q, R, ref);
    std::cout << "Test 2 expected J: " << expected_J2 << std::endl;
    mpc(state, control, A, B, Q, R, ref);

    // ------------------------------
    // Test 3: Scaled dynamics and costs
    // new_state = 2*state + 0.5*control, Q=2*I, R=3*I
    // ------------------------------
    fill_identity(A, 2.0);
    fill_identity(B, 0.5);
    fill_identity(Q, 2.0);
    fill_identity(R, 3.0);

    for (int i = 0; i < N; ++i) {
        state[i] = 0.001 * i;     // ramp state
        control[i] = 0.002 * i;   // ramp control
        ref[i] = 0.0005 * i;      // ramp reference
    }

    double expected_J3 = compute_expected_J(state, control, A, B, Q, R, ref);
    std::cout << "Test 3 expected J: " << expected_J3 << std::endl;
    mpc(state, control, A, B, Q, R, ref);

    // Cleanup
    delete[] A;
    delete[] B;
    delete[] Q;
    delete[] R;
    delete[] state;
    delete[] control;
    delete[] ref;

    return 0;
}
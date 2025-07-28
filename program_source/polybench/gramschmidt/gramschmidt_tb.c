// gramschmidt_tb.cpp
#include <iostream>
#include <cmath>
#include <iomanip>
#include <cstring>
#include "gramschmidt.h"

// Tolerance for floating‐point comparison
static constexpr double tol = 1e-6;

// Simple max‐norm difference check
bool approx_equal(double A[20][30], double B[20][30]) {
    for (int i = 0; i < 20; ++i) {
        for (int j = 0; j < 30; ++j) {
            if (std::fabs(A[i][j] - B[i][j]) > tol) {
                std::cerr << "Mismatch at (" << i << "," << j << "): "
                          << A[i][j] << " vs " << B[i][j] << "\n";
                return false;
            }
        }
    }
    return true;
}

int main() {
    // 1) Prepare test matrix A (20×30)
    //    We'll fill the first 20 columns with a simple pattern,
    //    and leave the rest zero.
    double A[20][30], A_orig[20][30];
    double R[30][30], Q[20][30];
    std::memset(A, 0, sizeof(A));
    for (int i = 0; i < 20; ++i)
        for (int j = 0; j < 20; ++j)
            A[i][j] = (i == j ? 2.0 : 1.0);  // diagonal 2, off‐diag 1

    // Copy A for later comparison
    std::memcpy(A_orig, A, sizeof(A));

    // 2) Run Gram‐Schmidt
    gramschmidt(A, R, Q);

    // 3) Reconstruct B = Q * R
    double B[20][30];
    std::memset(B, 0, sizeof(B));
    for (int i = 0; i < 20; ++i) {
        for (int j = 0; j < 30; ++j) {
            double sum = 0.0;
            for (int k = 0; k < 30; ++k) {
                sum += Q[i][k] * R[k][j];
            }
            B[i][j] = sum;
        }
    }

    // 4) Validate reconstruction
    if (approx_equal(A_orig, B)) {
        std::cout << "PASS\n";
        return 0;
    } else {
        std::cout << "FAIL\n";
        return 1;
    }
}

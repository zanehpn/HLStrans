// det_tb.cpp
#include <cstdio>
#include <cstdlib>
#include <cmath>
#include <ctime>
#include <initializer_list>

#define MAX_N 32

// Declaration of the HLS kernel
float det(float A[MAX_N][MAX_N], int n);

// Simple software LU-based determinant (double precision)
double det_ref(double A[MAX_N][MAX_N], int n) {
    static double L[MAX_N][MAX_N], U[MAX_N][MAX_N];
    // Initialize L and U
    for (int i = 0; i < n; ++i) {
        for (int j = 0; j < n; ++j) {
            if (i <= j) { U[i][j] = A[i][j]; L[i][j] = (i==j) ? 1.0 : 0.0; }
            else       { U[i][j] = 0.0;        L[i][j] = 0.0;       }
        }
    }
    // LU factorization
    for (int k = 0; k < n; ++k) {
        if (fabs(U[k][k]) < 1e-12) return 0.0; // singular
        for (int i = k+1; i < n; ++i) {
            double factor = U[i][k] / U[k][k];
            L[i][k] = factor;
            for (int j = k; j < n; ++j)
                U[i][j] -= factor * U[k][j];
        }
    }
    // Determinant = product of diagonal of U
    double det = 1.0;
    for (int i = 0; i < n; ++i)
        det *= U[i][i];
    return det;
}

int main() {
    std::srand(std::time(nullptr));
    const double EPS = 1e-2;
    bool pass = true;

    // Test a few sizes
    for (int n : {4, 8, 16, 32}) {
        // Prepare test matrix
        static float A_hw[MAX_N][MAX_N];
        static double A_ref[MAX_N][MAX_N];
        for (int i = 0; i < n; ++i) {
            for (int j = 0; j < n; ++j) {
                // random in [-5,5]
                double v = (std::rand() / double(RAND_MAX) * 10.0) - 5.0;
                A_ref[i][j] = v;
                A_hw[i][j]  = float(v);
            }
        }

        // Reference determinant
        double detR = det_ref(A_ref, n);
        // HLS kernel determinant
        float detH = det(A_hw, n);

        // Compare (relative)
        double diff = fabs(detR - detH);
        double tol = EPS * fabs(detR) + EPS;
        if (diff > tol) {
            std::printf("Size %d: REF=%.6f, HLS=%.6f, DIFF=%.6f\n", n, detR, double(detH), diff);
            pass = false;
        }
    }

    if (pass) {
        std::printf("PASS\n");
        return 0;
    } else {
        std::printf("TEST FAIL\n");
        return 1;
    }
}

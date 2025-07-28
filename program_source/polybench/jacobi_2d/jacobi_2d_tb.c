#include <cstdio>
#include <cstdlib>
#include <cmath>

// DUT declaration
void jacobi_2d(int tsteps, int n,
               double A[90][90], double B[90][90]);

int main() {
    const int TSTEPS = 40;
    const int N      = 90;
    const double EPS = 1e-6;

    // Arrays for DUT and reference
    static double A[N][N], B[N][N];
    static double A_ref[N][N], B_ref[N][N];

    // 1) Initialize with fixed seed
    std::srand(123);
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) {
            double v = (std::rand() % 1000) / 100.0;  // [0.0,9.99]
            A[i][j] = A_ref[i][j] = v;
            B[i][j] = B_ref[i][j] = 0.0;
        }
    }

    // 2) Compute golden reference
    for (int t = 0; t < TSTEPS; t++) {
        // compute B_ref
        for (int i = 1; i < N-1; i++) {
            for (int j = 1; j < N-1; j++) {
                B_ref[i][j] = 0.2 * (A_ref[i][j]     + A_ref[i][j-1]
                                   + A_ref[i][j+1] + A_ref[i+1][j]
                                   + A_ref[i-1][j]);
            }
        }
        // compute A_ref
        for (int i = 1; i < N-1; i++) {
            for (int j = 1; j < N-1; j++) {
                A_ref[i][j] = 0.2 * (B_ref[i][j]     + B_ref[i][j-1]
                                   + B_ref[i][j+1] + B_ref[i+1][j]
                                   + B_ref[i-1][j]);
            }
        }
    }

    // 3) Invoke DUT
    jacobi_2d(TSTEPS, N, A, B);

    // 4) Compare DUT results against reference
    for (int i = 1; i < N-1; i++) {
        for (int j = 1; j < N-1; j++) {
            double dA = std::fabs(A[i][j] - A_ref[i][j]);
            if (dA > EPS) {
                std::printf("FAIL at [%d][%d]: DUT A=%.8f REF=%.8f\n", i, j, A[i][j], A_ref[i][j]);
                return 1;
            }
            double dB = std::fabs(B[i][j] - B_ref[i][j]);
            if (dB > EPS) {
                std::printf("FAIL at [%d][%d]: DUT B=%.8f REF=%.8f\n", i, j, B[i][j], B_ref[i][j]);
                return 1;
            }
        }
    }

    std::puts("PASS");
    return 0;
}

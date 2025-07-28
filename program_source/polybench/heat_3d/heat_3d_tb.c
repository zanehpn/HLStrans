#include <cstdio>
#include <cstdlib>
#include <cmath>

// DUT declaration
void heat_3d(int tsteps, int n,
             double A[20][20][20],
             double B[20][20][20]);

int main() {
    const int TSTEPS = 40;
    const int N = 20;
    const double EPS = 1e-6;

    // Buffers
    static double A[N][N][N], B[N][N][N];
    static double A_ref[N][N][N], B_ref[N][N][N];

    // 1) Initialize A with fixed seed for reproducibility
    std::srand(123);  // deterministic seed :contentReference[oaicite:2]{index=2}
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) {
            for (int k = 0; k < N; k++) {
                double v = (std::rand() % 1000) / 1000.0;  // [0.0,0.999] :contentReference[oaicite:3]{index=3}
                A[i][j][k]     = A_ref[i][j][k] = v;
                B[i][j][k]     = B_ref[i][j][k] = 0.0;
            }
        }
    }

    // 2) Compute golden‐model reference
    for (int t = 1; t <= TSTEPS; t++) {
        // Step 1: compute B from A
        for (int i = 1; i < N-1; i++) {
            for (int j = 1; j < N-1; j++) {
                for (int k = 1; k < N-1; k++) {
                    B_ref[i][j][k] = 0.125 * (A_ref[i+1][j][k] - 2.0*A_ref[i][j][k] + A_ref[i-1][j][k])
                                   + 0.125 * (A_ref[i][j+1][k] - 2.0*A_ref[i][j][k] + A_ref[i][j-1][k])
                                   + 0.125 * (A_ref[i][j][k+1] - 2.0*A_ref[i][j][k] + A_ref[i][j][k-1])
                                   + A_ref[i][j][k];
                }
            }
        }
        // Step 2: swap roles for next update
        for (int i = 1; i < N-1; i++) {
            for (int j = 1; j < N-1; j++) {
                for (int k = 1; k < N-1; k++) {
                    A_ref[i][j][k] = 0.125 * (B_ref[i+1][j][k] - 2.0*B_ref[i][j][k] + B_ref[i-1][j][k])
                                   + 0.125 * (B_ref[i][j+1][k] - 2.0*B_ref[i][j][k] + B_ref[i][j-1][k])
                                   + 0.125 * (B_ref[i][j][k+1] - 2.0*B_ref[i][j][k] + B_ref[i][j][k-1])
                                   + B_ref[i][j][k];
                }
            }
        }
    }

    // 3) Invoke DUT
    heat_3d(TSTEPS, N, A, B);

    // 4) Compare DUT outputs against reference
    for (int i = 1; i < N-1; i++) {
        for (int j = 1; j < N-1; j++) {
            for (int k = 1; k < N-1; k++) {
                double dA = std::fabs(A[i][j][k] - A_ref[i][j][k]);
                double dB = std::fabs(B[i][j][k] - B_ref[i][j][k]);
                if (dA > EPS || dB > EPS) {
                    std::printf("FAIL at [i=%d][j=%d][k=%d]:\n", i, j, k);
                    std::printf("  A DUT=%.8f REF=%.8f diff=%.8f\n", A[i][j][k], A_ref[i][j][k], dA);
                    std::printf("  B DUT=%.8f REF=%.8f diff=%.8f\n", B[i][j][k], B_ref[i][j][k], dB);
                    return 1;  // nonzero indicates failure :contentReference[oaicite:4]{index=4}
                }
            }
        }
    }

    std::puts("PASS");
    return 0;      // zero indicates success :contentReference[oaicite:5]{index=5}
}

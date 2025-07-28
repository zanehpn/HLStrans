#include <cstdio>
#include <cstdlib>
#include <cmath>

// DUT declaration
void jacobi_1d(int tsteps, int n, double A[120], double B[120]);

int main() {
    const int TSTEPS = 40;
    const int N      = 120;
    const double EPS = 1e-6;

    // Host arrays and references
    static double A[N], B[N];
    static double A_ref[N], B_ref[N];

    // 1) Initialize with fixed seed
    std::srand(123);
    for (int i = 0; i < N; i++) {
        double v = (std::rand() % 1000) / 100.0;  // uniform [0.0,9.99]
        A[i]     = A_ref[i] = v;
        B[i]     = B_ref[i] = 0.0;
    }

    // 2) Compute golden reference Jacobi 1D
    for (int t = 0; t < TSTEPS; t++) {
        // Compute B_ref
        for (int i = 1; i < N-1; i++) {
            B_ref[i] = 0.33333 * (A_ref[i-1] + A_ref[i] + A_ref[i+1]);
        }
        // Update A_ref
        for (int i = 1; i < N-1; i++) {
            A_ref[i] = 0.33333 * (B_ref[i-1] + B_ref[i] + B_ref[i+1]);
        }
    }

    // 3) Invoke DUT
    jacobi_1d(TSTEPS, N, A, B);

    // 4) Verify results
    for (int i = 1; i < N-1; i++) {
        if (std::fabs(A[i] - A_ref[i]) > EPS) {
            std::printf("FAIL at i=%d: DUT=%.8f REF=%.8f\n", i, A[i], A_ref[i]);
            return 1;
        }
    }

    std::puts("PASS");
    return 0;
}

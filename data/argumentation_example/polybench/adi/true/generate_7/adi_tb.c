#include <iostream>
#include <cmath>
#include <cassert>

// Prototype of the DUT
void adi(int tsteps,int n,double u[60][60],double v[60][60],double p[60][60],double q[60][60]);

// Utility to check for NaN or Inf
bool is_finite(double x) {
    return std::isfinite(x);
}

bool test_adi() {
    const int N = 60;
    const int T = 40;
    static double u[60][60], v[60][60], p[60][60], q[60][60];

    // 1) Initialize u and v: interior zeros, boundaries = 1.0
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) {
            if (i==0 || i==N-1 || j==0 || j==N-1) {
                u[i][j] = 1.0;
                v[i][j] = 1.0;
            } else {
                u[i][j] = 0.0;
                v[i][j] = 0.0;
            }
            p[i][j] = 0.0;
            q[i][j] = 0.0;
        }
    }

    // 2) Call the accelerator
    adi(T, N, u, v, p, q);

    // 3) Verify
    //  3a) Boundaries should remain 1.0
    for (int i = 0; i < N; i++) {
        if (u[0][i] != 1.0 || u[N-1][i] != 1.0 ||
            u[i][0] != 1.0 || u[i][N-1] != 1.0) {
            std::cerr << "FAIL: u boundary modified at (" 
                      << i << ",*) or (*," << i << ")\n";
            return false;
        }
        if (v[0][i] != 1.0 || v[N-1][i] != 1.0 ||
            v[i][0] != 1.0 || v[i][N-1] != 1.0) {
            std::cerr << "FAIL: v boundary modified at (" 
                      << i << ",*) or (*," << i << ")\n";
            return false;
        }
    }
    //  3b) No NaNs or infinities in the grid
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) {
            if (!is_finite(u[i][j]) || !is_finite(v[i][j])) {
                std::cerr << "FAIL: Non-finite value at (" 
                          << i << "," << j << ")\n";
                return false;
            }
        }
    }

    return true;
}

int main() {
    if (test_adi()) {
        std::cout << "PASS\n";
        return 0;
    } else {
        std::cout << "FAIL\n";
        return 1;
    }
}

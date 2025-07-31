#include <cstdio>
#include <cstdlib>
#include <cmath>
#include <cstring>

// DUT declaration
void fdtd_2d(int tmax, int nx, int ny,
             double ex[60][80], double ey[60][80], double hz[60][80], double _fict_[40]);

int main() {
    const int TMAX = 40;
    const int NX = 60, NY = 80;
    const double EPS = 1e-6;

    // DUT buffers
    static double ex[NX][NY], ey[NX][NY], hz[NX][NY];
    static double fict[TMAX];

    // Reference buffers
    static double ex_ref[NX][NY], ey_ref[NX][NY], hz_ref[NX][NY];

    // 1) Initialize inputs with fixed seed
    std::srand(123);
    for (int i = 0; i < NX; i++) {
        for (int j = 0; j < NY; j++) {
            double v = (std::rand() % 1000) / 1000.0;  // [0.0,0.999]
            ex[i][j] = ex_ref[i][j] = v;
            ey[i][j] = ey_ref[i][j] = v;
            hz[i][j] = hz_ref[i][j] = v;
        }
    }
    for (int t = 0; t < TMAX; t++) {
        fict[t] = (std::rand() % 1000) / 1000.0;  // [0.0,0.999]
    }

    // 2) Compute golden reference
    for (int t = 0; t < TMAX; t++) {
        // update ey[0][*]
        for (int j = 0; j < NY; j++) {
            ey_ref[0][j] = fict[t];
        }
        // update ey rest
        for (int i = 1; i < NX; i++) {
            for (int j = 0; j < NY; j++) {
                ey_ref[i][j] = ey_ref[i][j] - 0.5 * (hz_ref[i][j] - hz_ref[i-1][j]);
            }
        }
        // update ex
        for (int i = 0; i < NX; i++) {
            for (int j = 1; j < NY; j++) {
                ex_ref[i][j] = ex_ref[i][j] - 0.5 * (hz_ref[i][j] - hz_ref[i][j-1]);
            }
        }
        // update hz
        for (int i = 0; i < NX-1; i++) {
            for (int j = 0; j < NY-1; j++) {
                hz_ref[i][j] = hz_ref[i][j] - 0.7 * (ex_ref[i][j+1] - ex_ref[i][j]
                                      + ey_ref[i+1][j] - ey_ref[i][j]);
            }
        }
    }

    // 3) Call DUT
    fdtd_2d(TMAX, NX, NY, ex, ey, hz, fict);

    // 4) Compare DUT outputs with reference
    for (int i = 0; i < NX; i++) {
        for (int j = 0; j < NY; j++) {
            if (std::fabs(ex[i][j] - ex_ref[i][j]) > EPS) {
                std::printf("Mismatch ex[%d][%d]: DUT=%.8f REF=%.8f\n", i, j, ex[i][j], ex_ref[i][j]);
                std::puts("FAIL");
                return 1;
            }
            if (std::fabs(ey[i][j] - ey_ref[i][j]) > EPS) {
                std::printf("Mismatch ey[%d][%d]: DUT=%.8f REF=%.8f\n", i, j, ey[i][j], ey_ref[i][j]);
                std::puts("FAIL");
                return 1;
            }
            if (i < NX-1 && j < NY-1) {
                if (std::fabs(hz[i][j] - hz_ref[i][j]) > EPS) {
                    std::printf("Mismatch hz[%d][%d]: DUT=%.8f REF=%.8f\n", i, j, hz[i][j], hz_ref[i][j]);
                    std::puts("FAIL");
                    return 1;
                }
            }
        }
    }

    std::puts("PASS");
    return 0;
}

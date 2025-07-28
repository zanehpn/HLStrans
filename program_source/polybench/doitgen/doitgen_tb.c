#include <cstdio>
#include <cstdlib>
#include <cmath>

// DUT declaration
void doitgen(int nr, int nq, int np,
             double A[25][20][30],
             double C4[30][30],
             double sum[30]);

int main() {
    const int NR = 25, NQ = 20, NP = 30;
    const double EPS = 1e-6;

    static double A[NR][NQ][NP];
    static double C4[NP][NP];
    static double sum[NP];

    static double A_ref[NR][NQ][NP];
    static double sum_ref[NP];

    // Initialize input data with fixed seed
    std::srand(42);
    for (int r = 0; r < NR; r++) {
        for (int q = 0; q < NQ; q++) {
            for (int p = 0; p < NP; p++) {
                double v = (std::rand() % 1000) / 100.0;  // [0,9.99]
                A[r][q][p] = A_ref[r][q][p] = v;
            }
        }
    }
    for (int i = 0; i < NP; i++) {
        for (int j = 0; j < NP; j++) {
            C4[i][j] = (std::rand() % 1000) / 100.0;
        }
    }

    // Compute golden reference in A_ref
    for (int r = 0; r < NR; r++) {
        for (int q = 0; q < NQ; q++) {
            // compute sum_ref for this r,q
            for (int p = 0; p < NP; p++) {
                sum_ref[p] = 0.0;
                for (int s = 0; s < NP; s++) {
                    sum_ref[p] += A_ref[r][q][s] * C4[s][p];
                }
            }
            // write back into A_ref
            for (int p = 0; p < NP; p++) {
                A_ref[r][q][p] = sum_ref[p];
            }
        }
    }

    // Call DUT
    doitgen(NR, NQ, NP, A, C4, sum);

    // Compare A vs A_ref
    bool pass = true;
    for (int r = 0; r < NR && pass; r++) {
        for (int q = 0; q < NQ && pass; q++) {
            for (int p = 0; p < NP; p++) {
                double diff = std::fabs(A[r][q][p] - A_ref[r][q][p]);
                if (diff > EPS) {
                    std::printf("Mismatch at [r=%d][q=%d][p=%d]: DUT=%.8f REF=%.8f\n",
                                r, q, p, A[r][q][p], A_ref[r][q][p]);
                    pass = false;
                    break;
                }
            }
        }
    }

    if (pass) {
        std::puts("PASS");
        return 0;
    } else {
        std::puts("FAIL");
        return 1;
    }
}

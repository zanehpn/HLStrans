#include <cstdio>
#include <cmath>
#include <cstdlib>
#include <cstring>

void correlation(double float_n,double data[100][80],double corr[80][80],double mean[80],double stddev[80]);

// Tolerance for floating-point comparisons
const double EPS = 1e-6;

int main() {
    const double float_n = 100.0;
    const int N = 100, M = 80;

    // Allocate and initialize data
    static double data[N][M];
    static double data_copy[N][M];
    srand(123);
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < M; j++) {
            data[i][j] = (rand() % 1000) / 100.0;  // [0,9.99]
            data_copy[i][j] = data[i][j];
        }
    }

    // Buffers for DUT output
    static double corr[N > M ? M : N][N > M ? M : N];
    static double mean[M], stddev[M];

    // Buffers for golden reference
    static double corr_ref[M][M], mean_ref[M], stddev_ref[M];

    // 1) Call DUT
    correlation(float_n, data, corr, mean, stddev);

    // 2) Compute golden reference on data_copy
    // Compute means
    for (int j = 0; j < M; j++) {
        mean_ref[j] = 0.0;
        for (int i = 0; i < N; i++) {
            mean_ref[j] += data_copy[i][j];
        }
        mean_ref[j] /= float_n;
    }
    // Compute stddevs
    const double eps = 0.1;
    for (int j = 0; j < M; j++) {
        stddev_ref[j] = 0.0;
        for (int i = 0; i < N; i++) {
            double d = data_copy[i][j] - mean_ref[j];
            stddev_ref[j] += d * d;
        }
        stddev_ref[j] = sqrt(stddev_ref[j] / float_n);
        if (stddev_ref[j] <= eps) stddev_ref[j] = 1.0;
    }
    // Normalize
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < M; j++) {
            data_copy[i][j] -= mean_ref[j];
            data_copy[i][j] /= (sqrt(float_n) * stddev_ref[j]);
        }
    }
    // Compute correlation matrix
    for (int i = 0; i < M; i++) {
        for (int j = 0; j < M; j++) {
            if (i == j) {
                corr_ref[i][j] = 1.0;
            } else if (j < i) {
                corr_ref[i][j] = corr_ref[j][i];
            } else {
                double sum = 0.0;
                for (int k = 0; k < N; k++) {
                    sum += data_copy[k][i] * data_copy[k][j];
                }
                corr_ref[i][j] = sum;
            }
        }
    }

    // 3) Compare DUT output vs reference
    bool pass = true;
    for (int i = 0; i < M && pass; i++) {
        for (int j = 0; j < M; j++) {
            double diff = fabs(corr[i][j] - corr_ref[i][j]);
            if (diff > EPS) {
                std::printf("Mismatch at corr[%d][%d]: DUT=%.8f, REF=%.8f, DIFF=%.8f\n",
                            i, j, corr[i][j], corr_ref[i][j], diff);
                pass = false;
                break;
            }
        }
    }

    if (pass) {
        std::puts("TEST PASSED");
        return 0;
    } else {
        std::puts("TEST FAILED");
        return 1;
    }
}

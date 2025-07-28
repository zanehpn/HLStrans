#include <cstdio>
#include <cstdlib>
#include <cmath>

// DUT declaration
void covariance(int m, int n, double float_n,
                double data[100][80],
                double cov[80][80],
                double mean[80]);

int main() {
    const int N = 100, M = 80;
    const double float_n = 100.0;

    // Buffers for DUT input/output and golden reference
    static double data[N][M], data_copy[N][M];
    static double mean[M], mean_ref[M];
    static double cov[M][M], cov_ref[M][M];

    // 1) Initialize inputs with fixed seed for reproducibility
    std::srand(123);  // constant seed ⇒ repeatable rand() sequence :contentReference[oaicite:1]{index=1}
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < M; j++) {
            double v = (std::rand() % 1000) / 100.0;  // uniform [0.0, 9.99] :contentReference[oaicite:2]{index=2}
            data[i][j] = data_copy[i][j] = v;
        }
    }

    // 2) Compute golden‑model means
    for (int j = 0; j < M; j++) {
        double sum = 0.0;
        for (int i = 0; i < N; i++) {
            sum += data_copy[i][j];               // sum of deviations per column :contentReference[oaicite:3]{index=3}
        }
        mean_ref[j] = sum / float_n;             // sample mean: Σ(x_i) / n :contentReference[oaicite:4]{index=4}
    }

    // 3) Center data for reference
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < M; j++) {
            data_copy[i][j] -= mean_ref[j];       // subtract mean: x_i − μ :contentReference[oaicite:5]{index=5}
        }
    }

    // 4) Compute golden‑model covariance matrix
    for (int i = 0; i < M; i++) {
        for (int j = i; j < M; j++) {
            double s = 0.0;
            for (int k = 0; k < N; k++) {
                s += data_copy[k][i] * data_copy[k][j]; // Σ[(x_ki)(x_kj)] :contentReference[oaicite:6]{index=6}
            }
            cov_ref[i][j] = s / (float_n - 1.0);      // divide by (n−1): sample covariance :contentReference[oaicite:7]{index=7}
            cov_ref[j][i] = cov_ref[i][j];           // enforce symmetry :contentReference[oaicite:8]{index=8}
        }
    }

    // 5) Call DUT under test
    covariance(N, M, float_n, data, cov, mean); 

    // 6) Compare DUT outputs to golden reference
    const double EPS = 1e-6;  // tolerance for floating‑point error :contentReference[oaicite:9]{index=9}
    for (int j = 0; j < M; j++) {
        if (std::fabs(mean[j] - mean_ref[j]) > EPS) {
            std::printf("Mean mismatch at [%d]: DUT=%.8f REF=%.8f\n",
                        j, mean[j], mean_ref[j]);
            std::puts("TEST FAILED");
            return 1;                              // nonzero ⇒ failure :contentReference[oaicite:10]{index=10}
        }
    }
    for (int i = 0; i < M; i++) {
        for (int j = 0; j < M; j++) {
            if (std::fabs(cov[i][j] - cov_ref[i][j]) > EPS) {
                std::printf("Cov mismatch at [%d][%d]: DUT=%.8f REF=%.8f\n",
                            i, j, cov[i][j], cov_ref[i][j]);
                std::puts("TEST FAILED");
                return 1;                          // halt on first failure :contentReference[oaicite:11]{index=11}
            }
        }
    }

    std::puts("TEST PASSED");                      // zero ⇒ success :contentReference[oaicite:12]{index=12}
    return 0;
}

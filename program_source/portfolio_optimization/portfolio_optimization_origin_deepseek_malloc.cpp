// MALLOC_VARIANT
#include <cmath>

#define N 1024

void portfolio_optimization(double returns[N], double cov_matrix[N][N], double weights[N], double risk_free_rate, double target_return, double optimized_weights[N]) {

    double sum_weights = 0.0;
    double portfolio_return = 0.0;
    double portfolio_variance = 0.0;

    // Dynamic copies of large arrays
    double* ret = new double[N];
    double* w = new double[N];
    double* cov = new double[N * N];

    for (int i = 0; i < N; ++i) {
        ret[i] = returns[i];
        w[i] = weights[i];
    }
    for (int i = 0; i < N; ++i) {
        for (int j = 0; j < N; ++j) {
            cov[i * N + j] = cov_matrix[i][j];
        }
    }

    // Initialize weights
    for (int i = 0; i < N; i++) {
        w[i] = 1.0 / N;
    }

    // Calculate initial portfolio return and variance
    for (int i = 0; i < N; i++) {
        portfolio_return += w[i] * ret[i];
        for (int j = 0; j < N; j++) {
            portfolio_variance += w[i] * w[j] * cov[i * N + j];
        }
    }

    // Optimization loop (simplified for demonstration purposes)
    for (int iter = 0; iter < 1000; iter++) {
        for (int i = 0; i < N; i++) {
            double gradient = ret[i] - risk_free_rate;
            for (int j = 0; j < N; j++) {
                gradient -= cov[i * N + j] * w[j];
            }
            w[i] += 0.01 * gradient;
        }

        // Normalize weights to sum to 1
        sum_weights = 0.0;
        for (int i = 0; i < N; i++) {
            sum_weights += w[i];
        }
        for (int i = 0; i < N; i++) {
            w[i] /= sum_weights;
        }

        // Calculate portfolio return and variance
        portfolio_return = 0.0;
        portfolio_variance = 0.0;
        for (int i = 0; i < N; i++) {
            portfolio_return += w[i] * ret[i];
            for (int j = 0; j < N; j++) {
                portfolio_variance += w[i] * w[j] * cov[i * N + j];
            }
        }

        // Check if target return is met
        if (portfolio_return >= target_return) {
            break;
        }
    }

    // Copy optimized weights to output and back to original weights
    for (int i = 0; i < N; i++) {
        optimized_weights[i] = w[i];
        weights[i] = w[i];
    }

    // Free dynamic memory
    delete[] ret;
    delete[] w;
    delete[] cov;
}

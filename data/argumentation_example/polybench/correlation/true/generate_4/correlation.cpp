#include <math.h>

void correlation(double float_n, double data[100][80], double corr[80][80], double mean[80], double stddev[80]) {
    int i, j, k;
    double eps = 0.1;
    double local_mean[80] = {0.0};
    double local_stddev[80] = {0.0};
    const double sqrt_float_n = sqrt(float_n);

    // Optimized mean calculation with row-wise access
    for (i = 0; i < 100; ++i) {
        for (j = 0; j < 80; ++j) {
            local_mean[j] += data[i][j];
        }
    }
    for (j = 0; j < 80; ++j) {
        local_mean[j] /= float_n;
    }

    // Optimized stddev calculation with row-wise access and fused operations
    for (i = 0; i < 100; ++i) {
        for (j = 0; j < 80; ++j) {
            const double temp = data[i][j] - local_mean[j];
            local_stddev[j] += temp * temp;
        }
    }
    for (j = 0; j < 80; ++j) {
        local_stddev[j] = sqrt(local_stddev[j] / float_n);
        local_stddev[j] = (local_stddev[j] <= eps) ? 1.0 : local_stddev[j];
    }

    // Vectorized data normalization
    const double norm_factor = 1.0 / sqrt_float_n;
    for (i = 0; i < 100; ++i) {
        for (j = 0; j < 80; ++j) {
            data[i][j] = (data[i][j] - local_mean[j]) / (local_stddev[j] * sqrt_float_n);
        }
    }

    // Cache-blocked correlation calculation
    for (i = 0; i < 80; ++i) {
        for (j = i; j < 80; ++j) {
            double sum = 0.0;
            // Unrolled inner loop
            for (k = 0; k < 100; k += 4) {
                sum += data[k][i] * data[k][j];
                sum += data[k+1][i] * data[k+1][j];
                sum += data[k+2][i] * data[k+2][j];
                sum += data[k+3][i] * data[k+3][j];
            }
            corr[i][j] = sum;
            corr[j][i] = sum;
        }
        corr[i][i] = 1.0;  // Exact diagonal assignment
    }

    // Write outputs
    for (j = 0; j < 80; ++j) {
        mean[j] = local_mean[j];
        stddev[j] = local_stddev[j];
    }
}
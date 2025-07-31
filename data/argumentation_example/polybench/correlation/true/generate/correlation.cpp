#include "correlation.h"
#include <math.h>

void compute_mean(double float_n, double data[N][M], double mean[M]) {
    #pragma HLS INLINE
    for (int j = 0; j < M; j++) {
        #pragma HLS PIPELINE II=1
        mean[j] = 0.0;
        for (int i = 0; i < N; i++) {
            mean[j] += data[i][j];
        }
        mean[j] /= float_n;
    }
}

void compute_stddev(double float_n, double data[N][M], double mean[M], double stddev[M]) {
    #pragma HLS INLINE
    const double eps = 0.1;
    for (int j = 0; j < M; j++) {
        #pragma HLS PIPELINE II=1
        stddev[j] = 0.0;
        for (int i = 0; i < N; i++) {
            double temp = data[i][j] - mean[j];
            stddev[j] += temp * temp;
        }
        double variance = stddev[j] / float_n;
        stddev[j] = (sqrt(variance) <= eps) ? 1.0 : sqrt(variance);
    }
}

void normalize_data(double float_n, double data[N][M], double mean[M], double stddev[M]) {
    #pragma HLS INLINE
    double sqrt_n = sqrt(float_n);
    for (int i = 0; i < N; i++) {
        #pragma HLS PIPELINE II=1
        for (int j = 0; j < M; j++) {
            data[i][j] = (data[i][j] - mean[j]) / (sqrt_n * stddev[j]);
        }
    }
}

void compute_correlation(double data[N][M], double corr[M][M]) {
    double buffer1_i[BLOCK_SIZE], buffer1_j[BLOCK_SIZE];
    double buffer2_i[BLOCK_SIZE], buffer2_j[BLOCK_SIZE];

    for (int i = 0; i < M; i++) {
        for (int j = i; j < M; j++) {
            #pragma HLS PIPELINE II=1
            corr[i][j] = 0.0;

            // First block transfer
            for (int k = 0; k < BLOCK_SIZE; k++) {
                buffer1_i[k] = data[k][i];
                buffer1_j[k] = data[k][j];
            }

            for (int block = 0; block < 2; block++) {
                #pragma HLS UNROLL
                if (block % 2 == 0) {
                    // Compute with buffer1 while loading buffer2
                    for (int k = 0; k < BLOCK_SIZE; k++) {
                        corr[i][j] += buffer1_i[k] * buffer1_j[k];
                    }
                    if (block < 1) {
                        for (int k = 0; k < BLOCK_SIZE; k++) {
                            buffer2_i[k] = data[BLOCK_SIZE + k][i];
                            buffer2_j[k] = data[BLOCK_SIZE + k][j];
                        }
                    }
                } else {
                    // Compute with buffer2
                    for (int k = 0; k < BLOCK_SIZE; k++) {
                        corr[i][j] += buffer2_i[k] * buffer2_j[k];
                    }
                }
            }
            corr[j][i] = corr[i][j];
        }
    }
}

void correlation(double float_n, double data[N][M], double corr[M][M], double mean[M], double stddev[M]) {
    #pragma HLS INTERFACE m_axi port=data depth=8000
    #pragma HLS INTERFACE m_axi port=corr depth=6400
    #pragma HLS INTERFACE m_axi port=mean depth=80
    #pragma HLS INTERFACE m_axi port=stddev depth=80

    compute_mean(float_n, data, mean);
    compute_stddev(float_n, data, mean, stddev);
    normalize_data(float_n, data, mean, stddev);
    compute_correlation(data, corr);
}
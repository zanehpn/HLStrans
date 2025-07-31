#include "correlation.h"
#include <math.h>

void compute_mean(double float_n, double data[N][M], double mean[M]) {
    #pragma HLS INLINE
    for (int j = 0; j < M; j++) {
        #pragma HLS PIPELINE II=1
        double sum = 0.0;
        for (int i = 0; i < N; i++) {
            #pragma HLS PIPELINE II=1
            #pragma HLS REDUCTION op=+ variable=sum
            sum += data[i][j];
        }
        mean[j] = sum / float_n;
    }
}

void compute_stddev(double float_n, double data[N][M], double mean[M], double stddev[M]) {
    #pragma HLS INLINE
    const double eps = 0.1;
    for (int j = 0; j < M; j++) {
        #pragma HLS PIPELINE II=1
        double sum_sq = 0.0;
        for (int i = 0; i < N; i++) {
            #pragma HLS PIPELINE II=1
            #pragma HLS REDUCTION op=+ variable=sum_sq
            double delta = data[i][j] - mean[j];
            sum_sq += delta * delta;
        }
        double variance = sum_sq / float_n;
        double sqrt_var = sqrt(variance);
        stddev[j] = (sqrt_var <= eps) ? 1.0 : sqrt_var;
    }
}

void normalize_data(double float_n, double data[N][M], double mean[M], double stddev[M]) {
    #pragma HLS INLINE
    double sqrt_n = sqrt(float_n);
    for (int i = 0; i < N; i++) {
        #pragma HLS PIPELINE II=1
        for (int j = 0; j < M; j++) {
            #pragma HLS PIPELINE II=1
            data[i][j] = (data[i][j] - mean[j]) / (sqrt_n * stddev[j]);
        }
    }
}

void compute_correlation(double data[N][M], double corr[M][M]) {
    #pragma HLS INLINE
    double buffer1_i[BLOCK_SIZE], buffer1_j[BLOCK_SIZE];
    double buffer2_i[BLOCK_SIZE], buffer2_j[BLOCK_SIZE];
    #pragma HLS ARRAY_PARTITION variable=buffer1_i complete dim=1
    #pragma HLS ARRAY_PARTITION variable=buffer1_j complete dim=1
    #pragma HLS ARRAY_PARTITION variable=buffer2_i complete dim=1
    #pragma HLS ARRAY_PARTITION variable=buffer2_j complete dim=1

    for (int i = 0; i < M; i++) {
        for (int j = i; j < M; j++) {
            #pragma HLS PIPELINE II=1
            corr[i][j] = 0.0;

            // Buffer initialization loop
            for (int k = 0; k < BLOCK_SIZE; k++) {
                #pragma HLS PIPELINE II=1
                buffer1_i[k] = data[k][i];
                buffer1_j[k] = data[k][j];
            }

            // Double buffer processing
            for (int block = 0; block < 2; block++) {
                #pragma HLS UNROLL
                if (block == 0) {
                    // Compute and prefetch overlap
                    for (int k = 0; k < BLOCK_SIZE; k++) {
                        #pragma HLS PIPELINE II=1
                        corr[i][j] += buffer1_i[k] * buffer1_j[k];
                        buffer2_i[k] = data[BLOCK_SIZE + k][i];
                        buffer2_j[k] = data[BLOCK_SIZE + k][j];
                    }
                } else {
                    // Final computation stage
                    for (int k = 0; k < BLOCK_SIZE; k++) {
                        #pragma HLS PIPELINE II=1
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
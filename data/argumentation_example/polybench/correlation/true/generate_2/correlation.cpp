#include "correlation.h"
#include <math.h>

void compute_mean(double float_n, double data[N][M], double mean[M]) {
#pragma HLS INLINE
#pragma HLS ARRAY_PARTITION variable=data cyclic factor=8 dim=2
#pragma HLS ARRAY_PARTITION variable=mean cyclic factor=8

    for (int j = 0; j < M; j++) {
#pragma HLS PIPELINE II=1
#pragma HLS UNROLL factor=8
        double sum = 0.0;
        for (int i = 0; i < N; i++) {
            sum += data[i][j];
        }
        mean[j] = sum / float_n;
    }
}

void compute_stddev(double float_n, double data[N][M], double mean[M], double stddev[M]) {
#pragma HLS INLINE
#pragma HLS ARRAY_PARTITION variable=data cyclic factor=8 dim=2
#pragma HLS ARRAY_PARTITION variable=mean cyclic factor=8
#pragma HLS ARRAY_PARTITION variable=stddev cyclic factor=8

    const double eps = 0.1;
    for (int j = 0; j < M; j++) {
#pragma HLS PIPELINE II=1
#pragma HLS UNROLL factor=8
        double sum_sq = 0.0;
        for (int i = 0; i < N; i++) {
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
#pragma HLS ARRAY_PARTITION variable=data cyclic factor=8 dim=2
#pragma HLS ARRAY_PARTITION variable=mean cyclic factor=8
#pragma HLS ARRAY_PARTITION variable=stddev cyclic factor=8

    double sqrt_n = sqrt(float_n);
    for (int i = 0; i < N; i++) {
#pragma HLS PIPELINE II=1
        for (int j = 0; j < M; j++) {
#pragma HLS UNROLL factor=8
            data[i][j] = (data[i][j] - mean[j]) / (sqrt_n * stddev[j]);
        }
    }
}

void compute_correlation(double data[N][M], double corr[M][M]) {
#pragma HLS INLINE
#pragma HLS ARRAY_PARTITION variable=data cyclic factor=8 dim=2
#pragma HLS ARRAY_PARTITION variable=corr cyclic factor=8 dim=1
#pragma HLS ARRAY_PARTITION variable=corr cyclic factor=8 dim=2

    const int total_blocks = (N + BLOCK_SIZE - 1) / BLOCK_SIZE;
    
    for (int i = 0; i < M; i++) {
        for (int j = i; j < M; j++) {
#pragma HLS PIPELINE II=1
            double corr_val = 0.0;
            
            double buffer_i[2][BLOCK_SIZE];
            double buffer_j[2][BLOCK_SIZE];
#pragma HLS ARRAY_PARTITION variable=buffer_i complete dim=1
#pragma HLS ARRAY_PARTITION variable=buffer_j complete dim=1
#pragma HLS ARRAY_PARTITION variable=buffer_i complete dim=2
#pragma HLS ARRAY_PARTITION variable=buffer_j complete dim=2

            // Initial buffer load
            for (int k = 0; k < BLOCK_SIZE; k++) {
#pragma HLS PIPELINE II=1
                buffer_i[0][k] = k < N ? data[k][i] : 0.0;
                buffer_j[0][k] = k < N ? data[k][j] : 0.0;
            }

            for (int block = 0; block < total_blocks; block++) {
#pragma HLS LOOP_FLATTEN
                int buf_sel = block % 2;
                int next_buf_sel = 1 - buf_sel;
                
                for (int k = 0; k < BLOCK_SIZE; k++) {
#pragma HLS PIPELINE II=1
                    // Compute correlation
                    if (block*BLOCK_SIZE + k < N) {
                        corr_val += buffer_i[buf_sel][k] * buffer_j[buf_sel][k];
                    }
                    
                    // Prefetch next block
                    int next_idx = (block+1)*BLOCK_SIZE + k;
                    buffer_i[next_buf_sel][k] = next_idx < N ? data[next_idx][i] : 0.0;
                    buffer_j[next_buf_sel][k] = next_idx < N ? data[next_idx][j] : 0.0;
                }
            }
            
            corr[i][j] = corr_val;
            corr[j][i] = corr_val;
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
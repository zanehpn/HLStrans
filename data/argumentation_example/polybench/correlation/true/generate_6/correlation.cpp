#include "correlation.h"
#include <math.h>

static void compute_mean_stddev(double float_n, double data[N][M], double mean[M], double stddev[M], double eps) {
    #pragma HLS INLINE
    
    double sum[M] = {0};
    double sum_sq[M] = {0};
    
    #pragma HLS ARRAY_PARTITION variable=sum cyclic factor=8
    #pragma HLS ARRAY_PARTITION variable=sum_sq cyclic factor=8
    #pragma HLS ARRAY_PARTITION variable=data cyclic factor=8 dim=2

    // Initialize sum arrays
    for (int j = 0; j < M; j++) {
        #pragma HLS UNROLL factor=8
        sum[j] = 0.0;
        sum_sq[j] = 0.0;
    }

    // Single-pass statistics calculation
    for (int i = 0; i < N; i++) {
        #pragma HLS PIPELINE II=1
        for (int j = 0; j < M; j++) {
            #pragma HLS UNROLL factor=8
            double val = data[i][j];
            sum[j] += val;
            sum_sq[j] += val * val;
        }
    }

    // Compute final mean and stddev
    for (int j = 0; j < M; j++) {
        #pragma HLS PIPELINE II=1
        mean[j] = sum[j] / float_n;
        double variance = (sum_sq[j] / float_n) - (mean[j] * mean[j]);
        stddev[j] = sqrt(variance);
        stddev[j] = (stddev[j] <= eps) ? 1.0 : stddev[j];
    }
}

static void normalize_data(double float_n, double data[N][M], double mean[M], double stddev[M]) {
    #pragma HLS INLINE
    
    double factor = sqrt(float_n);
    
    #pragma HLS ARRAY_PARTITION variable=data cyclic factor=8 dim=2

    for (int i = 0; i < N; i++) {
        #pragma HLS PIPELINE II=1
        for (int j = 0; j < M; j++) {
            #pragma HLS UNROLL factor=8
            data[i][j] = (data[i][j] - mean[j]) / (factor * stddev[j]);
        }
    }
}

static void compute_correlation(double data[N][M], double corr[M][M]) {
    #pragma HLS INLINE
    
    #pragma HLS ARRAY_PARTITION variable=data cyclic factor=8 dim=2
    #pragma HLS ARRAY_PARTITION variable=corr cyclic factor=8 dim=2

    // Tiled correlation computation
    for (int i = 0; i < M-1; i++) {
        #pragma HLS PIPELINE II=1
        corr[i][i] = 1.0;
        for (int j = i+1; j < M; j++) {
            #pragma HLS PIPELINE II=1
            double sum = 0.0;
            for (int k = 0; k < N; k += TILE_SIZE) {
                #pragma HLS PIPELINE II=1
                for (int kk = 0; kk < TILE_SIZE; kk++) {
                    if (k+kk < N) {
                        sum += data[k+kk][i] * data[k+kk][j];
                    }
                }
            }
            corr[i][j] = sum;
            corr[j][i] = sum;
        }
    }
    corr[M-1][M-1] = 1.0;
}

void correlation(double float_n, double data[100][80], double corr[80][80], double mean[80], double stddev[80]) {
    #pragma HLS INTERFACE m_axi port=float_n bundle=control
    #pragma HLS INTERFACE m_axi port=data depth=8000 bundle=gmem
    #pragma HLS INTERFACE m_axi port=corr depth=6400 bundle=gmem
    #pragma HLS INTERFACE m_axi port=mean depth=80 bundle=gmem
    #pragma HLS INTERFACE m_axi port=stddev depth=80 bundle=gmem
    #pragma HLS INTERFACE s_axilite port=return bundle=control

    double eps = 0.1;
    
    compute_mean_stddev(float_n, data, mean, stddev, eps);
    normalize_data(float_n, data, mean, stddev);
    compute_correlation(data, corr);
}
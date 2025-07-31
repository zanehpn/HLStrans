#include "covariance.h"
#include <hls_stream.h>

static void compute_mean(double float_n, double data[100][80], double mean[80]) {
    #pragma HLS INLINE

    for (int j = 0; j < 80; j++) {
        #pragma HLS PIPELINE II=1
        #pragma HLS ARRAY_PARTITION variable=data cyclic factor=4 dim=1
        
        double sum = 0.0;
        for (int i = 0; i < 100; i++) {
            #pragma HLS UNROLL factor=4
            sum += data[i][j];
        }
        mean[j] = sum / float_n;
    }
}

static void adjust_data(double data[100][80], double mean[80]) {
    #pragma HLS INLINE

    for (int i = 0; i < 100; i++) {
        #pragma HLS PIPELINE II=1
        #pragma HLS ARRAY_PARTITION variable=data cyclic factor=4 dim=2
        #pragma HLS ARRAY_PARTITION variable=mean cyclic factor=4
        
        for (int j = 0; j < 80; j++) {
            #pragma HLS UNROLL factor=4
            data[i][j] -= mean[j];
        }
    }
}

static void compute_cov(double float_n, double data[100][80], double cov[80][80]) {
    #pragma HLS INLINE

    const double float_n_1 = float_n - 1.0;
    for (int i = 0; i < 80; i++) {
        for (int j = i; j < 80; j++) {
            #pragma HLS PIPELINE II=1
            #pragma HLS ARRAY_PARTITION variable=data cyclic factor=4 dim=1
            
            double sum = 0.0;
            for (int k = 0; k < 100; k++) {
                #pragma HLS UNROLL factor=4
                sum += data[k][i] * data[k][j];
            }
            cov[i][j] = sum / float_n_1;
            cov[j][i] = cov[i][j];
        }
    }
}

void covariance(int m, int n, double float_n, double data[100][80], double cov[80][80], double mean[80]) {
    #pragma HLS INTERFACE m_axi port=data depth=8000
    #pragma HLS INTERFACE m_axi port=cov depth=6400
    #pragma HLS INTERFACE m_axi port=mean depth=80
    #pragma HLS ARRAY_PARTITION variable=mean cyclic factor=4
    #pragma HLS ARRAY_PARTITION variable=cov cyclic factor=4 dim=2

    compute_mean(float_n, data, mean);
    adjust_data(data, mean);
    compute_cov(float_n, data, cov);
}
#include <math.h>

void correlation(double float_n, double data[100][80], double corr[80][80], double mean[80], double stddev[80]) {
#pragma HLS INTERFACE m_axi port=data depth=8000
#pragma HLS INTERFACE m_axi port=corr depth=6400
#pragma HLS INTERFACE m_axi port=mean depth=80
#pragma HLS INTERFACE m_axi port=stddev depth=80

    int i, j, k;
    double eps = 0.1;

    // Optimize array storage and partitioning
    #pragma HLS ARRAY_PARTITION variable=data cyclic dim=2 factor=4
    #pragma HLS ARRAY_PARTITION variable=mean cyclic dim=1 factor=4
    #pragma HLS ARRAY_PARTITION variable=stddev cyclic dim=1 factor=4

    // Mean calculation with loop optimizations
    for (j = 0; j < 80; j++) {
        #pragma HLS PIPELINE II=4
        mean[j] = 0.0;
        for (i = 0; i < 100; i++) {
            #pragma HLS UNROLL factor=4
            mean[j] += data[i][j];
        }
        mean[j] /= float_n;
    }

    // Stddev calculation with loop optimizations
    for (j = 0; j < 80; j++) {
        #pragma HLS PIPELINE II=4
        stddev[j] = 0.0;
        for (i = 0; i < 100; i++) {
            #pragma HLS UNROLL factor=4
            stddev[j] += (data[i][j] - mean[j]) * (data[i][j] - mean[j]);
        }
        stddev[j] = sqrt(stddev[j] / float_n);
        stddev[j] = (stddev[j] <= eps) ? 1.0 : stddev[j];
    }

    // Data normalization with optimized pipeline
    for (i = 0; i < 100; i++) {
        #pragma HLS PIPELINE II=2
        for (j = 0; j < 80; j++) {
            #pragma HLS UNROLL factor=4
            data[i][j] = (data[i][j] - mean[j]) / (sqrt(float_n) * stddev[j]);
        }
    }

    // Correlation matrix with optimized loop structure
    for (i = 0; i < 80; i++) {
        #pragma HLS PIPELINE II=2
        corr[i][i] = 1.0;
        for (j = i + 1; j < 80; j++) {
            #pragma HLS PIPELINE II=8
            double temp = 0.0;
            for (k = 0; k < 100; k++) {
                #pragma HLS UNROLL factor=4
                temp += data[k][i] * data[k][j];
            }
            corr[i][j] = temp;
            corr[j][i] = temp;
        }
    }
}
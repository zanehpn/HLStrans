#include <math.h>

void correlation(double float_n, double data[100][80], double corr[80][80], double mean[80], double stddev[80]) {
    #pragma HLS INTERFACE m_axi port=data depth=8000
    #pragma HLS INTERFACE m_axi port=corr depth=6400
    #pragma HLS INTERFACE m_axi port=mean depth=80
    #pragma HLS INTERFACE m_axi port=stddev depth=80

    double eps = 0.1;
    double sqrt_float_n = sqrt(float_n);

    // Simplified mean calculation with loop merging
    MEAN_LOOP:
    for (int j = 0; j < 80; j++) {
        #pragma HLS LOOP_FLATTEN off
        double sum = 0.0;
        for (int i = 0; i < 100; i++) {
            #pragma HLS PIPELINE II=2
            sum += data[i][j];
        }
        mean[j] = sum / float_n;
    }

    // Optimized stddev calculation with reduced operations
    STDDEV_LOOP:
    for (int j = 0; j < 80; j++) {
        #pragma HLS LOOP_FLATTEN off
        double sum_sq = 0.0;
        for (int i = 0; i < 100; i++) {
            #pragma HLS PIPELINE II=4
            double diff = data[i][j] - mean[j];
            sum_sq += diff * diff;
        }
        stddev[j] = sqrt(sum_sq / float_n);
        stddev[j] = (stddev[j] <= eps) ? 1.0 : stddev[j];
    }

    // Streamlined normalization with reduced memory access
    NORM_LOOP:
    for (int i = 0; i < 100; i++) {
        for (int j = 0; j < 80; j++) {
            #pragma HLS PIPELINE II=2
            data[i][j] = (data[i][j] - mean[j]) / (sqrt_float_n * stddev[j]);
        }
    }

    // Optimized correlation with limited unrolling
    CORR_LOOP:
    for (int i = 0; i < 80; i++) {
        #pragma HLS LOOP_FLATTEN off
        corr[i][i] = 1.0;
        for (int j = i+1; j < 80; j++) {
            #pragma HLS PIPELINE II=4
            double sum = 0.0;
            for (int k = 0; k < 100; k++) {
                #pragma HLS UNROLL factor=4
                sum += data[k][i] * data[k][j];
            }
            corr[i][j] = corr[j][i] = sum;
        }
    }
}
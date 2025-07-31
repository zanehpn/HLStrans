void covariance(int m, int n, double float_n, double data[100][80], double cov[80][80], double mean[80]) {
    int i, j, k;

    // Compute mean with pipelined inner loop
    for (j = 0; j < 80; j++) {
        mean[j] = 0.0;
        #pragma HLS PIPELINE II=4
        for (i = 0; i < 100; i++) {
            mean[j] += data[i][j];
        }
        mean[j] /= float_n;
    }

    // Subtract mean with partitioned arrays
    #pragma HLS ARRAY_PARTITION variable=data cyclic factor=4 dim=2
    for (i = 0; i < 100; i++) {
        for (j = 0; j < 80; j++) {
            #pragma HLS PIPELINE II=2
            data[i][j] -= mean[j];
        }
    }

    // Compute covariance with optimized loops
    #pragma HLS ARRAY_PARTITION variable=cov cyclic factor=4 dim=2
    for (i = 0; i < 80; i++) {
        for (j = i; j < 80; j++) {
            cov[i][j] = 0.0;
            #pragma HLS PIPELINE II=8
            for (k = 0; k < 100; k++) {
                cov[i][j] += data[k][i] * data[k][j];
            }
            cov[i][j] /= float_n - 1.0;
            cov[j][i] = cov[i][j];
        }
    }
}
void covariance(int m, int n, double float_n, double data[100][80], double cov[80][80], double mean[80]) {
    #pragma HLS INTERFACE m_axi port=data bundle=gmem
    #pragma HLS INTERFACE m_axi port=mean bundle=gmem1
    #pragma HLS INTERFACE m_axi port=cov bundle=gmem2
    
    // Stage 1: Compute mean
    MEAN:for (int j = 0; j < 80; j++) {
        #pragma HLS PIPELINE II=1
        mean[j] = 0.0;
        for (int i = 0; i < 100; i++) {
            mean[j] += data[i][j];
        }
        mean[j] /= float_n;
    }

    // Stage 2: Normalize data
    NORM:for (int i = 0; i < 100; i++) {
        #pragma HLS PIPELINE II=1
        for (int j = 0; j < 80; j++) {
            data[i][j] -= mean[j];
        }
    }

    // Stage 3: Compute covariance
    COV:for (int i = 0; i < 80; i++) {
        for (int j = i; j < 80; j++) {
            #pragma HLS PIPELINE II=1
            cov[i][j] = 0.0;
            for (int k = 0; k < 100; k++) {
                cov[i][j] += data[k][i] * data[k][j];
            }
            cov[i][j] /= float_n - 1.0;
            cov[j][i] = cov[i][j];
        }
    }
}
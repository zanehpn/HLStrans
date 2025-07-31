void covariance(int m, int n, double float_n, double data[100][80], double cov[80][80], double mean[80]) {
#pragma HLS INTERFACE ap_hs port=float_n
#pragma HLS INTERFACE ap_fifo port=data
#pragma HLS INTERFACE ap_fifo port=mean
#pragma HLS INTERFACE ap_fifo port=cov

    double local_mean[80];
#pragma HLS ARRAY_PARTITION variable=local_mean cyclic factor=8 dim=1

    double data_adj[100][80];
#pragma HLS ARRAY_PARTITION variable=data_adj cyclic factor=8 dim=2

    double local_cov[80][80];
#pragma HLS ARRAY_PARTITION variable=local_cov cyclic factor=8 dim=1

    // Stage 1: Compute mean
    MEAN_LOOP: for (int j = 0; j < 80; j++) {
        local_mean[j] = 0.0;
        for (int i = 0; i < 100; i++) {
#pragma HLS PIPELINE II=1
            local_mean[j] += data[i][j];
        }
        local_mean[j] /= float_n;
    }

    // Stage 2: Adjust data
    ADJUST_LOOP: for (int i = 0; i < 100; i++) {
        for (int j = 0; j < 80; j++) {
#pragma HLS PIPELINE II=1
            data_adj[i][j] = data[i][j] - local_mean[j];
        }
    }

    // Stage 3: Compute covariance
    COV_LOOP: for (int i = 0; i < 80; i++) {
        for (int j = i; j < 80; j++) {
#pragma HLS PIPELINE II=1
            local_cov[i][j] = 0.0;
            for (int k = 0; k < 100; k++) {
                local_cov[i][j] += data_adj[k][i] * data_adj[k][j];
            }
            local_cov[i][j] /= float_n - 1.0;
            local_cov[j][i] = local_cov[i][j];
        }
    }

    // Write final results to output ports
    WRITE_MEAN: for (int j = 0; j < 80; j++) {
#pragma HLS PIPELINE II=1
        mean[j] = local_mean[j];
    }

    WRITE_COV: for (int i = 0; i < 80; i++) {
        for (int j = 0; j < 80; j++) {
#pragma HLS PIPELINE II=1
            cov[i][j] = local_cov[i][j];
        }
    }
}
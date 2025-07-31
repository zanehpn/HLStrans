void covariance(int m, int n, double float_n, double data[100][80], double cov[80][80], double mean[80]) {
    int i, j, k;

    // Compute mean
    for (j = 0; j < 80; j++) {
        mean[j] = 0.0;
        for (i = 0; i < 100; i++) {
            mean[j] += data[i][j];
        }
        mean[j] /= float_n;
    }

    // Normalize data
    for (i = 0; i < 100; i++) {
        for (j = 0; j < 80; j++) {
            data[i][j] -= mean[j];
        }
    }

    // Initialize covariance matrix
    for (i = 0; i < 80; i++) {
        for (j = i; j < 80; j++) {
            cov[i][j] = 0.0;
        }
    }

    // Optimized covariance calculation with loop reordering
    for (k = 0; k < 100; k++) {
        for (i = 0; i < 80; i++) {
            double temp = data[k][i];
            for (j = i; j < 80; j++) {
                cov[i][j] += temp * data[k][j];
            }
        }
    }

    // Finalize covariance values
    for (i = 0; i < 80; i++) {
        for (j = i; j < 80; j++) {
            cov[i][j] /= (float_n - 1.0);
            cov[j][i] = cov[i][j];
        }
    }
}
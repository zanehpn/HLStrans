void covariance(int m, int n, double float_n, double data[100][80], double cov[80][80], double mean[80]) {
    int i, j, k;
    double data_t[80][100];

    // Transpose data matrix for column-wise access
    for (i = 0; i < 80; ++i) {
        for (k = 0; k < 100; ++k) {
            data_t[i][k] = data[k][i];
        }
    }

    // Calculate mean of columns
    for (i = 0; i < 80; ++i) {
        mean[i] = 0.0;
        for (k = 0; k < 100; ++k) {
            mean[i] += data_t[i][k];
        }
        mean[i] /= float_n;
    }

    // Subtract mean from transposed data
    for (i = 0; i < 80; ++i) {
        for (k = 0; k < 100; ++k) {
            data_t[i][k] -= mean[i];
        }
    }

    // Calculate covariance matrix
    for (i = 0; i < 80; ++i) {
        for (j = i; j < 80; ++j) {
            double sum = 0.0;
            for (k = 0; k < 100; ++k) {
                sum += data_t[i][k] * data_t[j][k];
            }
            cov[i][j] = sum / (float_n - 1.0);
            cov[j][i] = cov[i][j];
        }
    }
}
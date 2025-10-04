// MALLOC_VARIANT
#include <cmath>
#include <cstdint>

#define N 1024

void dct_1d(const double input[N], double output[N]) {
    const double PI = 3.14159265358979323846;
    for (int k = 0; k < N; k++) {
        double sum = 0.0;
        for (int n = 0; n < N; n++) {
            sum += input[n] * std::cos(PI / N * (n + 0.5) * k);
        }
        output[k] = sum;
    }
}

void dct_2d(const double input[N][N], double output[N][N]) {
    double (*temp)[N] = new double[N][N];

    for (int i = 0; i < N; i++) {
        dct_1d(input[i], temp[i]);
    }

    double* col_in = new double[N];
    double* col_out = new double[N];
    for (int j = 0; j < N; j++) {
        for (int i = 0; i < N; i++) {
            col_in[i] = temp[i][j];
        }
        dct_1d(col_in, col_out);
        for (int i = 0; i < N; i++) {
            output[i][j] = col_out[i];
        }
    }

    delete[] col_in;
    delete[] col_out;
    delete[] temp;
}

void quantize(const double input[N][N], int output[N][N], const int q_table[N][N]) {
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) {
            output[i][j] = std::lround(input[i][j] / q_table[i][j]);
        }
    }
}

void jpeg_compression(const double input[N][N], int output[N][N], const int q_table[N][N]) {
    double (*dct_output)[N] = new double[N][N];
    dct_2d(input, dct_output);
    quantize(dct_output, output, q_table);
    delete[] dct_output;
}

// Top function name: jpeg_compression

// contents of jpeg_compression_tb.cpp
#include <iostream>
#include <cmath>
#include <cassert>
#define N 1024
void dct_1d(const double input[N], double output[N]);
void quantize(const double input[N][N], int output[N][N], const int q_table[N][N]);
// Include the source to avoid duplicate symbol errors since there's no main() defined there.
void jpeg_compression(const double input[N][N], int output[N][N], const int q_table[N][N]);

// Utility function for approximate equality checks
static bool approxEq(double a, double b, double tol = 1e-9) {
    return std::fabs(a - b) <= tol * std::max(1.0, std::max(std::fabs(a), std::fabs(b)));
}

int main() {
    const double PI = 3.14159265358979323846;

    // Test 1: 1D DCT with impulse input
    // Input: x[0] = 1, x[n!=0] = 0
    // Expected: X[k] = cos(PI/N * (0.5) * k)
    {
        std::cout << "Running Test 1: dct_1d impulse response..." << std::endl;
        double* imp_in = new double[N];
        double* imp_out = new double[N];
        for (int i = 0; i < N; ++i) imp_in[i] = 0.0;
        imp_in[0] = 1.0;

        dct_1d(imp_in, imp_out);

        // Check a few sample k values
        int sampleKs[] = {0, 1, 2, 3, 4, N / 4, N / 2, (3 * N) / 4};
        for (int idx = 0; idx < (int)(sizeof(sampleKs) / sizeof(sampleKs[0])); ++idx) {
            int k = sampleKs[idx];
            double expected = std::cos(PI / N * (0.5) * k);
            bool ok = approxEq(imp_out[k], expected, 1e-9);
            std::cout << "  k=" << k << " output=" << imp_out[k] << " expected=" << expected
                      << " -> " << (ok ? "PASS" : "FAIL") << std::endl;
            assert(ok);
        }

        delete[] imp_in;
        delete[] imp_out;
    }

    // Test 2: 1D DCT with constant input
    // Input: x[n] = C for all n
    // Expected: DC term X[0] = C * N, all AC terms X[k>0] = 0 (within numerical tolerance)
    {
        std::cout << "Running Test 2: dct_1d constant input..." << std::endl;
        double* const_in = new double[N];
        double* const_out = new double[N];
        double C = 2.0;
        for (int i = 0; i < N; ++i) const_in[i] = C;

        dct_1d(const_in, const_out);

        // Check DC term
        double expected_dc = C * N;
        bool dc_ok = approxEq(const_out[0], expected_dc, 1e-9);
        std::cout << "  X[0]=" << const_out[0] << " expected=" << expected_dc
                  << " -> " << (dc_ok ? "PASS" : "FAIL") << std::endl;
        assert(dc_ok);

        // Check a few AC terms near zero
        for (int k = 1; k <= 5; ++k) {
            bool ac_ok = approxEq(const_out[k], 0.0, 1e-9);
            std::cout << "  X[" << k << "]=" << const_out[k] << " expected ~ 0"
                      << " -> " << (ac_ok ? "PASS" : "FAIL") << std::endl;
            assert(ac_ok);
        }

        delete[] const_in;
        delete[] const_out;
    }

    // Test 3: Quantization function
    // Input: Provide a few non-zero coefficients and q_table = 1 everywhere
    // Expected: output[i][j] = round(input[i][j] / 1) = round(input[i][j])
    {
        std::cout << "Running Test 3: quantize function..." << std::endl;

        // Allocate 2D arrays on heap with proper types
        double (*quant_in)[N] = new double[N][N];
        int (*quant_out)[N] = new int[N][N];
        int (*q_table)[N] = new int[N][N];

        // Initialize all to zero and q_table to 1
        for (int i = 0; i < N; ++i) {
            for (int j = 0; j < N; ++j) {
                quant_in[i][j] = 0.0;
                q_table[i][j] = 1;
            }
        }

        // Set a few test values
        quant_in[0][0] = 3.6;
        quant_in[0][1] = -2.4;
        quant_in[10][10] = 0.49;
        quant_in[100][100] = -0.51;

        quantize(quant_in, quant_out, q_table);

        // Check the specific entries
        assert(quant_out[0][0] == 4);
        assert(quant_out[0][1] == -2);
        assert(quant_out[10][10] == 0);
        assert(quant_out[100][100] == -1);

        std::cout << "  quant_out[0][0]=" << quant_out[0][0] << " expected=4 -> PASS" << std::endl;
        std::cout << "  quant_out[0][1]=" << quant_out[0][1] << " expected=-2 -> PASS" << std::endl;
        std::cout << "  quant_out[10][10]=" << quant_out[10][10] << " expected=0 -> PASS" << std::endl;
        std::cout << "  quant_out[100][100]=" << quant_out[100][100] << " expected=-1 -> PASS" << std::endl;

        delete[] quant_in;
        delete[] quant_out;
        delete[] q_table;
    }

    std::cout << "All tests passed." << std::endl;
    return 0;
}
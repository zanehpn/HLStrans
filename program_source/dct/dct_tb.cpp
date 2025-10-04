// contents of dct_tb.cpp
#include <iostream>
#include <cstdint>
#include <cmath>
#include <random>
#include <vector>
#include <limits>

// Include the DUT (Device Under Test)
#include "dct.cpp"

// Helper to compare int16 values with tolerance
bool equal_with_tol(int16_t a, int16_t b, int tol = 1) {
    int diff = static_cast<int>(a) - static_cast<int>(b);
    if (diff < 0) diff = -diff;
    return diff <= tol;
}

// Print a summary of output array: first few coefficients and min/max
void print_output_summary(const int16_t out[N], const char* label, size_t count = 10) {
    int16_t minv = std::numeric_limits<int16_t>::max();
    int16_t maxv = std::numeric_limits<int16_t>::min();
    for (int i = 0; i < N; ++i) {
        if (out[i] < minv) minv = out[i];
        if (out[i] > maxv) maxv = out[i];
    }
    std::cout << label << " first " << count << " coefficients: ";
    for (size_t i = 0; i < count && i < N; ++i) {
        std::cout << out[i] << (i + 1 < count ? ", " : "");
    }
    std::cout << "\n" << label << " min=" << minv << " max=" << maxv << "\n";
}

int main() {
    std::cout << "Running DCT testbench with N=" << N << "\n";

    // Common buffers
    static int16_t input[N];
    static int16_t output[N];

    const double PI = 3.14159265358979323846;

    // Test 1: Zero input should produce all-zero output
    // Explanation: DCT of an all-zero signal is zero for all coefficients.
    for (int i = 0; i < N; ++i) input[i] = 0;
    dct(input, output);
    bool zero_ok = true;
    for (int i = 0; i < N; ++i) {
        if (output[i] != 0) {
            zero_ok = false;
            break;
        }
    }
    std::cout << "Test 1 (Zero input) " << (zero_ok ? "PASS" : "FAIL") << "\n";
    print_output_summary(output, "Zero input");

    // Test 2: Impulse input at index p with amplitude A
    // Explanation: With an impulse at position p, coefficient i is:
    //   output[i] = int16_t(A * cos(PI*(p+0.5)*i/N) * (i==0 ? sqrt(1/N) : sqrt(2/N)))
    {
        int p = 0;
        int A = 1000;
        for (int j = 0; j < N; ++j) input[j] = 0;
        input[p] = static_cast<int16_t>(A);
        dct(input, output);

        bool impulse_ok = true;
        for (int i = 0; i < N; ++i) {
            double c = std::cos(PI * (p + 0.5) * i / N);
            double scale = (i == 0) ? std::sqrt(1.0 / N) : std::sqrt(2.0 / N);
            int16_t expected = static_cast<int16_t>(A * c * scale);
            if (output[i] != expected) {
                impulse_ok = false;
                // Optional: Break on first mismatch to keep output concise
                break;
            }
        }
        std::cout << "Test 2 (Impulse at p=0, A=1000) " << (impulse_ok ? "PASS" : "FAIL") << "\n";
        print_output_summary(output, "Impulse p=0");

        // Impulse at a different index (p=N/4) to test position dependence
        p = N / 4;
        for (int j = 0; j < N; ++j) input[j] = 0;
        input[p] = static_cast<int16_t>(A);
        dct(input, output);

        bool impulse2_ok = true;
        for (int i = 0; i < N; ++i) {
            double c = std::cos(PI * (p + 0.5) * i / N);
            double scale = (i == 0) ? std::sqrt(1.0 / N) : std::sqrt(2.0 / N);
            int16_t expected = static_cast<int16_t>(A * c * scale);
            if (output[i] != expected) {
                impulse2_ok = false;
                break;
            }
        }
        std::cout << "Test 2b (Impulse at p=N/4, A=1000) " << (impulse2_ok ? "PASS" : "FAIL") << "\n";
        print_output_summary(output, "Impulse p=N/4");
    }

    // Test 3: Constant input with amplitude A
    // Explanation: DCT of constant signal yields only DC coefficient:
    //   output[0] = int16_t(A * sqrt(N)) and output[i>0] = 0
    {
        int A = 1000;
        for (int j = 0; j < N; ++j) input[j] = static_cast<int16_t>(A);
        dct(input, output);

        int16_t expected_dc = static_cast<int16_t>(A * std::sqrt(static_cast<double>(N)));
        bool constant_ok = (output[0] == expected_dc);
        for (int i = 1; i < N && constant_ok; ++i) {
            if (output[i] != 0) constant_ok = false;
        }
        std::cout << "Test 3 (Constant input A=1000) " << (constant_ok ? "PASS" : "FAIL") << "\n";
        std::cout << "Expected DC=" << expected_dc << " Got DC=" << output[0] << "\n";
        print_output_summary(output, "Constant input");
    }

    // Test 4: Single cosine basis at frequency k
    // Explanation: Input[j] = A * cos(PI*(j+0.5)*k/N)
    // For k>0, DCT should yield:
    //   output[k] = int16_t(A * sqrt(N/2))
    //   output[0] = 0 and output[i != k] = 0 (up to numerical rounding)
    {
        int k = 5;
        int A = 1000;
        for (int j = 0; j < N; ++j) {
            double theta = PI * (j + 0.5) * k / N;
            input[j] = static_cast<int16_t>(A * std::cos(theta));
        }
        dct(input, output);

        int16_t expected_k = static_cast<int16_t>(A * std::sqrt(static_cast<double>(N) / 2.0));
        bool basis_ok = true;

        // DC should be ~0
        if (!equal_with_tol(output[0], 0, 1)) basis_ok = false;

        // k-th coefficient should match expected within small tolerance
        if (!equal_with_tol(output[k], expected_k, 1)) basis_ok = false;

        // All other coefficients should be ~0
        for (int i = 1; i < N; ++i) {
            if (i == k) continue;
            if (!equal_with_tol(output[i], 0, 1)) {
                basis_ok = false;
                break;
            }
        }
        std::cout << "Test 4 (Single cosine basis k=5, A=1000) " << (basis_ok ? "PASS" : "FAIL") << "\n";
        std::cout << "Expected coeff[" << k << "]=" << expected_k << " Got " << output[k] << "\n";
        print_output_summary(output, "Cosine basis k=5");
    }

    // Test 5: Random input sanity check
    // Explanation: Generate bounded random samples, run DCT, and print summary.
    {
        std::mt19937 rng(42); // fixed seed for reproducibility
        std::uniform_int_distribution<int> dist(-2000, 2000);
        for (int j = 0; j < N; ++j) input[j] = static_cast<int16_t>(dist(rng));

        dct(input, output);
        std::cout << "Test 5 (Random input) executed.\n";
        print_output_summary(output, "Random input");
    }

    std::cout << "DCT testbench completed.\n";
    return 0;
}
// contents of fir_filter_tb.cpp
#include <iostream>
#include <cassert>
#include <random>

// Include the source under test (no main() defined there)
#include "fir_filter.cpp"

// Golden/reference implementation mirroring the DUT behavior
static void fir_filter_golden(const ap_int<16> input[N], ap_int<16> output[N], const ap_int<16> coeffs[64]) {
    for (int i = 0; i < N; i++) {
        ap_int<32> acc = 0;
        for (int j = 0; j < 64; j++) {
            if (i - j >= 0) {
                acc += input[i - j] * coeffs[j];
            }
        }
        output[i] = acc >> 15;
    }
}

static void init_coeffs_avg8(ap_int<16> coeffs[64]) {
    // Define a simple 8-tap moving average with coeff = 4096 (0.125 in Q1.15), rest zero.
    for (int j = 0; j < 64; ++j) coeffs[j] = 0;
    for (int j = 0; j < 8; ++j) coeffs[j] = 4096;
}

static int compare_arrays(const ap_int<16> a[N], const ap_int<16> b[N], int max_report = 10) {
    int mismatches = 0;
    for (int i = 0; i < N; ++i) {
        if (a[i] != b[i]) {
            if (mismatches < max_report) {
                std::cerr << "  Mismatch at index " << i << ": got " << (int)a[i] << ", expected " << (int)b[i] << "\n";
            }
            mismatches++;
        }
    }
    return mismatches;
}

static void print_first(const char* label, const ap_int<16> arr[N], int count = 16) {
    std::cout << label << ":";
    for (int i = 0; i < count; ++i) {
        std::cout << " " << (int)arr[i];
    }
    std::cout << "\n";
}

static void test_zero_input() {
    std::cout << "[Test 1] Zero input -> output should be all zeros\n";
    ap_int<16> input[N];
    ap_int<16> output[N];
    ap_int<16> coeffs[64];
    init_coeffs_avg8(coeffs);

    // Initialize inputs to zero
    for (int i = 0; i < N; ++i) input[i] = 0;

    // Run DUT
    fir_filter(input, output, coeffs);

    // Check outputs are zero
    for (int i = 0; i < N; ++i) {
        assert(output[i] == 0 && "Output should be zero for zero input");
    }

    print_first("  Output (first 16)", output);
    std::cout << "  PASS\n";
}

static void test_impulse_response() {
    std::cout << "[Test 2] Impulse input -> output should equal scaled coefficients (Q1.15)\n";
    ap_int<16> input[N];
    ap_int<16> output[N];
    ap_int<16> coeffs[64];
    ap_int<16> expected[N];

    init_coeffs_avg8(coeffs);

    // Prepare impulse input with amplitude 2^14 (0.5 in Q1.15) to avoid boundary issues
    for (int i = 0; i < N; ++i) {
        input[i] = 0;
        expected[i] = 0;
    }
    input[0] = 1 << 14; // 16384

    // Expected impulse response: output[i] = (coeffs[i] * 16384) >> 15 = coeffs[i] >> 1 for i<64
    for (int i = 0; i < 64 && i < N; ++i) {
        expected[i] = coeffs[i] >> 1;
    }

    // Run DUT
    fir_filter(input, output, coeffs);

    int mismatches = compare_arrays(output, expected);
    print_first("  Output (first 16)", output);
    print_first("  Expected (first 16)", expected);
    assert(mismatches == 0 && "Impulse response mismatch");
    std::cout << "  PASS\n";
}

static void test_step_response() {
    std::cout << "[Test 3] Step input -> output should ramp to steady-state sum\n";
    ap_int<16> input[N];
    ap_int<16> output[N];
    ap_int<16> coeffs[64];
    ap_int<16> expected[N];
    init_coeffs_avg8(coeffs);

    // Step input with amplitude 2^14 (0.5 in Q1.15)
    for (int i = 0; i < N; ++i) input[i] = (1 << 14);

    // Expected: ramp for first 8 samples, then steady state
    // For i < 8: sum_{k=0..i} coeff[k] = (i+1)*4096; expected = ((i+1)*4096 * 16384) >> 15 = (i+1)*2048
    // For i >= 8: sum = 8*4096 = 32768; expected = (32768 * 16384) >> 15 = 16384
    for (int i = 0; i < N; ++i) {
        if (i < 8) {
            expected[i] = (i + 1) * 2048;
        } else {
            expected[i] = 16384;
        }
    }

    // Run DUT
    fir_filter(input, output, coeffs);

    int mismatches = compare_arrays(output, expected);
    print_first("  Output (first 16)", output);
    print_first("  Expected (first 16)", expected);
    assert(mismatches == 0 && "Step response mismatch");
    std::cout << "  PASS\n";
}

static void test_random_inputs() {
    std::cout << "[Test 4] Random inputs and coefficients -> compare against golden model\n";
    ap_int<16> input[N];
    ap_int<16> output[N];
    ap_int<16> expected[N];
    ap_int<16> coeffs[64];

    // Use bounded random values to avoid overflow of the 32-bit accumulator:
    // abs(sum(coeffs)) * max(abs(input)) <= ~2e9
    std::mt19937 rng(42);
    std::uniform_int_distribution<int> dist_in(-1024, 1024);
    std::uniform_int_distribution<int> dist_coeff(-512, 512);

    for (int i = 0; i < N; ++i) input[i] = (int16_t)dist_in(rng);
    for (int j = 0; j < 64; ++j) coeffs[j] = (int16_t)dist_coeff(rng);

    // Run DUT and Golden
    fir_filter(input, output, coeffs);
    fir_filter_golden(input, expected, coeffs);

    int mismatches = compare_arrays(output, expected);
    print_first("  Output (first 16)", output);
    print_first("  Golden  (first 16)", expected);
    assert(mismatches == 0 && "Random test mismatch vs golden");
    std::cout << "  PASS\n";
}

int main() {
    std::cout << "Running FIR filter testbench...\n";
    test_zero_input();     // All-zero input
    test_impulse_response(); // Impulse response with 0.5 amplitude
    test_step_response();  // Step response with 0.5 amplitude
    test_random_inputs();  // Randomized verification against golden

    std::cout << "All tests PASSED.\n";
    return 0;
}
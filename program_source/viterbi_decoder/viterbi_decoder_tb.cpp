// contents of viterbi_decoder_tb.cpp

#include <iostream>
#include <random>
#include <cassert>
#include <ap_int.h>

// The DUT is defined in viterbi_decoder.cpp as:
// void viterbi_decoder(ap_uint<1> input[N], ap_uint<1> output[N]);
// We declare it here and rely on linking with viterbi_decoder.cpp.
extern void viterbi_decoder(ap_uint<1> input[], ap_uint<1> output[]);

// Use the same N as the DUT (1024)
static constexpr int N = 1024;

// Helper function to compare arrays and report mismatches
bool compare_outputs(const ap_uint<1> expected[], const ap_uint<1> actual[], int n, const char* test_name, bool verbose = false) {
    int mismatches = 0;
    for (int i = 0; i < n; ++i) {
        if (expected[i] != actual[i]) {
            if (mismatches < 10) {
                std::cout << "[Mismatch] " << test_name << " at index " << i
                          << ": expected=" << (unsigned)expected[i]
                          << " actual=" << (unsigned)actual[i] << "\n";
            }
            ++mismatches;
        }
    }
    if (verbose) {
        std::cout << "[Info] " << test_name << " first 16 outputs: ";
        for (int i = 0; i < 16 && i < n; ++i) {
            std::cout << (unsigned)actual[i];
        }
        std::cout << "\n";
    }
    if (mismatches == 0) {
        std::cout << "[PASS] " << test_name << " passed with no mismatches.\n";
        return true;
    } else {
        std::cout << "[FAIL] " << test_name << " failed with " << mismatches << " mismatches.\n";
        return false;
    }
}

int main() {
    // Allocate input and output buffers
    ap_uint<1> input[N];
    ap_uint<1> output[N];
    ap_uint<1> expected[N];

    int total_tests = 0;
    int passed_tests = 0;

    // Test 1: All zeros input.
    // Expectation: Given the implementation, the decoder effectively forwards input to output.
    // So, for all-zero input, the output should be all zeros.
    for (int i = 0; i < N; ++i) {
        input[i] = ap_uint<1>(0);
        expected[i] = ap_uint<1>(0);
        output[i] = ap_uint<1>(0);
    }
    viterbi_decoder(input, output);
    total_tests++;
    if (compare_outputs(expected, output, N, "All zeros", true)) passed_tests++;

    // Test 2: All ones input.
    // Expectation: The decoder should forward the input; output should be all ones.
    for (int i = 0; i < N; ++i) {
        input[i] = ap_uint<1>(1);
        expected[i] = ap_uint<1>(1);
        output[i] = ap_uint<1>(0);
    }
    viterbi_decoder(input, output);
    total_tests++;
    if (compare_outputs(expected, output, N, "All ones", true)) passed_tests++;

    // Test 3: Alternating 0/1 pattern.
    // Expectation: Output should match the alternating input pattern.
    for (int i = 0; i < N; ++i) {
        input[i] = ap_uint<1>(i & 1);
        expected[i] = ap_uint<1>(i & 1);
        output[i] = ap_uint<1>(0);
    }
    viterbi_decoder(input, output);
    total_tests++;
    if (compare_outputs(expected, output, N, "Alternating 0101...", true)) passed_tests++;

    // Test 4: Pseudorandom input with fixed seed.
    // Expectation: Output should match the random input bit-by-bit.
    {
        std::mt19937 rng(12345);
        std::uniform_int_distribution<int> bit(0, 1);
        for (int i = 0; i < N; ++i) {
            int b = bit(rng);
            input[i] = ap_uint<1>(b);
            expected[i] = ap_uint<1>(b);
            output[i] = ap_uint<1>(0);
        }
        viterbi_decoder(input, output);
        total_tests++;
        if (compare_outputs(expected, output, N, "Pseudorandom", true)) passed_tests++;
    }

    // Test 5: Burst pattern (zeros with a burst of ones in the middle).
    // Expectation: Output should mirror the burst exactly as in input.
    for (int i = 0; i < N; ++i) {
        ap_uint<1> val = 0;
        if (i >= 100 && i < 132) val = 1; // a burst of 32 ones starting at index 100
        input[i] = val;
        expected[i] = val;
        output[i] = ap_uint<1>(0);
    }
    viterbi_decoder(input, output);
    total_tests++;
    if (compare_outputs(expected, output, N, "Burst of ones", true)) passed_tests++;

    std::cout << "Summary: " << passed_tests << " / " << total_tests << " tests passed.\n";
    // Use assert to indicate overall success/failure in automated environments.
    assert(passed_tests == total_tests && "One or more tests failed.");

    return 0;
}
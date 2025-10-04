// contents of deadbeat_control_tb.cpp

#include <iostream>
#include <cassert>

// Include the DUT source to avoid linker issues and ensure consistent N/ap_int types
#include "deadbeat_control.cpp"

// Helper: compute expected output using the same convolution with ap_int types
static void compute_expected(const ap_int<16> in[N], const ap_int<16> coef[N], ap_int<16> exp_out[N]) {
    for (int i = 0; i < N; ++i) {
        ap_int<32> acc = 0;
        for (int j = 0; j <= i; ++j) {
            acc += in[j] * coef[i - j];
        }
        exp_out[i] = acc; // truncation to 16-bit matches DUT behavior
    }
}

// Helper: compare arrays and return number of mismatches; optionally print first few mismatches
static int compare_outputs(const ap_int<16> got[N], const ap_int<16> exp[N], const char* tag, int print_limit = 5) {
    int mismatches = 0;
    int printed = 0;
    for (int i = 0; i < N; ++i) {
        if (got[i] != exp[i]) {
            ++mismatches;
            if (printed < print_limit) {
                std::cout << "[" << tag << "] Mismatch at i=" << i
                          << " expected=" << (int)exp[i] << " got=" << (int)got[i] << "\n";
                ++printed;
            }
        }
    }
    return mismatches;
}

// Utility: zero-initialize arrays
static void zero_arrays(ap_int<16> a[N]) {
    for (int i = 0; i < N; ++i) a[i] = 0;
}

int main() {
    // Common buffers
    ap_int<16> input[N];
    ap_int<16> coeff[N];
    ap_int<16> output[N];
    ap_int<16> expected[N];

    int total_mismatches = 0;

    // Test 1: All zeros
    // Expectation: output should be all zeros
    zero_arrays(input);
    zero_arrays(coeff);
    zero_arrays(output);
    zero_arrays(expected);

    deadbeat_control(input, output, coeff);
    compute_expected(input, coeff, expected);
    {
        int mism = compare_outputs(output, expected, "Test1_AllZeros");
        total_mismatches += mism;
        std::cout << "Test1_AllZeros: " << (mism == 0 ? "PASS" : "FAIL") << "\n";
    }

    // Test 2: Unit impulse input, patterned coefficients
    // input[0] = 1, others 0; output[i] should equal coeff[i] (truncated to 16-bit) for all i
    zero_arrays(input);
    zero_arrays(coeff);
    zero_arrays(output);
    zero_arrays(expected);

    input[0] = 1;
    // Simple alternating pattern in first few taps
    coeff[0] = 1;
    coeff[1] = -2;
    coeff[2] = 3;
    coeff[3] = -4;
    coeff[4] = 5;
    // Others remain zero

    deadbeat_control(input, output, coeff);
    compute_expected(input, coeff, expected);
    {
        int mism = compare_outputs(output, expected, "Test2_ImpulseInput");
        total_mismatches += mism;
        // Additionally, spot-check first few elements
        assert(output[0] == coeff[0]);
        assert(output[1] == coeff[1]);
        assert(output[2] == coeff[2]);
        assert(output[3] == coeff[3]);
        assert(output[4] == coeff[4]);
        std::cout << "Test2_ImpulseInput: " << (mism == 0 ? "PASS" : "FAIL") << "\n";
    }

    // Test 3: Delta coefficient, arbitrary input
    // coeff[0] = 1, others 0; output should equal input
    zero_arrays(input);
    zero_arrays(coeff);
    zero_arrays(output);
    zero_arrays(expected);

    coeff[0] = 1;
    // Fill input with a mix of positive/negative values
    input[0] = 0;
    input[1] = 123;
    input[2] = -321;
    input[3] = 32767;  // max 16-bit signed
    input[4] = -32768; // min 16-bit signed
    input[5] = 1000;
    input[6] = -1000;
    // The rest remain zero

    deadbeat_control(input, output, coeff);
    compute_expected(input, coeff, expected);
    {
        int mism = compare_outputs(output, expected, "Test3_DeltaCoeff");
        total_mismatches += mism;
        // Spot-check known positions
        for (int i = 0; i < 7; ++i) {
            assert(output[i] == input[i]);
        }
        std::cout << "Test3_DeltaCoeff: " << (mism == 0 ? "PASS" : "FAIL") << "\n";
    }

    // Test 4: Overflow/truncation behavior
    // Use values that cause 32-bit accumulation to exceed 16-bit range and verify wrap-around
    zero_arrays(input);
    zero_arrays(coeff);
    zero_arrays(output);
    zero_arrays(expected);

    input[0] = 2;
    input[1] = 2;
    coeff[0] = 20000; // 2 * 20000 = 40000 -> wraps to 40000 - 65536 = -25536 in 16 bits
    coeff[1] = 20000; // output[1] = 2*20000 + 2*20000 = 80000 -> 80000 - 65536 = 14464

    deadbeat_control(input, output, coeff);
    compute_expected(input, coeff, expected);
    {
        int mism = compare_outputs(output, expected, "Test4_OverflowWrap");
        total_mismatches += mism;
        // Spot-check first two outputs for expected wrap-around
        ap_int<32> acc0 = (ap_int<32>)input[0] * coeff[0];
        ap_int<16> exp0 = acc0;
        ap_int<32> acc1 = (ap_int<32>)input[0] * coeff[1] + (ap_int<32>)input[1] * coeff[0];
        ap_int<16> exp1 = acc1;

        assert(output[0] == exp0);
        assert(output[1] == exp1);

        std::cout << "Test4_OverflowWrap: " << (mism == 0 ? "PASS" : "FAIL") << "\n";
        std::cout << "  output[0]=" << (int)output[0] << " expected=" << (int)exp0 << "\n";
        std::cout << "  output[1]=" << (int)output[1] << " expected=" << (int)exp1 << \n";
    }

    // Summary
    if (total_mismatches == 0) {
        std::cout << "All tests PASSED.\n";
        return 0;
    } else {
        std::cout << "Total mismatches across all tests: " << total_mismatches << "\n";
        return 1;
    }
}
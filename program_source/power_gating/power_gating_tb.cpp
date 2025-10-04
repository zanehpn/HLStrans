// contents of power_gating_tb.cpp
#include <iostream>
#include <cassert>

// Forward declaration of the function under test.
// Compile this testbench together with power_gating.cpp.
extern void power_gating(int input[], int output[], int threshold);

constexpr int ARRAY_SIZE_TB = 1024;

static void print_sample(const int output[], int count = 16) {
    std::cout << "Sample output: ";
    for (int i = 0; i < count; ++i) {
        std::cout << output[i] << (i + 1 < count ? ", " : "\n");
    }
}

int main() {
    int input[ARRAY_SIZE_TB];
    int output[ARRAY_SIZE_TB];

    // Test 1: All values below threshold -> expect all zeros
    {
        int threshold = 2000;
        for (int i = 0; i < ARRAY_SIZE_TB; ++i) {
            input[i] = i; // 0..1023, all below threshold
        }

        power_gating(input, output, threshold);

        for (int i = 0; i < ARRAY_SIZE_TB; ++i) {
            assert(output[i] == 0);
        }
        std::cout << "Test 1 passed: All outputs are zero when input <= threshold.\n";
        print_sample(output);
    }

    // Test 2: Mixed pass/fail with boundary condition (strict > threshold)
    // Inputs 0..1023, threshold = 512 -> indices > 512 should pass, 512 and below should be zero
    {
        int threshold = 512;
        for (int i = 0; i < ARRAY_SIZE_TB; ++i) {
            input[i] = i;
        }

        power_gating(input, output, threshold);

        for (int i = 0; i < ARRAY_SIZE_TB; ++i) {
            int expected = (input[i] > threshold) ? input[i] : 0;
            assert(output[i] == expected);
        }
        // Explicit boundary check: index 512 should be zero, index 513 should pass
        assert(output[512] == 0);
        assert(output[513] == 513);
        std::cout << "Test 2 passed: Boundary condition verified (strict comparison).\n";
        print_sample(output);
    }

    // Test 3: Negative threshold, inputs include negatives and positives
    // input[i] = i - 600, threshold = -10 -> values greater than -10 should pass
    {
        int threshold = -10;
        for (int i = 0; i < ARRAY_SIZE_TB; ++i) {
            input[i] = i - 600;
        }

        power_gating(input, output, threshold);

        for (int i = 0; i < ARRAY_SIZE_TB; ++i) {
            int expected = (input[i] > threshold) ? input[i] : 0;
            assert(output[i] == expected);
        }
        // Boundary checks around threshold
        // i = 590 -> input = -10 equals threshold -> should be zero
        // i = 591 -> input = -9 greater than threshold -> should pass
        assert(input[590] == -10 && output[590] == 0);
        assert(input[591] == -9 && output[591] == -9);
        std::cout << "Test 3 passed: Negative threshold behavior verified.\n";
        print_sample(output);
    }

    // Test 4: Alternating above/below threshold values
    // Even indices set to threshold+1 (pass), odd indices set to threshold-1 (zero)
    {
        int threshold = 100;
        for (int i = 0; i < ARRAY_SIZE_TB; ++i) {
            input[i] = (i % 2 == 0) ? (threshold + 1) : (threshold - 1);
        }

        power_gating(input, output, threshold);

        for (int i = 0; i < ARRAY_SIZE_TB; ++i) {
            int expected = (input[i] > threshold) ? input[i] : 0;
            assert(output[i] == expected);
        }
        // Spot checks
        assert(output[0] == threshold + 1);   // even -> pass
        assert(output[1] == 0);               // odd -> zero
        assert(output[2] == threshold + 1);   // even -> pass
        assert(output[3] == 0);               // odd -> zero
        std::cout << "Test 4 passed: Alternating pass/fail verified.\n";
        print_sample(output);
    }

    // Test 5: All zeros input with negative threshold -> expect zeros (since 0 > -5, it should pass)
    // This test confirms that when the threshold is negative, zero values do pass.
    {
        int threshold = -5;
        for (int i = 0; i < ARRAY_SIZE_TB; ++i) {
            input[i] = 0;
        }

        power_gating(input, output, threshold);

        for (int i = 0; i < ARRAY_SIZE_TB; ++i) {
            // 0 > -5 is true, so output should be 0 (same as input) not forced zero
            assert(output[i] == 0);
        }
        std::cout << "Test 5 passed: Zero inputs with negative threshold remain zero as expected.\n";
        print_sample(output);
    }

    std::cout << "All tests passed successfully.\n";
    return 0;
}
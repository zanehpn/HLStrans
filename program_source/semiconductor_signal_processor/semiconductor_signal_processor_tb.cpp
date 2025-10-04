// contents of semiconductor_signal_processor_tb.cpp
#include <iostream>
#include <iomanip>
#include <cmath>
#include <cassert>

// Include the DUT implementation (no main() in source)
#include "semiconductor_signal_processor.cpp"

// Helper: approximate comparison between fixed point and double
static bool approx_equal(const fixed_point_t& a, double b, double tol = 1e-6) {
    double ad = static_cast<double>(a);
    return std::fabs(ad - b) <= tol;
}

// Helper: absolute difference between fixed point and double
static double abs_diff(const fixed_point_t& a, double b) {
    return std::fabs(static_cast<double>(a) - b);
}

// Compute a double-precision reference using the same quantized coefficients and zero-padding scheme
static void compute_reference(const double in[ARRAY_SIZE], double out[ARRAY_SIZE]) {
    // Use the same quantized coefficients as the DUT by initializing fixed_point_t then casting to double
    fixed_point_t fc_fixed[5] = {0.1, 0.15, 0.5, 0.15, 0.1};
    double fc[5];
    for (int j = 0; j < 5; ++j) {
        fc[j] = static_cast<double>(fc_fixed[j]);
    }

    for (int i = 0; i < ARRAY_SIZE; ++i) {
        double acc = 0.0;
        for (int j = 0; j < 5; ++j) {
            int idx = i + j - 2; // account for two leading zeros
            double x = (idx >= 0 && idx < ARRAY_SIZE) ? in[idx] : 0.0;
            acc += x * fc[j];
        }
        out[i] = acc;
    }
}

int main() {
    std::cout << std::fixed << std::setprecision(8);

    // Test 1: Impulse response at index 0
    // Expect the first three outputs to match the center-aligned, quantized coefficients:
    // y[0] = 0.5, y[1] = 0.1484375, y[2] = 0.09765625, others near zero
    {
        fixed_point_t input_signal[ARRAY_SIZE];
        fixed_point_t output_signal[ARRAY_SIZE];

        // Initialize input to zero
        for (int i = 0; i < ARRAY_SIZE; ++i) input_signal[i] = 0.0;
        // Impulse at index 0
        input_signal[0] = 1.0;

        semiconductor_signal_processor(input_signal, output_signal);

        // Quantized coefficients as used by DUT
        const double c0 = static_cast<double>(fixed_point_t(0.1));  // 0.09765625
        const double c1 = static_cast<double>(fixed_point_t(0.15)); // 0.1484375
        const double c2 = static_cast<double>(fixed_point_t(0.5));  // 0.5

        // Check first few outputs
        assert(approx_equal(output_signal[0], c2)); // 0.5
        assert(approx_equal(output_signal[1], c1)); // ~0.1484375
        assert(approx_equal(output_signal[2], c0)); // ~0.09765625

        // Check some zeros after the impulse tail
        assert(approx_equal(output_signal[3], 0.0));
        assert(approx_equal(output_signal[10], 0.0));
        assert(approx_equal(output_signal[ARRAY_SIZE - 1], 0.0));

        std::cout << "Test 1 (Impulse) passed. First outputs: "
                  << static_cast<double>(output_signal[0]) << ", "
                  << static_cast<double>(output_signal[1]) << ", "
                  << static_cast<double>(output_signal[2]) << "\n";
    }

    // Test 2: Constant input (all ones)
    // Expect near-steady output equal to the sum of quantized coefficients in the interior.
    // With quantization: c0=0.09765625, c1=0.1484375, c2=0.5
    // Sum = 2*c0 + 2*c1 + c2 = 0.9921875 for interior points
    // Edge handling with zero-padding:
    // y[0] = c2 + c1 + c0 = 0.74609375
    // y[1] = c1 + c2 + c1 + c0 = 0.89453125
    // y[N-2] = 0.89453125, y[N-1] = 0.74609375
    {
        fixed_point_t input_signal[ARRAY_SIZE];
        fixed_point_t output_signal[ARRAY_SIZE];

        for (int i = 0; i < ARRAY_SIZE; ++i) input_signal[i] = 1.0;

        semiconductor_signal_processor(input_signal, output_signal);

        const double c0 = static_cast<double>(fixed_point_t(0.1));   // 0.09765625
        const double c1 = static_cast<double>(fixed_point_t(0.15));  // 0.1484375
        const double c2 = static_cast<double>(fixed_point_t(0.5));   // 0.5
        const double sum_interior = 2.0 * c0 + 2.0 * c1 + c2;        // 0.9921875
        const double edge_0 = c2 + c1 + c0;                          // 0.74609375
        const double edge_1 = c1 + c2 + c1 + c0;                     // 0.89453125

        // Check a few positions
        assert(approx_equal(output_signal[0], edge_0));
        assert(approx_equal(output_signal[1], edge_1));
        assert(approx_equal(output_signal[2], sum_interior));
        assert(approx_equal(output_signal[ARRAY_SIZE - 3], sum_interior));
        assert(approx_equal(output_signal[ARRAY_SIZE - 2], edge_1));
        assert(approx_equal(output_signal[ARRAY_SIZE - 1], edge_0));

        std::cout << "Test 2 (Constant ones) passed. Sample outputs: "
                  << static_cast<double>(output_signal[0]) << ", "
                  << static_cast<double>(output_signal[1]) << ", "
                  << static_cast<double>(output_signal[2]) << ", ..., "
                  << static_cast<double>(output_signal[ARRAY_SIZE - 3]) << ", "
                  << static_cast<double>(output_signal[ARRAY_SIZE - 2]) << ", "
                  << static_cast<double>(output_signal[ARRAY_SIZE - 1]) << "\n";
    }

    // Test 3: Sawtooth pattern input
    // Validate the entire output against a double-precision reference using the same quantized coefficients
    // Use tolerance to account for fixed-point quantization of intermediate operations.
    {
        fixed_point_t input_signal[ARRAY_SIZE];
        fixed_point_t output_signal[ARRAY_SIZE];

        // Build a sawtooth input in [0, 1) with step 1/16 (exact in ap_fixed<16,8>)
        double in_ref[ARRAY_SIZE];
        for (int i = 0; i < ARRAY_SIZE; ++i) {
            double v = static_cast<double>(i % 16) / 16.0; // 0.0, 0.0625, ..., 0.9375
            input_signal[i] = v;
            in_ref[i] = v;
        }

        semiconductor_signal_processor(input_signal, output_signal);

        // Build reference
        double out_ref[ARRAY_SIZE];
        compute_reference(in_ref, out_ref);

        // Compare all samples with a tolerance
        int mismatches = 0;
        const double tol = 0.01; // a few LSBs tolerance
        for (int i = 0; i < ARRAY_SIZE; ++i) {
            double d = abs_diff(output_signal[i], out_ref[i]);
            if (d > tol) {
                ++mismatches;
                if (mismatches <= 5) {
                    std::cerr << "Mismatch at i=" << i
                              << " DUT=" << static_cast<double>(output_signal[i])
                              << " REF=" << out_ref[i]
                              << " |diff|=" << d << "\n";
                }
            }
        }
        assert(mismatches == 0);

        std::cout << "Test 3 (Sawtooth) passed. First 6 outputs: ";
        for (int i = 0; i < 6; ++i) {
            std::cout << static_cast<double>(output_signal[i]) << (i < 5 ? ", " : "\n");
        }
    }

    std::cout << "All tests passed.\n";
    return 0;
}
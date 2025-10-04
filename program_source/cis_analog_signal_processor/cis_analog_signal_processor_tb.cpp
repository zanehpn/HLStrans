// contents of cis_analog_signal_processor_tb.cpp
#include <iostream>
#include <iomanip>
#include <cmath>
#include <cstdlib>
#include <cstring>

// Include the source under test to ensure linkage without duplicate symbols in separate TUs.
#include "cis_analog_signal_processor.cpp"

static bool almost_equal(float a, float b, float atol = 1e-5f, float rtol = 1e-5f) {
    float diff = std::fabs(a - b);
    float thresh = atol + rtol * std::fabs(b);
    return diff <= thresh;
}

static void compute_reference(const float in[ARRAY_SIZE], float out_ref[ARRAY_SIZE], float gain, float offset) {
    for (int i = 0; i < ARRAY_SIZE; ++i) {
        double processed = static_cast<double>(in[i]) * static_cast<double>(gain) + static_cast<double>(offset);
        if (processed > 0.0) {
            processed = std::log(1.0 + processed);
        } else {
            processed = -std::log(1.0 - processed);
        }
        out_ref[i] = static_cast<float>(processed);
    }
}

static bool check_array(const char* label, const float got[ARRAY_SIZE], const float exp[ARRAY_SIZE], float atol = 1e-5f, float rtol = 1e-5f, bool verbose_on_fail = true) {
    bool ok = true;
    for (int i = 0; i < ARRAY_SIZE; ++i) {
        if (!almost_equal(got[i], exp[i], atol, rtol)) {
            ok = false;
            if (verbose_on_fail) {
                std::cout << "FAIL [" << label << "] idx=" << i
                          << " expected=" << std::setprecision(9) << exp[i]
                          << " got=" << got[i]
                          << " abs_err=" << std::fabs(got[i] - exp[i]) << "\n";
                // Print a limited number of mismatches
                int remaining = 4;
                for (int j = i + 1; j < ARRAY_SIZE && remaining > 0; ++j) {
                    if (!almost_equal(got[j], exp[j], atol, rtol)) {
                        std::cout << "       mismatch idx=" << j
                                  << " expected=" << exp[j]
                                  << " got=" << got[j]
                                  << " abs_err=" << std::fabs(got[j] - exp[j]) << "\n";
                        --remaining;
                    }
                }
            }
            break;
        }
    }
    if (ok) {
        std::cout << "PASS [" << label << "]\n";
    }
    return ok;
}

int main() {
    int pass_count = 0;
    int test_count = 0;

    // Buffers
    static float in[ARRAY_SIZE];
    static float out[ARRAY_SIZE];
    static float ref[ARRAY_SIZE];

    // Test 1: Zero input with zero gain and zero offset -> output should be all zeros.
    {
        ++test_count;
        std::fill_n(in, ARRAY_SIZE, 0.0f);
        float gain = 1.0f;
        float offset = 0.0f;
        cis_analog_signal_processor(in, out, gain, offset);
        compute_reference(in, ref, gain, offset);
        if (check_array("Zero input, gain=1, offset=0", out, ref)) ++pass_count;
        // Print a few samples
        std::cout << "Samples: ";
        for (int i = 0; i < 5; ++i) std::cout << out[i] << (i < 4 ? ", " : "\n");
    }

    // Test 2: Positive input (all ones), gain=2, offset=0 -> log(1 + 2) = log(3) for all
    {
        ++test_count;
        std::fill_n(in, ARRAY_SIZE, 1.0f);
        float gain = 2.0f;
        float offset = 0.0f;
        cis_analog_signal_processor(in, out, gain, offset);
        compute_reference(in, ref, gain, offset);
        if (check_array("All ones, gain=2, offset=0 (expect ~log(3))", out, ref)) ++pass_count;
        std::cout << "Expected ~" << std::setprecision(9) << std::log(3.0f)
                  << ", Got first sample: " << out[0] << "\n";
    }

    // Test 3: Negative input (all -0.5), gain=1, offset=0 -> -log(1 - (-0.5)) = -log(1.5)
    {
        ++test_count;
        std::fill_n(in, ARRAY_SIZE, -0.5f);
        float gain = 1.0f;
        float offset = 0.0f;
        cis_analog_signal_processor(in, out, gain, offset);
        compute_reference(in, ref, gain, offset);
        if (check_array("All -0.5, gain=1, offset=0 (expect ~-log(1.5))", out, ref)) ++pass_count;
        std::cout << "Expected ~" << std::setprecision(9) << -std::log(1.5f)
                  << ", Got first sample: " << out[0] << "\n";
    }

    // Test 4: Ramp input from -1 to +1, gain=1, offset=0 -> exercise both branches across the array
    {
        ++test_count;
        for (int i = 0; i < ARRAY_SIZE; ++i) {
            in[i] = -1.0f + (2.0f * i) / static_cast<float>(ARRAY_SIZE - 1);
        }
        float gain = 1.0f;
        float offset = 0.0f;
        cis_analog_signal_processor(in, out, gain, offset);
        compute_reference(in, ref, gain, offset);
        if (check_array("Ramp [-1,1], gain=1, offset=0", out, ref)) ++pass_count;
        // Print a few representative samples: first, middle, last
        std::cout << "Samples (first, mid, last): "
                  << out[0] << ", " << out[ARRAY_SIZE/2] << ", " << out[ARRAY_SIZE-1] << "\n";
    }

    // Test 5: Zero input with non-zero positive offset -> positive branch
    {
        ++test_count;
        std::fill_n(in, ARRAY_SIZE, 0.0f);
        float gain = 0.0f;
        float offset = 0.1f;
        cis_analog_signal_processor(in, out, gain, offset);
        compute_reference(in, ref, gain, offset);
        if (check_array("Zero input, gain=0, offset=+0.1", out, ref)) ++pass_count;
        std::cout << "Expected ~" << std::setprecision(9) << std::log(1.0f + offset)
                  << ", Got first sample: " << out[0] << "\n";
    }

    // Test 6: Zero input with non-zero negative offset -> negative branch
    {
        ++test_count;
        std::fill_n(in, ARRAY_SIZE, 0.0f);
        float gain = 0.0f;
        float offset = -0.1f;
        cis_analog_signal_processor(in, out, gain, offset);
        compute_reference(in, ref, gain, offset);
        if (check_array("Zero input, gain=0, offset=-0.1", out, ref)) ++pass_count;
        std::cout << "Expected ~" << std::setprecision(9) << -std::log(1.0f - offset)
                  << ", Got first sample: " << out[0] << "\n";
    }

    // Summary
    std::cout << "Test summary: " << pass_count << " / " << test_count << " tests passed.\n";
    bool all_passed = (pass_count == test_count);
    return all_passed ? 0 : 1;
}
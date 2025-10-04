// contents of pll_tb.cpp
#include <iostream>
#include <iomanip>
#include <cmath>
#include <cstddef>
#include <cstdint>
#include <vector>
#include <cassert>

// Forward declaration of the DUT (Device Under Test) function from pll.cpp
// Note: pll.cpp defines N = 1024 internally; we use the same size here.
#define N 1024
void pll(float input_signal[], float output_signal[], float ref_frequency, float loop_bandwidth, float damping_factor);

// Helper to compare two float arrays with a given tolerance
static bool compare_arrays(const float* a, const float* b, std::size_t len, float tol, std::size_t& mismatch_count, std::size_t max_report = 5) {
    mismatch_count = 0;
    for (std::size_t i = 0; i < len; ++i) {
        float diff = std::fabs(a[i] - b[i]);
        if (diff > tol || !std::isfinite(a[i]) || !std::isfinite(b[i])) {
            if (mismatch_count < max_report) {
                std::cout << "  Mismatch at index " << i
                          << ": got=" << std::setprecision(9) << a[i]
                          << " expected=" << b[i]
                          << " |diff|=" << diff << "\n";
            }
            ++mismatch_count;
        }
    }
    return mismatch_count == 0;
}

// Compute expected outputs for zero input case:
// - With input_signal[i] = 0, control_signal = 0, vco_frequency = ref_frequency,
//   vco_phase[i] = (i+1) * ref_frequency, output = sin(vco_phase[i])
static void expected_zero_input(float ref_frequency, float out_exp[N]) {
    for (int i = 0; i < N; ++i) {
        double phase = static_cast<double>(i + 1) * static_cast<double>(ref_frequency);
        out_exp[i] = static_cast<float>(std::sin(phase));
    }
}

// Compute expected outputs for constant input case:
// - With input_signal[i] = C, control_signal = (Kp + Ki) * C, where
//   Kp = 2*zeta*LB, Ki = LB^2, so vco_frequency = ref + (Kp+Ki)*C (constant)
//   vco_phase[i] = (i+1) * vco_frequency, output = sin(vco_phase[i])
static void expected_constant_input(float ref_frequency, float loop_bandwidth, float damping_factor, float C, float out_exp[N]) {
    const double Kp = 2.0 * static_cast<double>(damping_factor) * static_cast<double>(loop_bandwidth);
    const double Ki = static_cast<double>(loop_bandwidth) * static_cast<double>(loop_bandwidth);
    const double K  = Kp + Ki;
    const double vco_freq = static_cast<double>(ref_frequency) + K * static_cast<double>(C);
    for (int i = 0; i < N; ++i) {
        double phase = static_cast<double>(i + 1) * vco_freq;
        out_exp[i] = static_cast<float>(std::sin(phase));
    }
}

// Compute expected outputs for ramp input case:
// - With input_signal[i] = i*delta, control_signal = (Kp+Ki)*i*delta,
//   vco_frequency[i] = ref + (Kp+Ki)*i*delta
//   vco_phase[i] = sum_{k=0..i} vco_frequency[k]
//                = (i+1)*ref + (Kp+Ki)*delta * (i*(i+1)/2)
//   output = sin(vco_phase[i])
static void expected_ramp_input(float ref_frequency, float loop_bandwidth, float damping_factor, float delta, float out_exp[N]) {
    const double Kp = 2.0 * static_cast<double>(damping_factor) * static_cast<double>(loop_bandwidth);
    const double Ki = static_cast<double>(loop_bandwidth) * static_cast<double>(loop_bandwidth);
    const double K  = Kp + Ki;
    for (int i = 0; i < N; ++i) {
        const double idx = static_cast<double>(i);
        const double phase = static_cast<double>(i + 1) * static_cast<double>(ref_frequency)
                           + K * static_cast<double>(delta) * (idx * (idx + 1.0) / 2.0);
        out_exp[i] = static_cast<float>(std::sin(phase));
    }
}

// Utility to print the first few samples for quick inspection
static void print_samples(const char* label, const float* data, std::size_t count = 8) {
    std::cout << label << " first " << count << " samples: ";
    for (std::size_t i = 0; i < count; ++i) {
        std::cout << std::setprecision(6) << data[i] << (i + 1 < count ? ", " : "");
    }
    std::cout << "\n";
}

int main() {
    // Common parameters for tests
    const float ref_frequency = 0.05f;    // reference frequency (rad/sample)
    const float loop_bandwidth = 0.01f;   // loop bandwidth
    const float damping_factor = 0.7071f; // damping factor (~1/sqrt(2))
    const float tol = 1e-5f;

    // Buffers
    float input[N];
    float output[N];
    float expected[N];

    // Test 1: Zero input signal
    // Expectation: output is a pure tone with phase (i+1)*ref_frequency
    std::fill_n(input, N, 0.0f);
    pll(input, output, ref_frequency, loop_bandwidth, damping_factor);
    expected_zero_input(ref_frequency, expected);
    std::size_t mismatches = 0;
    bool ok = compare_arrays(output, expected, N, tol, mismatches);
    std::cout << "[Test 1] Zero input: " << (ok ? "PASS" : "FAIL") << " (mismatches=" << mismatches << ")\n";
    print_samples("  DUT", output);
    print_samples("  EXP", expected);
    assert(ok && "Test 1 failed: Zero input case mismatch");

    // Test 2: Constant input signal
    // Expectation: control signal is constant; VCO frequency is ref + (Kp+Ki)*C; output is a tone at adjusted frequency
    const float C = 0.5f;
    std::fill_n(input, N, C);
    pll(input, output, ref_frequency, loop_bandwidth, damping_factor);
    expected_constant_input(ref_frequency, loop_bandwidth, damping_factor, C, expected);
    ok = compare_arrays(output, expected, N, tol, mismatches);
    std::cout << "[Test 2] Constant input (C=0.5): " << (ok ? "PASS" : "FAIL") << " (mismatches=" << mismatches << ")\n";
    print_samples("  DUT", output);
    print_samples("  EXP", expected);
    assert(ok && "Test 2 failed: Constant input case mismatch");

    // Test 3: Linearly increasing input (ramp)
    // Expectation: VCO frequency increases linearly with i; output phase follows (i+1)*ref + K*delta*(i*(i+1)/2)
    const float delta = 0.001f;
    for (int i = 0; i < N; ++i) input[i] = static_cast<float>(i) * delta;
    pll(input, output, ref_frequency, loop_bandwidth, damping_factor);
    expected_ramp_input(ref_frequency, loop_bandwidth, damping_factor, delta, expected);
    ok = compare_arrays(output, expected, N, tol, mismatches);
    std::cout << "[Test 3] Ramp input (delta=0.001): " << (ok ? "PASS" : "FAIL") << " (mismatches=" << mismatches << ")\n";
    print_samples("  DUT", output);
    print_samples("  EXP", expected);
    assert(ok && "Test 3 failed: Ramp input case mismatch");

    std::cout << "All tests passed.\n";
    return 0;
}
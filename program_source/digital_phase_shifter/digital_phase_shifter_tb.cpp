// contents of digital_phase_shifter_tb.cpp
#include <iostream>
#include <cstdint>
#include <cstdlib>
#include <cmath>

// Include the source under test (no main() defined there)
#include "digital_phase_shifter.cpp"

// Simple check helpers
static void check_equal_int16(int16_t actual, int16_t expected, const char* msg, int idx = -1) {
    if (actual != expected) {
        std::cerr << "CHECK FAILED: " << msg;
        if (idx >= 0) std::cerr << " at index " << idx;
        std::cerr << " | expected=" << expected << " actual=" << actual << std::endl;
        std::exit(1);
    }
}

static void check_close_int16(int16_t actual, int16_t expected, int tol, const char* msg, int idx = -1) {
    int diff = static_cast<int>(actual) - static_cast<int>(expected);
    if (diff < -tol || diff > tol) {
        std::cerr << "CHECK FAILED: " << msg;
        if (idx >= 0) std::cerr << " at index " << idx;
        std::cerr << " | expected=" << expected << " actual=" << actual << " tol=" << tol << std::endl;
        std::exit(1);
    }
}

int main() {
    constexpr float PI = 3.14159265358979323846f;

    // Allocate arrays of size N as defined in the included source
    int16_t in_r[N], in_i[N], out_r[N], out_i[N];

    // Test 1: Zero inputs should yield zero outputs for any phase
    {
        // Initialize inputs with zeros
        for (int i = 0; i < N; ++i) { in_r[i] = 0; in_i[i] = 0; out_r[i] = 123; out_i[i] = 456; }
        float phase = 0.6f; // arbitrary phase
        digital_phase_shifter(in_r, in_i, out_r, out_i, phase);

        for (int i = 0; i < N; ++i) {
            check_equal_int16(out_r[i], 0, "Zero input real -> zero output real", i);
            check_equal_int16(out_i[i], 0, "Zero input imag -> zero output imag", i);
        }
        std::cout << "Test 1 PASS: Zero inputs produce zero outputs for arbitrary phase." << std::endl;
    }

    // Test 2: Real-only input with phase = 0 should be unchanged
    {
        for (int i = 0; i < N; ++i) { in_r[i] = 1000; in_i[i] = 0; }
        float phase = 0.0f;
        digital_phase_shifter(in_r, in_i, out_r, out_i, phase);
        for (int i = 0; i < N; ++i) {
            check_equal_int16(out_r[i], 1000, "Phase 0 real path identity", i);
            check_equal_int16(out_i[i], 0, "Phase 0 imag path identity", i);
        }
        std::cout << "Test 2 PASS: Phase 0 leaves real-only signal unchanged." << std::endl;
    }

    // Test 3: Real-only input with phase = +pi/2 -> output_real ~ 0, output_imag ~ input_real
    {
        for (int i = 0; i < N; ++i) { in_r[i] = 1000; in_i[i] = 0; }
        float phase = PI * 0.5f;
        digital_phase_shifter(in_r, in_i, out_r, out_i, phase);
        for (int i = 0; i < N; ++i) {
            check_equal_int16(out_r[i], 0, "Phase +pi/2 rotates real to imag (real becomes 0)", i);
            check_equal_int16(out_i[i], 1000, "Phase +pi/2 rotates real to imag", i);
        }
        std::cout << "Test 3 PASS: +pi/2 rotates real-only signal into imag axis." << std::endl;
    }

    // Test 4: Real-imag constant inputs with phase = +pi/2 -> (x, y) -> (-y, x)
    {
        for (int i = 0; i < N; ++i) { in_r[i] = 1000; in_i[i] = 200; }
        float phase = PI * 0.5f;
        digital_phase_shifter(in_r, in_i, out_r, out_i, phase);
        for (int i = 0; i < N; ++i) {
            check_equal_int16(out_r[i], static_cast<int16_t>(-200), "Phase +pi/2 real becomes -imag", i);
            check_equal_int16(out_i[i], static_cast<int16_t>(1000), "Phase +pi/2 imag becomes real", i);
        }
        std::cout << "Test 4 PASS: +pi/2 rotation matches expected vector rotation (-y, x)." << std::endl;
    }

    // Test 5: Real-only input with phase = +pi/4 -> outputs approx 1000/sqrt(2) on both real and imag
    {
        for (int i = 0; i < N; ++i) { in_r[i] = 1000; in_i[i] = 0; }
        float phase = PI * 0.25f;
        digital_phase_shifter(in_r, in_i, out_r, out_i, phase);
        // Expected value is round(1000 * cos(pi/4)) = round(707.106...) = 707
        int16_t expected = 707;
        for (int i = 0; i < N; ++i) {
            check_close_int16(out_r[i], expected, 1, "Phase +pi/4 real approx 707", i);
            check_close_int16(out_i[i], expected, 1, "Phase +pi/4 imag approx 707", i);
        }
        std::cout << "Test 5 PASS: +pi/4 yields approximately equal real/imag magnitudes." << std::endl;
    }

    // Test 6: Varying pattern inputs with phase = pi -> negation of both components
    {
        for (int i = 0; i < N; ++i) {
            in_r[i] = static_cast<int16_t>((i % 100) - 50);          // range [-50, 49]
            in_i[i] = static_cast<int16_t>(2 * (i % 50) - 49);       // range [-49, 49]
        }
        float phase = PI;
        digital_phase_shifter(in_r, in_i, out_r, out_i, phase);
        for (int i = 0; i < N; ++i) {
            check_equal_int16(out_r[i], static_cast<int16_t>(-in_r[i]), "Phase pi: real negation", i);
            check_equal_int16(out_i[i], static_cast<int16_t>(-in_i[i]), "Phase pi: imag negation", i);
        }
        std::cout << "Test 6 PASS: pi rotation negates both real and imaginary components." << std::endl;
    }

    // Test 7: Imag-only input with phase = -pi/2 -> output_real ~ +input_imag, output_imag ~ 0
    {
        for (int i = 0; i < N; ++i) { in_r[i] = 0; in_i[i] = 1000; }
        float phase = -PI * 0.5f;
        digital_phase_shifter(in_r, in_i, out_r, out_i, phase);
        for (int i = 0; i < N; ++i) {
            check_equal_int16(out_r[i], 1000, "Phase -pi/2 rotates imag to real (positive)", i);
            check_equal_int16(out_i[i], 0, "Phase -pi/2 imag becomes 0", i);
        }
        std::cout << "Test 7 PASS: -pi/2 rotates imag-only signal into real axis." << std::endl;
    }

    // Optionally, show a few sample outputs from the last test for visual confirmation
    std::cout << "Sample outputs (last test):" << std::endl;
    for (int i = 0; i < 5; ++i) {
        std::cout << "Index " << i << ": out_r=" << out_r[i] << ", out_i=" << out_i[i] << std::endl;
    }

    std::cout << "All tests PASSED." << std::endl;
    return 0;
}
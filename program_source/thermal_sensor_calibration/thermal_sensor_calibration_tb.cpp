// contents of thermal_sensor_calibration_tb.cpp
#include <iostream>
#include <cmath>
#include <cassert>

#include "thermal_sensor_calibration.cpp"

// Helper for floating point comparison
static inline bool almost_equal(float a, float b, float eps = 1e-5f) {
    float diff = std::fabs(a - b);
    if (diff <= eps) return true;
    float maxab = std::max(std::fabs(a), std::fabs(b));
    return diff <= eps * (1.0f + maxab);
}

// Print first few samples of an array for inspection
void print_samples(const char* label, const float* data, int count = 8) {
    std::cout << label << ":";
    for (int i = 0; i < count; ++i) {
        std::cout << " " << data[i];
    }
    std::cout << std::endl;
}

// Verify output against expected and assert on mismatch
void verify_output(const float* raw, const float* out, float offset, float scale) {
    for (int i = 0; i < ARRAY_SIZE; ++i) {
        float expected = (raw[i] + offset) * scale;
        assert(almost_equal(out[i], expected, 1e-5f));
    }
}

int main() {
    std::cout << "Running thermal_sensor_calibration testbench..." << std::endl;

    float raw[ARRAY_SIZE];
    float raw_backup[ARRAY_SIZE];
    float out[ARRAY_SIZE];

    // Test Case 1: Identity transform (offset=0, scale=1)
    // Expect calibrated_data equals raw_data
    for (int i = 0; i < ARRAY_SIZE; ++i) {
        raw[i] = static_cast<float>(i) - 512.0f; // spans negative to positive
    }
    thermal_sensor_calibration(raw, out, 0.0f, 1.0f);
    verify_output(raw, out, 0.0f, 1.0f);
    print_samples("TC1 (Identity) sample out", out);

    // Test Case 2: Offset and scale (offset=10, scale=2)
    // Expect calibrated_data[i] = (raw[i]+10)*2
    for (int i = 0; i < ARRAY_SIZE; ++i) {
        raw[i] = std::sin(0.01f * static_cast<float>(i)) * 100.0f + static_cast<float>(i) * 0.1f;
    }
    thermal_sensor_calibration(raw, out, 10.0f, 2.0f);
    verify_output(raw, out, 10.0f, 2.0f);
    print_samples("TC2 (Offset+Scale) sample out", out);

    // Test Case 3: Negative offset and negative scale (offset=-5, scale=-0.5)
    // Expect sign inversion and shift applied
    for (int i = 0; i < ARRAY_SIZE; ++i) {
        raw[i] = static_cast<float>((i % 7) - 3); // small integer range [-3..3]
    }
    thermal_sensor_calibration(raw, out, -5.0f, -0.5f);
    verify_output(raw, out, -5.0f, -0.5f);
    print_samples("TC3 (Neg offset & scale) sample out", out);

    // Test Case 4: Zero scale (offset arbitrary)
    // Expect zeros regardless of raw and offset
    for (int i = 0; i < ARRAY_SIZE; ++i) {
        raw[i] = std::cos(0.005f * static_cast<float>(i)) * 1e3f - 250.0f;
    }
    thermal_sensor_calibration(raw, out, 123.45f, 0.0f);
    // Verify all outputs are zero
    for (int i = 0; i < ARRAY_SIZE; ++i) {
        assert(almost_equal(out[i], 0.0f, 1e-6f));
    }
    print_samples("TC4 (Zero scale) sample out", out);

    // Test Case 5: All zeros input
    // Expect constant output equal to (0+offset)*scale
    float offset = 3.14f, scale = 1.5f;
    float expected_const = (0.0f + offset) * scale;
    for (int i = 0; i < ARRAY_SIZE; ++i) {
        raw[i] = 0.0f;
    }
    thermal_sensor_calibration(raw, out, offset, scale);
    for (int i = 0; i < ARRAY_SIZE; ++i) {
        assert(almost_equal(out[i], expected_const, 1e-6f));
    }
    print_samples("TC5 (Zero input const out) sample out", out);

    // Test Case 6: Ensure raw_data is not modified by calibration
    // We back up raw, run calibration, and compare raw to backup
    for (int i = 0; i < ARRAY_SIZE; ++i) {
        raw[i] = std::sin(0.02f * static_cast<float>(i)) * 50.0f + 0.25f * static_cast<float>(i);
        raw_backup[i] = raw[i];
    }
    thermal_sensor_calibration(raw, out, -2.0f, 0.75f);
    for (int i = 0; i < ARRAY_SIZE; ++i) {
        assert(almost_equal(raw[i], raw_backup[i], 0.0f)); // exact equality expected
    }
    print_samples("TC6 (Raw unchanged) sample raw", raw);

    std::cout << "All tests passed successfully." << std::endl;
    return 0;
}
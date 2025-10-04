// contents of fan_speed_control_tb.cpp
#include <iostream>
#include <cstdlib>
#include <cstdint>
#include <string>
#include <vector>
#include <cassert>
#include <ap_int.h>

// Forward declaration of DUT (device under test)
void fan_speed_control(ap_int<16> temperature[], ap_int<16> fan_speed[]);

// Testbench constants mirroring the DUT configuration
static const int TB_ARRAY_SIZE = 1024;
static const int THRESHOLD_LOW = 30;
static const int THRESHOLD_HIGH = 70;
static const int SPEED_LOW = 1000;
static const int SPEED_HIGH = 3000;

// Compute expected fan speed for a given temperature using the same rule as the DUT
static inline int compute_expected(int t) {
    if (t < THRESHOLD_LOW) {
        return SPEED_LOW;
    } else if (t > THRESHOLD_HIGH) {
        return SPEED_HIGH;
    } else {
        return SPEED_LOW + ((t - THRESHOLD_LOW) * (SPEED_HIGH - SPEED_LOW)) / (THRESHOLD_HIGH - THRESHOLD_LOW);
    }
}

// Utility to print a few sample outputs
static void print_samples(const ap_int<16> temp[], const ap_int<16> speed[], int count) {
    std::cout << "Samples (temp -> speed): ";
    for (int i = 0; i < count; ++i) {
        std::cout << temp[i].to_int() << "->" << speed[i].to_int();
        if (i != count - 1) std::cout << ", ";
    }
    std::cout << "\n";
}

// Test 1: All temperatures below low threshold -> expect all speeds = SPEED_LOW
static int run_test_all_below() {
    ap_int<16> temperature[TB_ARRAY_SIZE];
    ap_int<16> fan_speed[TB_ARRAY_SIZE];

    for (int i = 0; i < TB_ARRAY_SIZE; ++i) {
        temperature[i] = 10; // Below THRESHOLD_LOW
        fan_speed[i] = 0;
    }

    fan_speed_control(temperature, fan_speed);

    int mismatches = 0;
    for (int i = 0; i < TB_ARRAY_SIZE; ++i) {
        int got = fan_speed[i].to_int();
        int exp = SPEED_LOW;
        if (got != exp) mismatches++;
    }

    std::cout << "[Test 1] All below low threshold: " << (mismatches == 0 ? "PASS" : "FAIL")
              << " (mismatches=" << mismatches << ")\n";
    print_samples(temperature, fan_speed, 5);
    return mismatches;
}

// Test 2: All temperatures above high threshold -> expect all speeds = SPEED_HIGH
static int run_test_all_above() {
    ap_int<16> temperature[TB_ARRAY_SIZE];
    ap_int<16> fan_speed[TB_ARRAY_SIZE];

    for (int i = 0; i < TB_ARRAY_SIZE; ++i) {
        temperature[i] = 100; // Above THRESHOLD_HIGH
        fan_speed[i] = 0;
    }

    fan_speed_control(temperature, fan_speed);

    int mismatches = 0;
    for (int i = 0; i < TB_ARRAY_SIZE; ++i) {
        int got = fan_speed[i].to_int();
        int exp = SPEED_HIGH;
        if (got != exp) mismatches++;
    }

    std::cout << "[Test 2] All above high threshold: " << (mismatches == 0 ? "PASS" : "FAIL")
              << " (mismatches=" << mismatches << ")\n";
    print_samples(temperature, fan_speed, 5);
    return mismatches;
}

// Test 3: Boundary and representative values -> checks exact transitions and interpolation
static int run_test_boundaries_and_midpoints() {
    ap_int<16> temperature[TB_ARRAY_SIZE];
    ap_int<16> fan_speed[TB_ARRAY_SIZE];

    // Fill first few entries with boundary and representative temps
    int test_vals[] = { -10, 29, 30, 31, 50, 69, 70, 71, 200 };
    int N = sizeof(test_vals) / sizeof(test_vals[0]);

    for (int i = 0; i < TB_ARRAY_SIZE; ++i) {
        if (i < N) temperature[i] = test_vals[i];
        else temperature[i] = 0; // below threshold
        fan_speed[i] = 0;
    }

    fan_speed_control(temperature, fan_speed);

    int mismatches = 0;
    for (int i = 0; i < TB_ARRAY_SIZE; ++i) {
        int t = temperature[i].to_int();
        int got = fan_speed[i].to_int();
        int exp = compute_expected(t);
        if (got != exp) mismatches++;
    }

    std::cout << "[Test 3] Boundaries and midpoints: " << (mismatches == 0 ? "PASS" : "FAIL")
              << " (mismatches=" << mismatches << ")\n";
    print_samples(temperature, fan_speed, N);
    return mismatches;
}

// Test 4: Mixed pattern across the entire array -> varying temps to exercise all code paths
static int run_test_mixed_pattern() {
    ap_int<16> temperature[TB_ARRAY_SIZE];
    ap_int<16> fan_speed[TB_ARRAY_SIZE];

    // Create a pattern that sweeps from -10 to 109 repeatedly
    for (int i = 0; i < TB_ARRAY_SIZE; ++i) {
        temperature[i] = (i % 120) - 10;
        fan_speed[i] = 0;
    }

    fan_speed_control(temperature, fan_speed);

    int mismatches = 0;
    for (int i = 0; i < TB_ARRAY_SIZE; ++i) {
        int t = temperature[i].to_int();
        int got = fan_speed[i].to_int();
        int exp = compute_expected(t);
        if (got != exp) mismatches++;
    }

    std::cout << "[Test 4] Mixed pattern across array: " << (mismatches == 0 ? "PASS" : "FAIL")
              << " (mismatches=" << mismatches << ")\n";
    print_samples(temperature, fan_speed, 8);
    return mismatches;
}

// Test 5: Linear interpolation sweep in the [30..70] range -> expect step of 50 per degree
static int run_test_linear_region_sweep() {
    ap_int<16> temperature[TB_ARRAY_SIZE];
    ap_int<16> fan_speed[TB_ARRAY_SIZE];

    // Fill first 41 elements with 30..70 inclusive to check linear mapping
    for (int i = 0; i <= (THRESHOLD_HIGH - THRESHOLD_LOW); ++i) {
        temperature[i] = THRESHOLD_LOW + i;
    }
    // Fill remainder with a benign value
    for (int i = (THRESHOLD_HIGH - THRESHOLD_LOW) + 1; i < TB_ARRAY_SIZE; ++i) {
        temperature[i] = THRESHOLD_LOW;
    }

    for (int i = 0; i < TB_ARRAY_SIZE; ++i) {
        fan_speed[i] = 0;
    }

    fan_speed_control(temperature, fan_speed);

    int mismatches = 0;
    // Check the linear region specifically
    for (int i = 0; i <= (THRESHOLD_HIGH - THRESHOLD_LOW); ++i) {
        int t = THRESHOLD_LOW + i;
        int got = fan_speed[i].to_int();
        int exp = compute_expected(t);
        if (got != exp) mismatches++;
        // Additionally, check expected step size of 50
        if (i > 0) {
            int prev = fan_speed[i - 1].to_int();
            if ((t >= THRESHOLD_LOW + 1) && (t <= THRESHOLD_HIGH)) {
                if (got - prev != 50) mismatches++;
            }
        }
    }

    std::cout << "[Test 5] Linear region sweep (30..70): " << (mismatches == 0 ? "PASS" : "FAIL")
              << " (mismatches=" << mismatches << ")\n";
    print_samples(temperature, fan_speed, 6);
    return mismatches;
}

int main() {
    int total_mismatches = 0;

    // Test case descriptions:
    // - Test 1: All temps below 30 -> expect fan speed = 1000
    // - Test 2: All temps above 70 -> expect fan speed = 3000
    // - Test 3: Boundary values and representative midpoints -> validates edge cases and interpolation points
    // - Test 4: Mixed pattern across entire array -> exercises full datapath with diverse inputs
    // - Test 5: Linear region sweep -> checks linear scaling step per degree

    total_mismatches += run_test_all_below();
    total_mismatches += run_test_all_above();
    total_mismatches += run_test_boundaries_and_midpoints();
    total_mismatches += run_test_mixed_pattern();
    total_mismatches += run_test_linear_region_sweep();

    if (total_mismatches == 0) {
        std::cout << "All tests PASSED\n";
        return 0;
    } else {
        std::cout << "Total mismatches across all tests: " << total_mismatches << "\n";
        return 1;
    }
}
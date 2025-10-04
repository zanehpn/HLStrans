// contents of temperature_based_shutdown_tb.cpp

#include <iostream>
#include <cassert>

// Include the source to access the function and constants directly
#include "temperature_based_shutdown.cpp"

// Helper to verify that shutdown flags match expected behavior based on THRESHOLD
bool verify_shutdown(const int readings[], const int flags[]) {
    for (int i = 0; i < ARRAY_SIZE; ++i) {
        int expected = (readings[i] > THRESHOLD) ? 1 : 0;
        if (flags[i] != expected) {
            std::cerr << "Mismatch at index " << i
                      << ": reading=" << readings[i]
                      << " expected_flag=" << expected
                      << " actual_flag=" << flags[i] << std::endl;
            return false;
        }
    }
    return true;
}

// Print a few sample entries for quick visual inspection
void print_samples(const int readings[], const int flags[], int count = 8) {
    std::cout << "Samples (reading -> flag): ";
    for (int i = 0; i < count && i < ARRAY_SIZE; ++i) {
        std::cout << readings[i] << "->" << flags[i] << " ";
    }
    std::cout << std::endl;
}

int main() {
    int readings[ARRAY_SIZE];
    int flags[ARRAY_SIZE];

    // Test 1: All readings strictly below threshold -> expect all flags = 0
    {
        for (int i = 0; i < ARRAY_SIZE; ++i) readings[i] = THRESHOLD - 1;
        temperature_based_shutdown(readings, flags);
        assert(verify_shutdown(readings, flags) && "Test 1 failed: below-threshold readings should produce 0 flags");
        std::cout << "Test 1 passed: All below threshold -> all flags 0" << std::endl;
        print_samples(readings, flags);
    }

    // Test 2: All readings equal to threshold -> expect all flags = 0
    {
        for (int i = 0; i < ARRAY_SIZE; ++i) readings[i] = THRESHOLD;
        temperature_based_shutdown(readings, flags);
        assert(verify_shutdown(readings, flags) && "Test 2 failed: equal-to-threshold readings should produce 0 flags");
        std::cout << "Test 2 passed: All equal to threshold -> all flags 0" << std::endl;
        print_samples(readings, flags);
    }

    // Test 3: All readings strictly above threshold -> expect all flags = 1
    {
        for (int i = 0; i < ARRAY_SIZE; ++i) readings[i] = THRESHOLD + 1;
        temperature_based_shutdown(readings, flags);
        assert(verify_shutdown(readings, flags) && "Test 3 failed: above-threshold readings should produce 1 flags");
        std::cout << "Test 3 passed: All above threshold -> all flags 1" << std::endl;
        print_samples(readings, flags);
    }

    // Test 4: Alternating pattern around the threshold -> expect alternating flags
    {
        for (int i = 0; i < ARRAY_SIZE; ++i) {
            // Even indices below, odd indices above threshold
            readings[i] = (i % 2 == 0) ? (THRESHOLD - 10) : (THRESHOLD + 10);
        }
        temperature_based_shutdown(readings, flags);
        assert(verify_shutdown(readings, flags) && "Test 4 failed: alternating readings should produce alternating flags");
        std::cout << "Test 4 passed: Alternating around threshold -> alternating flags" << std::endl;
        print_samples(readings, flags);
    }

    // Test 5: Mixed segments: negatives, zeros, at threshold, and high values
    {
        for (int i = 0; i < ARRAY_SIZE; ++i) {
            if (i < ARRAY_SIZE / 4) {
                readings[i] = -40;           // Clearly below threshold
            } else if (i < ARRAY_SIZE / 2) {
                readings[i] = 0;             // Below threshold
            } else if (i < 3 * ARRAY_SIZE / 4) {
                readings[i] = THRESHOLD;     // Equal to threshold
            } else {
                readings[i] = 150;           // Clearly above threshold
            }
        }
        temperature_based_shutdown(readings, flags);
        assert(verify_shutdown(readings, flags) && "Test 5 failed: mixed segments should produce correct flags per segment");
        std::cout << "Test 5 passed: Mixed segments -> correct flags per segment" << std::endl;
        print_samples(readings, flags);
    }

    // Test 6: Deterministic varied pattern using a modular arithmetic formula
    {
        for (int i = 0; i < ARRAY_SIZE; ++i) {
            // Create a spread of values across a range, ensuring some below/above threshold
            int val = (i * 37) % 200;  // Cycle in [0,199]
            readings[i] = val - 25;    // Shift to [-25,174]
        }
        temperature_based_shutdown(readings, flags);
        assert(verify_shutdown(readings, flags) && "Test 6 failed: varied pattern should produce correct flags");
        std::cout << "Test 6 passed: Varied pattern -> correct flags" << std::endl;
        print_samples(readings, flags);
    }

    std::cout << "All tests passed." << std::endl;
    return 0;
}
// contents of nearest_neighbor_interpolation_tb.cpp
#include <iostream>
#include <cassert>

// Include the source under test to ensure standalone build and avoid missing symbols
#include "nearest_neighbor_interpolation.cpp"

// Helper to validate that each output[i] equals input[i/scale_factor]
void validate_full_mapping(const float input[INPUT_SIZE], const float output[OUTPUT_SIZE]) {
    const int scale_factor = OUTPUT_SIZE / INPUT_SIZE;
    for (int i = 0; i < OUTPUT_SIZE; ++i) {
        float expected = input[i / scale_factor];
        assert(output[i] == expected);
    }
}

// Helper to print a few sample outputs for visual inspection
void print_samples(const float input[INPUT_SIZE], const float output[OUTPUT_SIZE], const int indices[], int count) {
    const int scale_factor = OUTPUT_SIZE / INPUT_SIZE;
    for (int k = 0; k < count; ++k) {
        int i = indices[k];
        if (i < 0 || i >= OUTPUT_SIZE) continue;
        float expected = input[i / scale_factor];
        std::cout << "output[" << i << "] = " << output[i]
                  << " (expected input[" << (i/scale_factor) << "] = " << expected << ")\n";
    }
}

int main() {
    float input[INPUT_SIZE];
    float output[OUTPUT_SIZE];

    // Test case 1: Linear ramp pattern
    // - Ensures basic nearest-neighbor mapping where each pair of outputs copies the same input.
    for (int i = 0; i < INPUT_SIZE; ++i) {
        input[i] = static_cast<float>(i);
    }
    nearest_neighbor_interpolation(input, output);
    validate_full_mapping(input, output);
    {
        int samples[] = {0, 1, 2, 3, 100, 101, 102, 2046, 2047};
        std::cout << "Test case 1 (linear ramp) sample outputs:\n";
        print_samples(input, output, samples, sizeof(samples)/sizeof(samples[0]));
    }
    std::cout << "Test case 1 passed: linear ramp mapping validated.\n\n";

    // Test case 2: Affine float pattern
    // - Uses a non-integer linear function to verify preservation of fractional values.
    for (int i = 0; i < INPUT_SIZE; ++i) {
        input[i] = 1.25f * static_cast<float>(i) + 3.5f;
    }
    nearest_neighbor_interpolation(input, output);
    validate_full_mapping(input, output);
    {
        int samples[] = {0, 1, 2, 3, 512, 513, 1022, 1023, 2046, 2047};
        std::cout << "Test case 2 (affine float) sample outputs:\n";
        print_samples(input, output, samples, sizeof(samples)/sizeof(samples[0]));
    }
    std::cout << "Test case 2 passed: affine float mapping validated.\n\n";

    // Test case 3: Alternating pattern with negative and positive values
    // - Verifies behavior with sign changes and repeated values.
    for (int i = 0; i < INPUT_SIZE; ++i) {
        input[i] = (i % 2 == 0) ? -1.0f : 2.0f;
    }
    nearest_neighbor_interpolation(input, output);
    validate_full_mapping(input, output);
    {
        int samples[] = {0, 1, 2, 3, 10, 11, 1000, 1001, 2046, 2047};
        std::cout << "Test case 3 (alternating -1/2) sample outputs:\n";
        print_samples(input, output, samples, sizeof(samples)/sizeof(samples[0]));
    }
    std::cout << "Test case 3 passed: alternating pattern mapping validated.\n\n";

    // Boundary-specific checks
    // - Explicitly validate edge indices and middle region for confidence.
    {
        const int scale_factor = OUTPUT_SIZE / INPUT_SIZE; // expected to be 2
        assert(output[0] == input[0]);
        assert(output[1] == input[0]);
        assert(output[2] == input[1]);
        assert(output[OUTPUT_SIZE - 1] == input[INPUT_SIZE - 1]);
        assert(output[OUTPUT_SIZE - 2] == input[INPUT_SIZE - 1]);
        assert(output[OUTPUT_SIZE / 2] == input[(OUTPUT_SIZE / 2) / scale_factor]);
        std::cout << "Boundary checks passed.\n";
    }

    std::cout << "All tests passed successfully.\n";
    return 0;
}
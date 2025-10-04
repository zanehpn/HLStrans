// contents of image_signal_processor_tb.cpp

#include <iostream>
#include <cstdint>
#include <cassert>

// Include the DUT (Design Under Test)
#include "image_signal_processor.cpp"

// Allocate images in static storage to avoid stack overflow
static uint8_t input_image[IMG_HEIGHT][IMG_WIDTH];
static uint8_t output_image[IMG_HEIGHT][IMG_WIDTH];

// Helper: Fill input with a gradient pattern
static void fill_gradient(uint8_t img[IMG_HEIGHT][IMG_WIDTH]) {
    for (int i = 0; i < IMG_HEIGHT; ++i) {
        for (int j = 0; j < IMG_WIDTH; ++j) {
            img[i][j] = static_cast<uint8_t>((i + j) & 0xFF);
        }
    }
}

// Helper: Fill input with a constant value
static void fill_constant(uint8_t img[IMG_HEIGHT][IMG_WIDTH], uint8_t value) {
    for (int i = 0; i < IMG_HEIGHT; ++i) {
        for (int j = 0; j < IMG_WIDTH; ++j) {
            img[i][j] = value;
        }
    }
}

// Helper: Count mismatches vs. expected inversion (255 - input)
static size_t count_inversion_mismatches(const uint8_t in_img[IMG_HEIGHT][IMG_WIDTH],
                                         const uint8_t out_img[IMG_HEIGHT][IMG_WIDTH]) {
    size_t mismatches = 0;
    for (int i = 0; i < IMG_HEIGHT; ++i) {
        for (int j = 0; j < IMG_WIDTH; ++j) {
            uint8_t expected = static_cast<uint8_t>(255 - in_img[i][j]);
            if (out_img[i][j] != expected) {
                ++mismatches;
            }
        }
    }
    return mismatches;
}

// Helper: Print a few sample pixels to illustrate behavior
static void print_samples(const char* label,
                          const uint8_t in_img[IMG_HEIGHT][IMG_WIDTH],
                          const uint8_t out_img[IMG_HEIGHT][IMG_WIDTH]) {
    std::cout << label << " sample pixels:\n";
    int coords[][2] = {
        {0, 0},
        {0, IMG_WIDTH - 1},
        {IMG_HEIGHT - 1, 0},
        {IMG_HEIGHT - 1, IMG_WIDTH - 1},
        {IMG_HEIGHT / 2, IMG_WIDTH / 2},
        {123, 456}
    };
    for (auto& c : coords) {
        int i = c[0], j = c[1];
        // Ensure coordinates are within bounds
        if (i >= 0 && i < IMG_HEIGHT && j >= 0 && j < IMG_WIDTH) {
            std::cout << "  (" << i << ", " << j << "): in=" << (int)in_img[i][j]
                      << " out=" << (int)out_img[i][j]
                      << " expected=" << (int)(255 - in_img[i][j]) << "\n";
        }
    }
}

int main() {
    // Test 1: Gradient pattern inversion
    // - Fill input with a gradient, run the DUT, and verify full-frame inversion.
    std::cout << "Test 1: Gradient pattern inversion\n";
    fill_gradient(input_image);
    image_signal_processor(input_image, output_image);
    size_t mismatches1 = count_inversion_mismatches(input_image, output_image);
    print_samples("Test 1", input_image, output_image);
    std::cout << "  Mismatches: " << mismatches1 << "\n";
    assert(mismatches1 == 0 && "Test 1 failed: Output is not the inverse of the input gradient.");
    std::cout << "  Result: PASS\n\n";

    // Test 2: All-zero input
    // - Input all zeros; output should be all 255s.
    std::cout << "Test 2: All-zero input -> expect all 255\n";
    fill_constant(input_image, 0);
    image_signal_processor(input_image, output_image);
    size_t mismatches2 = count_inversion_mismatches(input_image, output_image);
    print_samples("Test 2", input_image, output_image);
    std::cout << "  Mismatches: " << mismatches2 << "\n";
    assert(mismatches2 == 0 && "Test 2 failed: Output is not all 255 for zero input.");
    std::cout << "  Result: PASS\n\n";

    // Test 3: All-255 input
    // - Input all 255; output should be all zeros.
    std::cout << "Test 3: All-255 input -> expect all 0\n";
    fill_constant(input_image, 255);
    image_signal_processor(input_image, output_image);
    size_t mismatches3 = count_inversion_mismatches(input_image, output_image);
    print_samples("Test 3", input_image, output_image);
    std::cout << "  Mismatches: " << mismatches3 << "\n";
    assert(mismatches3 == 0 && "Test 3 failed: Output is not all 0 for 255 input.");
    std::cout << "  Result: PASS\n\n";

    std::cout << "All tests passed.\n";
    return 0;
}
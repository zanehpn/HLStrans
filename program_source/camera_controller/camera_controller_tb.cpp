// contents of camera_controller_tb.cpp
#include <iostream>
#include <cassert>

// Include the source under test to avoid duplicate symbol errors
#include "camera_controller.cpp"

// Helper to fill the input image with a simple gradient pattern
static void fill_gradient(ap_uint<8> input_image[IMG_HEIGHT][IMG_WIDTH]) {
    for (int i = 0; i < IMG_HEIGHT; ++i) {
        for (int j = 0; j < IMG_WIDTH; ++j) {
            input_image[i][j] = (ap_uint<8>)((i + j) & 0xFF);
        }
    }
}

// Helper to compute expected output for a given pixel, brightness, and contrast
static int compute_expected(int pixel, int brightness, int contrast) {
    int temp = pixel * contrast + brightness;
    if (temp > 255) temp = 255;
    if (temp < 0) temp = 0;
    return temp;
}

// Run a single test with given brightness and contrast settings
static void run_test(ap_uint<8> brightness, ap_uint<8> contrast, const char* test_name) {
    static ap_uint<8> input_image[IMG_HEIGHT][IMG_WIDTH];
    static ap_uint<8> output_image[IMG_HEIGHT][IMG_WIDTH];

    // Prepare input image
    fill_gradient(input_image);

    // Execute the DUT (Device Under Test)
    camera_controller(input_image, output_image, brightness, contrast);

    // Define sample positions to validate behavior without checking entire frame
    struct Sample { int i; int j; };
    Sample samples[] = {
        {0, 0},           // Top-left corner
        {100, 200},       // Mid variation
        {130, 110},       // High value near saturation (240)
        {1023, 1023},     // Bottom-right corner (254)
        {512, 512}        // Center (1024 % 256 = 0)
    };

    // Validate expected outputs at sample points
    for (const auto& s : samples) {
        int pixel = (int)input_image[s.i][s.j];
        int exp = compute_expected(pixel, (int)brightness, (int)contrast);
        int got = (int)output_image[s.i][s.j];
        if (got != exp) {
            std::cerr << "Test '" << test_name << "' FAILED at (" << s.i << "," << s.j
                      << "): pixel=" << pixel << " brightness=" << (int)brightness
                      << " contrast=" << (int)contrast << " expected=" << exp
                      << " got=" << got << std::endl;
            assert(false);
        }
    }

    std::cout << "Test '" << test_name << "' passed." << std::endl;
}

int main() {
    // Test Case 1: Identity transform (contrast=1, brightness=0)
    // Expected: output equals input; no saturation.
    run_test(ap_uint<8>(0), ap_uint<8>(1), "Identity (contrast=1, brightness=0)");

    // Test Case 2: Brightness increase (contrast=1, brightness=50)
    // Expected: output = input + 50; values saturate at 255.
    run_test(ap_uint<8>(50), ap_uint<8>(1), "Brightness +50 (contrast=1)");

    // Test Case 3: Contrast increase (contrast=2, brightness=0)
    // Expected: output = input * 2; values saturate at 255.
    run_test(ap_uint<8>(0), ap_uint<8>(2), "Contrast x2 (brightness=0)");

    // Test Case 4: Extreme case (contrast=0, brightness=255)
    // Expected: output = 255 for all pixels.
    run_test(ap_uint<8>(255), ap_uint<8>(0), "All 255 (contrast=0, brightness=255)");

    std::cout << "All tests completed successfully." << std::endl;
    return 0;
}
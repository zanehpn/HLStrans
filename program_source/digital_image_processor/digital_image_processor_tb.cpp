// contents of digital_image_processor_tb.cpp

#include <iostream>
#include <cstdint>
#include <cassert>

// Include the DUT (Device Under Test)
#include "digital_image_processor.cpp"

// Helper to fill the entire image with a specific value
static void fill_image(uint8_t img[IMG_SIZE][IMG_SIZE], uint8_t value) {
    for (int i = 0; i < IMG_SIZE; ++i) {
        for (int j = 0; j < IMG_SIZE; ++j) {
            img[i][j] = value;
        }
    }
}

// Helper to print a small patch around a coordinate (for debugging)
static void print_patch(const uint8_t img[IMG_SIZE][IMG_SIZE], int cx, int cy, int half = 1) {
    for (int i = cx - half; i <= cx + half; ++i) {
        for (int j = cy - half; j <= cy + half; ++j) {
            std::cout << (int)img[i][j] << " ";
        }
        std::cout << "\n";
    }
}

int main() {
    static uint8_t input_image[IMG_SIZE][IMG_SIZE];
    static uint8_t output_image[IMG_SIZE][IMG_SIZE];

    // Test 1: All-zero input should yield zeros for interior pixels; borders remain unchanged.
    fill_image(input_image, 0);
    fill_image(output_image, 0xEE);  // sentinel value to detect untouched borders
    digital_image_processor(input_image, output_image);

    // Check interior pixels
    assert(output_image[1][1] == 0);
    assert(output_image[512][512] == 0);
    assert(output_image[1022][1022] == 0);

    // Check borders are not modified by the function (remain sentinel)
    assert(output_image[0][0] == 0xEE);
    assert(output_image[0][500] == 0xEE);
    assert(output_image[1023][1023] == 0xEE);

    std::cout << "Test 1 PASS: Zero image produces zero interior, borders unchanged.\n";

    // Test 2: Constant image (value = 100) should remain constant after 3x3 average in interior.
    fill_image(input_image, 100);
    fill_image(output_image, 0);  // preset to zero; borders should remain zero after processing
    digital_image_processor(input_image, output_image);

    assert(output_image[1][1] == 100);
    assert(output_image[512][512] == 100);
    assert(output_image[1022][1022] == 100);

    // Borders unaffected
    assert(output_image[0][0] == 0);
    assert(output_image[0][500] == 0);
    assert(output_image[1023][1023] == 0);

    std::cout << "Test 2 PASS: Constant image preserved in interior; borders unchanged.\n";

    // Test 3: Single impulse at center with value 9.
    // Expected: 3x3 block in output centered at the same location becomes 1 (sum=9, avg=1).
    fill_image(input_image, 0);
    fill_image(output_image, 0);
    const int cx = 512, cy = 512;
    input_image[cx][cy] = 9;
    digital_image_processor(input_image, output_image);

    for (int di = -1; di <= 1; ++di) {
        for (int dj = -1; dj <= 1; ++dj) {
            assert(output_image[cx + di][cy + dj] == 1);
        }
    }
    // Far away pixel should be zero
    assert(output_image[400][400] == 0);

    std::cout << "Test 3 PASS: Impulse produces 3x3 block of ones in output.\n";

    // Test 4: Edge-influenced smoothing near top-left interior.
    // Set input_image[0][0], [0][1], [1][0] = 9, others zero.
    // For output at (1,1): sum = 9 + 9 + 9 = 27, average = 3.
    fill_image(input_image, 0);
    fill_image(output_image, 0);
    input_image[0][0] = 9;
    input_image[0][1] = 9;
    input_image[1][0] = 9;
    digital_image_processor(input_image, output_image);

    assert(output_image[1][1] == 3);
    assert(output_image[2][2] == 0);  // away from the influenced area should be zero

    std::cout << "Test 4 PASS: Edge contributions correctly included for interior pixel (1,1).\n";

    // Test 5: Constant max value (255) to ensure no overflow in sum and division works.
    fill_image(input_image, 255);
    fill_image(output_image, 0);
    digital_image_processor(input_image, output_image);

    assert(output_image[1][1] == 255);
    assert(output_image[512][512] == 255);
    assert(output_image[1022][1022] == 255);
    // Borders unchanged
    assert(output_image[0][0] == 0);
    assert(output_image[1023][1023] == 0);

    std::cout << "Test 5 PASS: Max-value constant image preserved in interior, no overflow.\n";

    // Optional: Print a small patch for visual confirmation from Test 3
    std::cout << "Sample 3x3 patch around (512,512) from Test 3 (should all be 1):\n";
    fill_image(input_image, 0);
    fill_image(output_image, 0);
    input_image[cx][cy] = 9;
    digital_image_processor(input_image, output_image);
    print_patch(output_image, cx, cy, 1);

    std::cout << "All tests completed successfully.\n";
    return 0;
}
// contents of sobel_edge_detection_tb.cpp
#include <iostream>
#include <cassert>
#include <cstdint>

// Include the source to access sobel_edge_detection and constants
#include "sobel_edge_detection.cpp"

// Helper: fill entire image with a single value
static void fill_image(uint8_t img[IMG_HEIGHT][IMG_WIDTH], uint8_t val) {
    for (int i = 0; i < IMG_HEIGHT; ++i) {
        for (int j = 0; j < IMG_WIDTH; ++j) {
            img[i][j] = val;
        }
    }
}

// Helper: create a vertical step edge at column 'step_col'
// Columns [0..step_col-1] = leftVal, columns [step_col..W-1] = rightVal
static void make_vertical_step(uint8_t img[IMG_HEIGHT][IMG_WIDTH], int step_col, uint8_t leftVal, uint8_t rightVal) {
    for (int i = 0; i < IMG_HEIGHT; ++i) {
        for (int j = 0; j < IMG_WIDTH; ++j) {
            img[i][j] = (j < step_col) ? leftVal : rightVal;
        }
    }
}

// Helper: create a horizontal step edge at row 'step_row'
// Rows [0..step_row-1] = topVal, rows [step_row..H-1] = bottomVal
static void make_horizontal_step(uint8_t img[IMG_HEIGHT][IMG_WIDTH], int step_row, uint8_t topVal, uint8_t bottomVal) {
    for (int i = 0; i < IMG_HEIGHT; ++i) {
        uint8_t v = (i < step_row) ? topVal : bottomVal;
        for (int j = 0; j < IMG_WIDTH; ++j) {
            img[i][j] = v;
        }
    }
}

// Helper: verify entire interior [1..H-2][1..W-2] equals expected; prints first mismatch
static void assert_interior_equals(const uint8_t img[IMG_HEIGHT][IMG_WIDTH], uint8_t expected, const char* label) {
    int mismatches = 0;
    int first_i = -1, first_j = -1;
    for (int i = 1; i < IMG_HEIGHT - 1; ++i) {
        for (int j = 1; j < IMG_WIDTH - 1; ++j) {
            if (img[i][j] != expected) {
                ++mismatches;
                if (first_i < 0) { first_i = i; first_j = j; }
            }
        }
    }
    if (mismatches != 0) {
        std::cerr << "FAILED " << label << ": interior expected " << (int)expected
                  << ", found mismatch at (" << first_i << "," << first_j
                  << ") value=" << (int)img[first_i][first_j]
                  << " total mismatches=" << mismatches << std::endl;
    }
    assert(mismatches == 0);
}

int main() {
    static uint8_t input_image[IMG_HEIGHT][IMG_WIDTH];
    static uint8_t output_image[IMG_HEIGHT][IMG_WIDTH];

    // Test 1: Zero image -> Expect all interior outputs are zero
    fill_image(input_image, 0);
    fill_image(output_image, 123); // prefill to ensure function writes interior
    sobel_edge_detection(input_image, output_image);
    assert_interior_equals(output_image, 0, "Test 1 (Zero image)");
    std::cout << "Test 1 PASSED: Zero image yields zero edges in interior." << std::endl;

    // Test 2: Vertical step edge in the middle -> Expect strong edges (255) at columns around the step
    int step_col = IMG_WIDTH / 2;
    make_vertical_step(input_image, step_col, 0, 255);
    fill_image(output_image, 0);
    sobel_edge_detection(input_image, output_image);

    // Choose a safe interior row
    int row = IMG_HEIGHT / 2;

    // Check the two columns straddling the step produce saturated magnitude 255
    assert(output_image[row][step_col - 1] == 255);
    assert(output_image[row][step_col] == 255);

    // Check columns away from the step are zero (uniform regions)
    assert(output_image[row][step_col - 2] == 0);
    assert(output_image[row][step_col + 1] == 0);
    assert(output_image[row][100] == 0);
    assert(output_image[row][IMG_WIDTH - 2] == 0);

    std::cout << "Test 2 PASSED: Vertical step produces saturated edges at step columns, zero elsewhere." << std::endl;

    // Test 3: Horizontal step edge in the middle -> Expect strong edges (255) at rows around the step
    int step_row = IMG_HEIGHT / 2;
    make_horizontal_step(input_image, step_row, 0, 255);
    fill_image(output_image, 0);
    sobel_edge_detection(input_image, output_image);

    // Choose a safe interior column
    int col = IMG_WIDTH / 2;

    // Check the two rows straddling the step produce saturated magnitude 255
    assert(output_image[step_row - 1][col] == 255);
    assert(output_image[step_row][col] == 255);

    // Check rows away from the step are zero (uniform regions)
    assert(output_image[step_row - 2][col] == 0);
    assert(output_image[step_row + 1][col] == 0);
    assert(output_image[100][col] == 0);
    assert(output_image[IMG_HEIGHT - 2][col] == 0);

    std::cout << "Test 3 PASSED: Horizontal step produces saturated edges at step rows, zero elsewhere." << std::endl;

    std::cout << "All tests PASSED." << std::endl;
    return 0;
}
#include <iostream>
using namespace std;

#include "video_2dfilter.h"

int main() {
    // Declare input and output image arrays.
    rgb_pixel pixel_in[MAX_HEIGHT][MAX_WIDTH];
    rgb_pixel pixel_out[MAX_HEIGHT][MAX_WIDTH];

    // Initialize the input image: fill all pixels with R=100, G=100, B=100.
    for (int row = 0; row < MAX_HEIGHT; row++) {
        for (int col = 0; col < MAX_WIDTH; col++) {
            pixel_in[row][col].R = 100;
            pixel_in[row][col].G = 100;
            pixel_in[row][col].B = 100;
        }
    }

    // Call the video 2D filter.
    video_2dfilter(pixel_in, pixel_out);

    // Verify the output.
    // The filter code sets the boundary pixels to 0.
    // For interior pixels, the filter should compute a weighted sum that preserves a constant value.
    // Since the kernel sums to 16 and each pixel is 100, interior output should be 100.
    bool pass = true;
    for (int row = 0; row < MAX_HEIGHT; row++) {
        for (int col = 0; col < MAX_WIDTH; col++) {
            if (row == 0 || col == 0 || row == MAX_HEIGHT - 1 || col == MAX_WIDTH - 1) {
                // Expect boundaries to be zero.
                if (pixel_out[row][col].R != 0 ||
                    pixel_out[row][col].G != 0 ||
                    pixel_out[row][col].B != 0) {
                    pass = false;
                }
            } else {
                // Expect interior pixels to be 100 (constant image filtered with a normalized kernel).
                if (pixel_out[row][col].R != 100 ||
                    pixel_out[row][col].G != 100 ||
                    pixel_out[row][col].B != 100) {
                    pass = false;
                }
            }
        }
    }

    // Print test result.
    if (pass)
        cout << "Test pass" << endl;
    else
        cout << "Test fail" << endl;

    return 0;
}

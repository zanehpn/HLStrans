// ---- file: histogram_equalization.cpp ----
#include <cstdint>

#define IMAGE_SIZE 1024
#define GRAY_LEVELS 256

void histogram_equalization(uint8_t input_image[IMAGE_SIZE], uint8_t output_image[IMAGE_SIZE]) {

    int histogram[GRAY_LEVELS] = {0};
    int cdf[GRAY_LEVELS] = {0};
    int cdf_min = 0;
    int num_pixels = IMAGE_SIZE;

    // Calculate histogram
    for (int i = 0; i < IMAGE_SIZE; i++) {
        histogram[static_cast<int>(input_image[i])]++;
    }

    // Calculate CDF (Cumulative Distribution Function)
    cdf[0] = histogram[0];
    for (int i = 1; i < GRAY_LEVELS; i++) {
        cdf[i] = cdf[i - 1] + histogram[i];
    }

    // Find the minimum non-zero value in CDF
    for (int i = 0; i < GRAY_LEVELS; i++) {
        if (cdf[i] != 0) {
            cdf_min = cdf[i];
            break;
        }
    }

    // Apply histogram equalization
    for (int i = 0; i < IMAGE_SIZE; i++) {
        int val = ((cdf[static_cast<int>(input_image[i])] - cdf_min) * (GRAY_LEVELS - 1)) / (num_pixels - cdf_min);
        output_image[i] = static_cast<uint8_t>(val);
    }
}

// Top function name: histogram_equalization

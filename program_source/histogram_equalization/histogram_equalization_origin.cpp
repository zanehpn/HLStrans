// Converted from histogram_equalization_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: histogram_equalization.cpp ----
#include <ap_int.h>

#define IMAGE_SIZE 1024
#define GRAY_LEVELS 256

void histogram_equalization(ap_uint<8> input_image[IMAGE_SIZE], ap_uint<8> output_image[IMAGE_SIZE]) {

    int histogram[GRAY_LEVELS] = {0};
    int cdf[GRAY_LEVELS] = {0};
    int cdf_min = 0;
    int num_pixels = IMAGE_SIZE;

    // Calculate histogram
    for (int i = 0; i < IMAGE_SIZE; i++) {

        histogram[input_image[i]]++;
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

        output_image[i] = (ap_uint<8>)(((cdf[input_image[i]] - cdf_min) * (GRAY_LEVELS - 1)) / (num_pixels - cdf_min));
    }
}

// Top function name: histogram_equalization

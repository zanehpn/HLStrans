// Converted from otsu_thresholding_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: otsu_thresholding.cpp ----
#include <cstdint>

#define IMG_SIZE 1024

void otsu_thresholding(uint8_t image[IMG_SIZE], uint8_t thresholded_image[IMG_SIZE]) {

    uint32_t histogram[256] = {0};
    uint32_t total_pixels = IMG_SIZE;
    uint32_t sum = 0;
    uint32_t sumB = 0;
    uint32_t wB = 0;
    uint32_t wF = 0;
    uint8_t threshold = 0;
    uint32_t max_variance = 0;

    // Compute histogram
    for (int i = 0; i < IMG_SIZE; i++) {
        histogram[image[i]]++;
    }

    // Compute sum of all pixel values
    for (int t = 0; t < 256; t++) {
        sum += static_cast<uint32_t>(t) * histogram[t];
    }

    // Find optimal threshold
    for (int t = 0; t < 256; t++) {

        wB += histogram[t];
        if (wB == 0) continue;
        wF = total_pixels - wB;
        if (wF == 0) break;

        sumB += static_cast<uint32_t>(t) * histogram[t];
        uint32_t mB = sumB / wB;
        uint32_t mF = (sum - sumB) / wF;

        uint32_t diff = mB - mF;
        uint32_t variance = wB * wF * diff * diff;
        if (variance > max_variance) {
            max_variance = variance;
            threshold = static_cast<uint8_t>(t);
        }
    }

    // Apply threshold to the image
    for (int i = 0; i < IMG_SIZE; i++) {
        thresholded_image[i] = (image[i] > threshold) ? 255 : 0;
    }
}

// Top function name: otsu_thresholding

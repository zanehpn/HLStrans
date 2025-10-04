// Converted from camera_controller_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: camera_controller.cpp ----
#include <cstdint>

#define IMG_WIDTH 1024
#define IMG_HEIGHT 1024

void camera_controller(uint8_t input_image[IMG_HEIGHT][IMG_WIDTH], uint8_t output_image[IMG_HEIGHT][IMG_WIDTH], uint8_t brightness, uint8_t contrast) {

    for (int i = 0; i < IMG_HEIGHT; i++) {

        for (int j = 0; j < IMG_WIDTH; j++) {

            int pixel = static_cast<int>(input_image[i][j]);
            int temp = pixel * static_cast<int>(contrast) + static_cast<int>(brightness);
            if (temp > 255) temp = 255;
            if (temp < 0) temp = 0;
            output_image[i][j] = static_cast<uint8_t>(temp);
        }
    }
}

// Top function name: camera_controller

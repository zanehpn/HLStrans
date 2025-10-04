// Converted from camera_controller_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: camera_controller.cpp ----
#include <ap_int.h>

#define IMG_WIDTH 1024
#define IMG_HEIGHT 1024

void camera_controller(ap_uint<8> input_image[IMG_HEIGHT][IMG_WIDTH], ap_uint<8> output_image[IMG_HEIGHT][IMG_WIDTH], ap_uint<8> brightness, ap_uint<8> contrast) {

    for (int i = 0; i < IMG_HEIGHT; i++) {

        for (int j = 0; j < IMG_WIDTH; j++) {

            ap_uint<8> pixel = input_image[i][j];
            ap_int<16> temp = pixel * contrast + brightness;
            if (temp > 255) temp = 255;
            if (temp < 0) temp = 0;
            output_image[i][j] = (ap_uint<8>)temp;
        }
    }
}

// Top function name: camera_controller

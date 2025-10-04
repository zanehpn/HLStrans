// Converted from camera_controller.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: camera_controller.cpp ----
#include <ap_int.h>

#define IMG_WIDTH 1024
#define IMG_HEIGHT 1024

void camera_controller(ap_uint<8> input_image[IMG_HEIGHT][IMG_WIDTH], ap_uint<8> output_image[IMG_HEIGHT][IMG_WIDTH], ap_uint<8> brightness, ap_uint<8> contrast) {
#pragma HLS ARRAY_PARTITION variable=output_image type=cyclic dim=2 factor=16
#pragma HLS ARRAY_PARTITION variable=output_image type=cyclic dim=1 factor=4
#pragma HLS ARRAY_PARTITION variable=input_image type=cyclic dim=2 factor=2
#pragma HLS ARRAY_PARTITION variable=input_image type=cyclic dim=1 factor=1
    for (int i = 0; i < IMG_HEIGHT; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
        for (int j = 0; j < IMG_WIDTH; j++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=2
            ap_uint<8> pixel = input_image[i][j];
            ap_int<16> temp = pixel * contrast + brightness;
            if (temp > 255) temp = 255;
            if (temp < 0) temp = 0;
            output_image[i][j] = (ap_uint<8>)temp;
        }
    }
}

// Top function name: camera_controller

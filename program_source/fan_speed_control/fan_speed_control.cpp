// Converted from fan_speed_control.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: fan_speed_control.cpp ----
#include <ap_int.h>

#define ARRAY_SIZE 1024

void fan_speed_control(ap_int<16> temperature[ARRAY_SIZE], ap_int<16> fan_speed[ARRAY_SIZE]) {
#pragma HLS ARRAY_PARTITION variable=fan_speed type=cyclic dim=1 factor=1
#pragma HLS ARRAY_PARTITION variable=temperature type=cyclic dim=1 factor=1
    ap_int<16> threshold_low = 30;
    ap_int<16> threshold_high = 70;
    ap_int<16> speed_low = 1000;
    ap_int<16> speed_high = 3000;

    for (int i = 0; i < ARRAY_SIZE; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
        if (temperature[i] < threshold_low) {
            fan_speed[i] = speed_low;
        } else if (temperature[i] > threshold_high) {
            fan_speed[i] = speed_high;
        } else {
            fan_speed[i] = speed_low + ((temperature[i] - threshold_low) * (speed_high - speed_low)) / (threshold_high - threshold_low);
        }
    }
}

// Top function name: fan_speed_control

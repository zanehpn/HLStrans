// ---- file: thermal_sensor_calibration.cpp ----
#include <iostream>
#include <cmath>

#define ARRAY_SIZE 1024

void thermal_sensor_calibration(float raw_data[ARRAY_SIZE], float calibrated_data[ARRAY_SIZE], float offset, float scale) {
#pragma HLS ARRAY_PARTITION variable=calibrated_data type=cyclic dim=1 factor=1
#pragma HLS ARRAY_PARTITION variable=raw_data type=cyclic dim=1 factor=1
    for (int i = 0; i < ARRAY_SIZE; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
        calibrated_data[i] = (raw_data[i] + offset) * scale;
    }
}

// Top function name: thermal_sensor_calibration

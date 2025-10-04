// Converted from thermal_sensor_calibration_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: thermal_sensor_calibration.cpp ----
#include <iostream>
#include <cmath>

#define ARRAY_SIZE 1024

void thermal_sensor_calibration(float raw_data[ARRAY_SIZE], float calibrated_data[ARRAY_SIZE], float offset, float scale) {

    for (int i = 0; i < ARRAY_SIZE; i++) {

        calibrated_data[i] = (raw_data[i] + offset) * scale;
    }
}

// Top function name: thermal_sensor_calibration

// MALLOC_VARIANT
#include <iostream>
#include <cmath>

#define ARRAY_SIZE 1024

void thermal_sensor_calibration(float raw_data[ARRAY_SIZE], float calibrated_data[ARRAY_SIZE], float offset, float scale) {
    float* raw_buf = new float[ARRAY_SIZE];
    float* cal_buf = new float[ARRAY_SIZE];

    for (int i = 0; i < ARRAY_SIZE; ++i) {
        raw_buf[i] = raw_data[i];
    }

    for (int i = 0; i < ARRAY_SIZE; ++i) {
        cal_buf[i] = (raw_buf[i] + offset) * scale;
    }

    for (int i = 0; i < ARRAY_SIZE; ++i) {
        calibrated_data[i] = cal_buf[i];
    }

    delete[] cal_buf;
    delete[] raw_buf;
}

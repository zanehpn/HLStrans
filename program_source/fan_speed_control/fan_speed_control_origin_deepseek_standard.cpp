// ---- file: fan_speed_control.cpp ----
#include <cstdint>

#define ARRAY_SIZE 1024

void fan_speed_control(int16_t temperature[ARRAY_SIZE], int16_t fan_speed[ARRAY_SIZE]) {

    const int16_t threshold_low = 30;
    const int16_t threshold_high = 70;
    const int16_t speed_low = 1000;
    const int16_t speed_high = 3000;

    for (int i = 0; i < ARRAY_SIZE; i++) {

        if (temperature[i] < threshold_low) {
            fan_speed[i] = speed_low;
        } else if (temperature[i] > threshold_high) {
            fan_speed[i] = speed_high;
        } else {
            int numerator = (static_cast<int>(temperature[i]) - static_cast<int>(threshold_low)) *
                            (static_cast<int>(speed_high) - static_cast<int>(speed_low));
            int denominator = static_cast<int>(threshold_high) - static_cast<int>(threshold_low);
            fan_speed[i] = static_cast<int16_t>(static_cast<int>(speed_low) + numerator / denominator);
        }
    }
}

// Top function name: fan_speed_control

// MALLOC_VARIANT
#include <stdint.h>

#define ARRAY_SIZE 1024
#define THRESHOLD 75

void temperature_based_shutdown(int temperature_readings[ARRAY_SIZE], int shutdown_flags[ARRAY_SIZE]) {
    int* temp_readings = new int[ARRAY_SIZE];
    int* temp_flags = new int[ARRAY_SIZE];

    for (int i = 0; i < ARRAY_SIZE; i++) {
        temp_readings[i] = temperature_readings[i];
    }

    for (int i = 0; i < ARRAY_SIZE; i++) {
        temp_flags[i] = (temp_readings[i] > THRESHOLD) ? 1 : 0;
    }

    for (int i = 0; i < ARRAY_SIZE; i++) {
        shutdown_flags[i] = temp_flags[i];
    }

    delete[] temp_readings;
    delete[] temp_flags;
}

#include <cstdint>

#define ARRAY_SIZE 1024

void hazard_detection_resolution(int32_t input1[ARRAY_SIZE], int32_t input2[ARRAY_SIZE], int32_t output[ARRAY_SIZE]) {
    int32_t* din1 = new int32_t[ARRAY_SIZE];
    int32_t* din2 = new int32_t[ARRAY_SIZE];
    int32_t* dout = new int32_t[ARRAY_SIZE];

    for (int i = 0; i < ARRAY_SIZE; ++i) {
        din1[i] = input1[i];
        din2[i] = input2[i];
    }

    for (int i = 0; i < ARRAY_SIZE; ++i) {
        int32_t temp1 = din1[i];
        int32_t temp2 = din2[i];
        if (temp1 > temp2) {
            dout[i] = temp1 - temp2;
        } else if (temp1 < temp2) {
            dout[i] = temp2 - temp1;
        } else {
            dout[i] = 0;
        }
    }

    for (int i = 0; i < ARRAY_SIZE; ++i) {
        output[i] = dout[i];
    }

    delete[] din1;
    delete[] din2;
    delete[] dout;
}

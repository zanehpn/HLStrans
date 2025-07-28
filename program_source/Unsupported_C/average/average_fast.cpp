#include <ap_int.h>

#define MAX_LEN 128

float average(const float data[MAX_LEN], int len) {
    float sum = 0.0f;
#pragma HLS PIPELINE II=1
    sum_loop: for (int i = 0; i < len; ++i) {
    #pragma HLS UNROLL factor=4
        sum += data[i];
    }
    return sum / len;
}

#include <ap_int.h>
#include <hls_math.h>

#define NPOINTS 64
#define ORDER 32

typedef ap_fixed<32, 16, AP_TRN, AP_SAT> fixed_t;
typedef ap_fixed<64, 32, AP_TRN, AP_SAT> double_fixed_t;

void latnrm(float data[NPOINTS], float outa[NPOINTS], float coefficient[ORDER*2],
            float internal_state[ORDER+1])
{
#pragma HLS ARRAY_PARTITION variable=coefficient complete dim=1 factor=2
#pragma HLS ARRAY_PARTITION variable=internal_state complete dim=1 factor=2

    fixed_t coeff[ORDER*2];
    fixed_t int_state[ORDER+1];

    // Convert input coefficients and internal state to fixed point
    for (int j = 0; j < ORDER*2; j++) {
#pragma HLS UNROLL factor=4
        coeff[j] = coefficient[j];
    }
    for (int j = 0; j <= ORDER; j++) {
#pragma HLS UNROLL factor=4
        int_state[j] = internal_state[j];
    }

    fixed_t left, right, top;
    fixed_t bottom = 0;
    fixed_t sum;

    for (int i = 0; i < NPOINTS; i++) {
#pragma HLS PIPELINE II=1

        top = data[i];
        for (int j = 1; j < ORDER; j++) {
#pragma HLS UNROLL factor=4
            left = top;
            right = int_state[j];
            int_state[j] = bottom;
            top = coeff[j - 1] * left - coeff[j] * right;
            bottom = coeff[j - 1] * right + coeff[j] * left;
        }
        int_state[ORDER] = bottom;
        int_state[ORDER + 1] = top;

        sum = 0.0;
        for (int j = 0; j < ORDER; j++) {
#pragma HLS UNROLL factor=4
            sum += int_state[j] * coeff[j + ORDER];
        }
        outa[i] = sum.to_float();
    }

    // Update the internal state array in floating point
    for (int j = 0; j <= ORDER; j++) {
#pragma HLS UNROLL factor=4
        internal_state[j] = int_state[j].to_float();
    }
}
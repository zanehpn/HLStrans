// Converted from restoring_divider.c to .cpp by convert_and_transform_with_deepseek_auto.py

// ---- file: restoring_divider.cpp ----
#include <ap_int.h>

#define N 1024

void restoring_divider(ap_uint<32> dividend[N], ap_uint<32> divisor[N], ap_uint<32> quotient[N], ap_uint<32> remainder[N]) {
#pragma HLS ARRAY_PARTITION variable=remainder type=cyclic dim=1 factor=1
#pragma HLS ARRAY_PARTITION variable=quotient type=cyclic dim=1 factor=1
#pragma HLS ARRAY_PARTITION variable=divisor type=cyclic dim=1 factor=1
#pragma HLS ARRAY_PARTITION variable=dividend type=cyclic dim=1 factor=2
    for (int idx = 0; idx < N; idx++) {
#pragma HLS PIPELINE 
#pragma HLS UNROLL factor=1
        ap_uint<64> dividend_ext = dividend[idx];
        ap_uint<32> divisor_ext = divisor[idx];
        ap_uint<32> quotient_temp = 0;
        ap_uint<32> remainder_temp = 0;

        for (int i = 31; i >= 0; i--) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
            remainder_temp = (remainder_temp << 1) | ((dividend_ext >> (31 + i)) & 1);
            if (remainder_temp >= divisor_ext) {
                remainder_temp -= divisor_ext;
                quotient_temp |= (1 << i);
            }
        }

        quotient[idx] = quotient_temp;
        remainder[idx] = remainder_temp;
    }
}

// Top function name: restoring_divider

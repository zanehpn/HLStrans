// ---- file: fsm.cpp ----
#include <ap_int.h>

#define LARGE_SCALE 1024

enum State { STATE_0, STATE_1, STATE_2, STATE_3 };

void fsm(ap_uint<1> input[LARGE_SCALE], ap_uint<1> output[LARGE_SCALE]) {
#pragma HLS ARRAY_PARTITION variable=output type=cyclic dim=1 factor=1
#pragma HLS ARRAY_PARTITION variable=input type=cyclic dim=1 factor=1
    State current_state = STATE_0;

    for (int i = 0; i < LARGE_SCALE; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
        switch (current_state) {
            case STATE_0:
                if (input[i] == 1) {
                    current_state = STATE_1;
                }
                output[i] = 0;
                break;
            case STATE_1:
                if (input[i] == 0) {
                    current_state = STATE_2;
                }
                output[i] = 1;
                break;
            case STATE_2:
                if (input[i] == 1) {
                    current_state = STATE_3;
                }
                output[i] = 0;
                break;
            case STATE_3:
                if (input[i] == 0) {
                    current_state = STATE_0;
                }
                output[i] = 1;
                break;
        }
    }
}

// Top function name: fsm

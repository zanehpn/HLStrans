// Converted from fsm_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: fsm.cpp ----
#include <cstdint>

#define LARGE_SCALE 1024

enum State { STATE_0, STATE_1, STATE_2, STATE_3 };

void fsm(uint8_t input[LARGE_SCALE], uint8_t output[LARGE_SCALE]) {

    State current_state = STATE_0;

    for (int i = 0; i < LARGE_SCALE; i++) {

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

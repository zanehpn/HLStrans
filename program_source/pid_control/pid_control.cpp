// Converted from pid_control.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: pid_control.cpp ----
#include <ap_fixed.h>

#define N 1024

typedef ap_fixed<16, 8> fixed_point_t;

void pid_control(fixed_point_t setpoint[N], fixed_point_t measured_value[N], fixed_point_t Kp, fixed_point_t Ki, fixed_point_t Kd, fixed_point_t output[N]) {
#pragma HLS ARRAY_PARTITION variable=output type=cyclic dim=1 factor=8
#pragma HLS ARRAY_PARTITION variable=measured_value type=cyclic dim=1 factor=1
#pragma HLS ARRAY_PARTITION variable=setpoint type=cyclic dim=1 factor=1
    fixed_point_t integral = 0;
    fixed_point_t previous_error = 0;

    for (int i = 0; i < N; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
        fixed_point_t error = setpoint[i] - measured_value[i];
        integral += error;
        fixed_point_t derivative = error - previous_error;
        output[i] = Kp * error + Ki * integral + Kd * derivative;
        previous_error = error;
    }
}

// Top function name: pid_control

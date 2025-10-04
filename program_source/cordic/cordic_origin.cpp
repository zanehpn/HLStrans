// Converted from cordic_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: cordic.cpp ----
#include <cmath>
#include <ap_fixed.h>

#define NUM_ITER 16
#define ARRAY_SIZE 1024

typedef ap_fixed<16, 4> fixed_point_t;

void cordic(fixed_point_t x_in[ARRAY_SIZE], fixed_point_t y_in[ARRAY_SIZE], fixed_point_t theta_in[ARRAY_SIZE], fixed_point_t x_out[ARRAY_SIZE], fixed_point_t y_out[ARRAY_SIZE]) {

    const fixed_point_t K = 0.6072529350088812561694; // Scaling factor
    const fixed_point_t angles[NUM_ITER] = {
        0.7853981633974483, 0.4636476090008061, 0.24497866312686414, 0.12435499454676144,
        0.06241880999595735, 0.031239833430268277, 0.015623728620476831, 0.007812341060101111,
        0.0039062301319669718, 0.0019531225164788188, 0.0009765621895593195, 0.0004882812111948983,
        0.00024414062014936177, 0.00012207031189367021, 6.103515617420877e-05, 3.0517578115526096e-05
    };

    for (int i = 0; i < ARRAY_SIZE; i++) {

        fixed_point_t x = x_in[i];
        fixed_point_t y = y_in[i];
        fixed_point_t theta = theta_in[i];

        fixed_point_t current_x = x * K;
        fixed_point_t current_y = y * K;
        fixed_point_t current_theta = theta;

        for (int j = 0; j < NUM_ITER; j++) {

            fixed_point_t x_shift = current_x >> j;
            fixed_point_t y_shift = current_y >> j;

            if (current_theta < 0) {
                current_x += y_shift;
                current_y -= x_shift;
                current_theta += angles[j];
            } else {
                current_x -= y_shift;
                current_y += x_shift;
                current_theta -= angles[j];
            }
        }

        x_out[i] = current_x;
        y_out[i] = current_y;
    }
}

// Top function name: cordic

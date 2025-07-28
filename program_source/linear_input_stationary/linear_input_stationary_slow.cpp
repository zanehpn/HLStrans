#include "linear_input_stationary.h"

void linear_input_stationary(
    hls::stream<array<FM_TYPE, PARALLEL>> &input,
    WT_TYPE weight[DIM_OUT][DIM_IN],
    WT_TYPE bias[DIM_OUT],
    FM_TYPE output[DIM_OUT]) {

    for (int dim_out = 0; dim_out < DIM_OUT; dim_out++) {
        output[dim_out] = bias[dim_out];
    }

    for (int dim_in_base = 0; dim_in_base < DIM_IN; dim_in_base += PARALLEL) {
        array<FM_TYPE, PARALLEL> in_slice;
        input >> in_slice;
        for (int dim_out = 0; dim_out < DIM_OUT; dim_out++) {
            FM_TYPE addend = 0;
            for (int dim_in_offset = 0; dim_in_offset < PARALLEL;
                 dim_in_offset++) {
                int dim_in = dim_in_base + dim_in_offset;
                FM_TYPE in_el = in_slice[dim_in_offset];
                if (dim_in < DIM_IN) {
                    addend += in_el * weight[dim_out][dim_in];
                }
            }
            output[dim_out] += addend;
        }
    }

    for (int dim_out = 0; dim_out < DIM_OUT; dim_out++) {
        if (RELU && output[dim_out] < 0)
            output[dim_out] = 0;
    }
}
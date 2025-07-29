#include <stdio.h>
#include <math.h>
#include <hls_math.h>  // Use HLS math library for optimized math functions
#include <ap_fixed.h>
#include <ap_int.h>

#define gamma 8.0f
#define b 0
#define N_FEATURES 1248
#define N_SUP_VECT 18

const float sv_coeff[N_FEATURES] = {1, 2, 2, 1};  // Initialize with actual values
const float sup_vectors[N_SUP_VECT][N_FEATURES] = {{1, 5, 2.2, 1.1}, {1, 2, 4, 1.1}, {1, 2.1, 2.2, 1.1}, {1, 8, 2.2, 1.1}};  // Initialize with actual values

typedef ap_fixed<32, 16, AP_RND, AP_SAT> fixed_t;
typedef ap_ufixed<32, 16, AP_RND, AP_SAT> ufixed_t;

fixed_t compute_diff_square(fixed_t a, fixed_t b) {
    #pragma HLS INLINE
    fixed_t diff = a - b;
    return diff * diff;
}

int svm(float test_vector[N_SUP_VECT]) {
    #pragma HLS ARRAY_PARTITION variable=test_vector complete
    #pragma HLS ARRAY_PARTITION variable=sv_coeff complete
    #pragma HLS ARRAY_PARTITION variable=sup_vectors complete dim=2

    fixed_t sum = 0;
    for (int i = 0; i < N_FEATURES; i++) {
        #pragma HLS UNROLL factor=4  // Unroll the loop for better parallelism
        fixed_t norma = 0;
        for (int j = 0; j < N_SUP_VECT; j++) {
            #pragma HLS PIPELINE II=1  // Enable pipeline for better throughput
            fixed_t test_vec_fixed = test_vector[j];
            fixed_t sup_vec_fixed = sup_vectors[j][i];
            norma += compute_diff_square(test_vec_fixed, sup_vec_fixed);
        }
        fixed_t exp_term = hls::exp(-gamma * norma);  // Use HLS optimized exp function
        fixed_t coeff_fixed = sv_coeff[i];
        sum += exp_term * coeff_fixed;
    }
    sum -= b;
    return (int)sum.to_int();  // Convert fixed point to integer
}
// Converted from backprop.c to .cpp by convert_and_transform_with_deepseek_auto.py

// ---- file: support.h ----
#include <stdlib.h>
#include <inttypes.h>

///// File and section functions
char *readfile(int fd);
char *find_section_start(char *s, int n);

///// Array read functions
#define SECTION_TERMINATED -1
int parse_string(char *s, char *arr, int n); // n==-1 : %%-terminated
int parse_uint8_t_array(char *s, uint8_t *arr, int n);
int parse_uint16_t_array(char *s, uint16_t *arr, int n);
int parse_uint32_t_array(char *s, uint32_t *arr, int n);
int parse_uint64_t_array(char *s, uint64_t *arr, int n);
int parse_int8_t_array(char *s, int8_t *arr, int n);
int parse_int16_t_array(char *s, int16_t *arr, int n);
int parse_int32_t_array(char *s, int32_t *arr, int n);
int parse_int64_t_array(char *s, int64_t *arr, int n);
int parse_float_array(char *s, float *arr, int n);
int parse_double_array(char *s, double *arr, int n);

///// Array write functions
int write_string(int fd, char *arr, int n);
int write_uint8_t_array(int fd, uint8_t *arr, int n);
int write_uint16_t_array(int fd, uint16_t *arr, int n);
int write_uint32_t_array(int fd, uint32_t *arr, int n);
int write_uint64_t_array(int fd, uint64_t *arr, int n);
int write_int8_t_array(int fd, int8_t *arr, int n);
int write_int16_t_array(int fd, int16_t *arr, int n);
int write_int32_t_array(int fd, int32_t *arr, int n);
int write_int64_t_array(int fd, int64_t *arr, int n);
int write_float_array(int fd, float *arr, int n);
int write_double_array(int fd, double *arr, int n);

int write_section_header(int fd);

///// Per-benchmark files
void run_benchmark( void *vargs );
void input_to_data(int fd, void *vdata);
void data_to_input(int fd, void *vdata);
void output_to_data(int fd, void *vdata);
void data_to_output(int fd, void *vdata);
int check_data(void *vdata, void *vref);

extern int INPUT_SIZE;

///// TYPE macros
// Macro trick to automatically expand TYPE into the appropriate function
// (S)et (T)ype (A)nd (C)oncatenate
#define __STAC_EXPANDED(f_pfx,t,f_sfx) f_pfx##t##f_sfx
#define STAC(f_pfx,t,f_sfx) __STAC_EXPANDED(f_pfx,t,f_sfx)
// Invoke like this:
//   #define TYPE int32_t
//   STAC(write_,TYPE,_array)(fd, array, n);
// where array is of type (TYPE *)
// This translates to:
//   write_int32_t_array(fd, array, n);


/**** PRNG library. Available at https://github.com/rdadolf/prng. *****/
#ifndef __PRNG_H__
#define __PRNG_H__

#include <stdlib.h>
#include <stdio.h>
#include <inttypes.h>
#include <stdint.h>

#define LAG1 (UINT16_C(24))
#define LAG2 (UINT16_C(55))
#define RAND_SSIZE ((UINT16_C(1))<<6)
#define RAND_SMASK (RAND_SSIZE-1)
#define RAND_EXHAUST_LIMIT LAG2
// 10x is a heuristic, it just needs to be large enough to remove correlation
#define RAND_REFILL_COUNT ((LAG2*10)-RAND_EXHAUST_LIMIT)
struct prng_rand_t {
  uint64_t s[RAND_SSIZE]; // Lags
  uint_fast16_t i; // Location of the current lag
  uint_fast16_t c; // Exhaustion count
};

#define PRNG_RAND_MAX UINT64_MAX


static inline uint64_t prng_rand(struct prng_rand_t *state) {
  uint_fast16_t i;
  uint_fast16_t r, new_rands=0;

  if( !state->c ) { // Randomness exhausted, run forward to refill
    new_rands += RAND_REFILL_COUNT+1;
    state->c = RAND_EXHAUST_LIMIT-1;
  } else {
    new_rands = 1;
    state->c--;
  }

  for( r=0; r<new_rands; r++ ) {
    i = state->i;
    state->s[i&RAND_SMASK] = state->s[(i+RAND_SSIZE-LAG1)&RAND_SMASK]
                              + state->s[(i+RAND_SSIZE-LAG2)&RAND_SMASK];
    state->i++;
  }
  return state->s[i&RAND_SMASK];
}

static inline void prng_srand(uint64_t seed, struct prng_rand_t *state) {
  uint_fast16_t i;
  // Naive seed
  state->c = RAND_EXHAUST_LIMIT;
  state->i = 0;

  state->s[0] = seed;
  for(i=1; i<RAND_SSIZE; i++) {
    // Arbitrary magic, mostly to eliminate the effect of low-value seeds.
    // Probably could be better, but the run-up obviates any real need to.
    state->s[i] = i*(UINT64_C(2147483647)) + seed;
  }

  // Run forward 10,000 numbers
  for(i=0; i<10000; i++) {
    prng_rand(state);
  }
}

// Clean up our macros
#undef LAG1
#undef LAG2
#undef RAND_SSIZE
#undef RAND_SMASK
#undef RAND_EXHAUST_LIMIT
#undef RAND_REFILL_COUNT

// PRNG_RAND_MAX is exported

#endif

// ---- file: backprop.c ----
#include "backprop.h"

void soft_max(TYPE net_outputs[possible_outputs], TYPE activations[possible_outputs]) {
    int i;
    TYPE sum;
    sum = (TYPE) 0.0;

    for(i=0; i < possible_outputs; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=2
        sum += exp(-activations[i]);
    }
    for(i=0; i < possible_outputs; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=2
        net_outputs[i] = exp(-activations[i])/sum;
    }
}

void RELU(TYPE activations[nodes_per_layer], TYPE dactivations[nodes_per_layer], int size) {
    int i;
    for( i = 0; i < size; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
        dactivations[i] = activations[i]*(1.0-activations[i]);
        activations[i] = 1.0/(1.0+exp(-activations[i]));
    }
}

void add_bias_to_activations(TYPE biases[nodes_per_layer], 
                               TYPE activations[nodes_per_layer],
                               int size) {
    int i;
    for( i = 0; i < size; i++){
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
        activations[i] = activations[i] + biases[i];
    }
}

void matrix_vector_product_with_bias_input_layer(TYPE biases[nodes_per_layer],
                                                 TYPE weights[input_dimension*nodes_per_layer],
                                                 TYPE activations[nodes_per_layer],
                                                 TYPE input_sample[input_dimension]){
    int i,j;
    for(j = 0; j < nodes_per_layer; j++){
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=2
        activations[j] = (TYPE)0.0;
        for (i = 0; i < input_dimension; i++){
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
            activations[j] += weights[j*input_dimension + i] * input_sample[i];
        }
    }
    add_bias_to_activations(biases, activations, nodes_per_layer);
}

void matrix_vector_product_with_bias_second_layer(TYPE biases[nodes_per_layer],
                                                 TYPE weights[nodes_per_layer*nodes_per_layer],
                                                 TYPE activations[nodes_per_layer],
                                                 TYPE input_activations[nodes_per_layer]){
    int i,j;
    for (i = 0; i < nodes_per_layer; i++){
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=2
        activations[i] = (TYPE)0.0;
        for(j = 0; j < nodes_per_layer; j++){
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=4
            activations[i] += weights[i*nodes_per_layer + j] * input_activations[j];
        }
    }
    add_bias_to_activations(biases, activations, nodes_per_layer);
}

void matrix_vector_product_with_bias_output_layer(TYPE biases[possible_outputs],
                                                 TYPE weights[nodes_per_layer*possible_outputs],
                                                 TYPE activations[possible_outputs],
                                                 TYPE input_activations[nodes_per_layer]){
    int i, j;
    for(j = 0; j < possible_outputs; j++){
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
        activations[j] = (TYPE)0.0;
        for (i = 0; i < nodes_per_layer; i++){
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=2
            activations[j] += weights[j*nodes_per_layer + i] * input_activations[i];
        }
    }
    add_bias_to_activations(biases, activations, possible_outputs);
}

void take_difference(TYPE net_outputs[possible_outputs], 
                     TYPE solutions[possible_outputs], 
                     TYPE output_difference[possible_outputs],
                     TYPE dactivations[possible_outputs]) {
    int i;
    for( i = 0; i < possible_outputs; i++){
#pragma HLS PIPELINE 
#pragma HLS UNROLL factor=4
        output_difference[i] = (((net_outputs[i]) - solutions[i]) * -1.0) * dactivations[i];
    }
}

void get_delta_matrix_weights3(TYPE delta_weights3[nodes_per_layer*possible_outputs],
                               TYPE output_difference[possible_outputs],
                               TYPE last_activations[nodes_per_layer]) {
    int i, j;
    for( i = 0; i < nodes_per_layer; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=2
        for( j = 0; j < possible_outputs; j++) {
#pragma HLS PIPELINE 
#pragma HLS UNROLL factor=1
            delta_weights3[i*possible_outputs + j] = last_activations[i] * output_difference[j];
        }
    }
}

void get_oracle_activations2(TYPE weights3[nodes_per_layer*possible_outputs], 
                             TYPE output_differences[possible_outputs], 
                             TYPE oracle_activations[nodes_per_layer],
                             TYPE dactivations[nodes_per_layer]) {
    int i, j;
    for( i = 0; i < nodes_per_layer; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
        oracle_activations[i] = (TYPE)0.0;
        for( j = 0; j < possible_outputs; j++) {
#pragma HLS PIPELINE 
#pragma HLS UNROLL factor=4
            oracle_activations[i] += output_differences[j] * weights3[i*possible_outputs + j];
        }
        oracle_activations[i] = oracle_activations[i] * dactivations[i];
    }
}

void get_delta_matrix_weights2(TYPE delta_weights2[nodes_per_layer*nodes_per_layer],
                               TYPE output_difference[nodes_per_layer],
                               TYPE last_activations[nodes_per_layer]) {
    int i, j;
    for( i = 0; i < nodes_per_layer; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=4
        for( j = 0; j < nodes_per_layer; j++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
            delta_weights2[i*nodes_per_layer + j] = last_activations[i] * output_difference[j];
        }
    }
}

void get_oracle_activations1(TYPE weights2[nodes_per_layer*nodes_per_layer], 
                             TYPE output_differences[nodes_per_layer], 
                             TYPE oracle_activations[nodes_per_layer],
                             TYPE dactivations[nodes_per_layer]) {
    int i, j;
    for( i = 0; i < nodes_per_layer; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
        oracle_activations[i] = (TYPE)0.0;
        for( j = 0; j < nodes_per_layer; j++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=4
            oracle_activations[i] += output_differences[j] * weights2[i*nodes_per_layer + j];
        }
        oracle_activations[i] = oracle_activations[i] * dactivations[i];
    }
}

void get_delta_matrix_weights1(TYPE delta_weights1[input_dimension*nodes_per_layer],
                               TYPE output_difference[nodes_per_layer],
                               TYPE last_activations[input_dimension]) {
    int i, j;
    for( i = 0; i < input_dimension; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
        for( j = 0; j < nodes_per_layer; j++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=4
            delta_weights1[i*nodes_per_layer + j] = last_activations[i] * output_difference[j];
        }
    }
}

void update_weights(TYPE weights1[input_dimension*nodes_per_layer],
                    TYPE weights2[nodes_per_layer*nodes_per_layer],
                    TYPE weights3[nodes_per_layer*possible_outputs],
                    TYPE d_weights1[input_dimension*nodes_per_layer],
                    TYPE d_weights2[nodes_per_layer*nodes_per_layer],
                    TYPE d_weights3[nodes_per_layer*possible_outputs],
                    TYPE biases1[nodes_per_layer],
                    TYPE biases2[nodes_per_layer],
                    TYPE biases3[possible_outputs],
                    TYPE d_biases1[nodes_per_layer],
                    TYPE d_biases2[nodes_per_layer],
                    TYPE d_biases3[possible_outputs]) {
    int i, j;
    double norm, bias_norm;
    norm = 0.0;
    bias_norm = 0.0;

    for(i=0; i < input_dimension; i++){
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
        for(j = 0; j < nodes_per_layer; j++){
#pragma HLS PIPELINE 
#pragma HLS UNROLL factor=8
            weights1[i*nodes_per_layer + j] -= (d_weights1[i*nodes_per_layer + j] * learning_rate);
            norm += weights1[i*nodes_per_layer + j]*weights1[i*nodes_per_layer + j];
        }
    }
    for(i=0; i < nodes_per_layer; i++){
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=4
        biases1[i] -= (d_biases1[i]*learning_rate);
        bias_norm += biases1[i]*biases1[i];
    }
    
    norm = sqrt(norm);
    bias_norm = sqrt(bias_norm);

    for(i=0; i < input_dimension; i++){
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=2
        for(j = 0; j < nodes_per_layer; j++){
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
            weights1[i*nodes_per_layer + j] = (weights1[i*nodes_per_layer + j]/norm);
        }
    }
    for(i=0; i < nodes_per_layer; i++){
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
        biases1[i] = (biases1[i]/bias_norm);
    }

    norm = (double)0.0;
    bias_norm = (double)0.0;

    for(i=0; i < nodes_per_layer; i++){
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
        for(j = 0; j < nodes_per_layer; j++){
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
            weights2[i*nodes_per_layer + j] -= (d_weights2[i*nodes_per_layer + j] * learning_rate);
            norm += weights2[i*nodes_per_layer + j]*weights2[i*nodes_per_layer + j];
        }
    }
    for(i=0; i < nodes_per_layer; i++){
#pragma HLS PIPELINE 
#pragma HLS UNROLL factor=8
        biases2[i] -= (d_biases2[i]*learning_rate);
        bias_norm += biases2[i]*biases2[i];
    }

    norm = sqrt(norm);
    bias_norm = sqrt(bias_norm);

    for(i=0; i < nodes_per_layer; i++){
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=2
        for(j = 0; j < nodes_per_layer; j++){
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=4
            weights2[i*nodes_per_layer + j] = (weights2[i*nodes_per_layer + j]/norm);
        }
    }
    for(i=0; i < nodes_per_layer; i++){
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
        biases2[i] = (biases2[i]/bias_norm);
    }

    norm = (double)0.0;
    bias_norm = (double)0.0;

    for(i=0; i < nodes_per_layer; i++){
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
        for(j = 0; j < possible_outputs; j++){
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
            weights3[i*possible_outputs + j] -= (d_weights3[i*possible_outputs + j] * learning_rate);
            norm += weights3[i*possible_outputs + j]*weights3[i*possible_outputs + j];
        }
    }
    for(i=0; i<possible_outputs;i++){
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=2
        biases3[i] -= d_biases3[i]*learning_rate;
        bias_norm += biases3[i]*biases3[i];
    }

    norm = sqrt(norm);
    bias_norm = sqrt(bias_norm);

    for(i=0; i < nodes_per_layer; i++){
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
        for(j = 0; j < possible_outputs; j++){
#pragma HLS PIPELINE 
#pragma HLS UNROLL factor=2
            weights3[i*possible_outputs + j] = (weights3[i*possible_outputs + j]/norm);
        }
    }
    for(i=0; i < possible_outputs; i++){
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=8
        biases3[i] = (biases3[i]/bias_norm);
    }
}

void backprop(TYPE weights1[input_dimension*nodes_per_layer], 
                TYPE weights2[nodes_per_layer*nodes_per_layer],
                TYPE weights3[nodes_per_layer*possible_outputs],
                TYPE biases1[nodes_per_layer], 
                TYPE biases2[nodes_per_layer],
                TYPE biases3[possible_outputs],
                TYPE training_data[training_sets*input_dimension],
                TYPE training_targets[training_sets*possible_outputs]) {
#pragma HLS ARRAY_PARTITION variable=training_targets type=cyclic dim=1 factor=2
#pragma HLS ARRAY_PARTITION variable=training_data type=cyclic dim=1 factor=1
#pragma HLS ARRAY_PARTITION variable=biases3 type=cyclic dim=1 factor=2
#pragma HLS ARRAY_PARTITION variable=biases2 type=cyclic dim=1 factor=2
#pragma HLS ARRAY_PARTITION variable=biases1 type=cyclic dim=1 factor=1
#pragma HLS ARRAY_PARTITION variable=weights3 type=cyclic dim=1 factor=1
#pragma HLS ARRAY_PARTITION variable=weights2 type=cyclic dim=1 factor=1
#pragma HLS ARRAY_PARTITION variable=weights1 type=cyclic dim=1 factor=4
    int i,j;
    //Forward and training structures
    TYPE activations1[nodes_per_layer];
    TYPE activations2[nodes_per_layer];
    TYPE activations3[possible_outputs];
    TYPE dactivations1[nodes_per_layer];
    TYPE dactivations2[nodes_per_layer];
    TYPE dactivations3[possible_outputs];
    TYPE net_outputs[possible_outputs];
    //Training structure
    TYPE output_difference[possible_outputs];
    TYPE delta_weights1[input_dimension*nodes_per_layer]; 
    TYPE delta_weights2[nodes_per_layer*nodes_per_layer];
    TYPE delta_weights3[nodes_per_layer*possible_outputs];
    TYPE oracle_activations1[nodes_per_layer];
    TYPE oracle_activations2[nodes_per_layer];

    for(i=0; i<training_sets; i++){
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
        for(j=0;j<nodes_per_layer;j++){
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=4
            activations1[j] = (TYPE)0.0;
            activations2[j] = (TYPE)0.0;
            if(j<possible_outputs){
                activations3[j] = (TYPE)0.0;
            }
        }
        matrix_vector_product_with_bias_input_layer(biases1, weights1, activations1, &training_data[i*input_dimension]);
        RELU(activations1, dactivations1, nodes_per_layer);
        matrix_vector_product_with_bias_second_layer(biases2, weights2, activations2, activations1);
        RELU(activations2, dactivations2, nodes_per_layer);
        matrix_vector_product_with_bias_output_layer(biases3, weights3, activations3, activations2);
        RELU(activations3, dactivations3, possible_outputs);
        soft_max(net_outputs, activations3);
        take_difference(net_outputs, &training_targets[i*possible_outputs], output_difference, dactivations3);
        get_delta_matrix_weights3(delta_weights3, output_difference, activations2);
        get_oracle_activations2(weights3, output_difference, oracle_activations2, dactivations2);
        get_delta_matrix_weights2(delta_weights2, oracle_activations2, activations1);
        get_oracle_activations1(weights2, oracle_activations2, oracle_activations1, dactivations1);
        get_delta_matrix_weights1(delta_weights1, oracle_activations1, &training_data[i*input_dimension]);
        update_weights(weights1, weights2, weights3, delta_weights1, delta_weights2, delta_weights3, 
                       biases1, biases2, biases3, oracle_activations1, oracle_activations2, output_difference);
    }
}

// ---- file: backprop.h ----
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include "support.h"

// Fixed parameters
#define input_dimension  13
#define possible_outputs  3
#define training_sets   163
#define nodes_per_layer  64
#define layers            2
#define learning_rate  0.01
#define epochs            1
#define test_sets        15
#define norm_param    0.005

#define max 1.0
#define offset 0.5

//Data Bounds
#define TYPE double
#define MAX 1000
#define MIN 1

void backprop(
    TYPE weights1[input_dimension*nodes_per_layer],
    TYPE weights2[nodes_per_layer*nodes_per_layer],
    TYPE weights3[nodes_per_layer*possible_outputs],
    TYPE biases1[nodes_per_layer],
    TYPE biases2[nodes_per_layer],
    TYPE biases3[possible_outputs],
    TYPE training_data[training_sets*input_dimension],
    TYPE training_targets[training_sets*possible_outputs]);
////////////////////////////////////////////////////////////////////////////////
// Test harness interface code.

struct bench_args_t {
    TYPE weights1[input_dimension*nodes_per_layer];
    TYPE weights2[nodes_per_layer*nodes_per_layer];
    TYPE weights3[nodes_per_layer*possible_outputs];
    TYPE biases1[nodes_per_layer];
    TYPE biases2[nodes_per_layer];
    TYPE biases3[possible_outputs];
    TYPE training_data[training_sets*input_dimension];
    TYPE training_targets[training_sets*possible_outputs];
};

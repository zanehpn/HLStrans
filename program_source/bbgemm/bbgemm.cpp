// Converted from bbgemm.c to .cpp by convert_and_transform_with_deepseek_auto.py

// ---- file: gemm.h ----
/*
Implementation based on algorithm described in:
The cache performance and optimizations of blocked algorithms
M. D. Lam, E. E. Rothberg, and M. E. Wolf
ASPLOS 1991
*/

#include <stdio.h>
#include <stdlib.h>
#include "support.h"

//Data Type
#define TYPE double

//Algorithm Parameters
#define row_size 64
#define col_size 64
#define N row_size*col_size
#define block_size 8
#define NUMOFBLOCKS N/block_size/block_size

//Define the input range to operate over
#define MIN 0.
#define MAX 1.0

//Set number of iterations to execute
#define MAX_ITERATION 1

void bbgemm(TYPE m1[N], TYPE m2[N], TYPE prod[N]);
////////////////////////////////////////////////////////////////////////////////
// Test harness interface code.

struct bench_args_t {
  TYPE m1[N];
  TYPE m2[N];
  TYPE prod[N];
};

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

// ---- file: gemm.c ----
/*
Implementation based on algorithm described in:
The cache performance and optimizations of blocked algorithms
M. D. Lam, E. E. Rothberg, and M. E. Wolf
ASPLOS 1991
*/

#include "gemm.h"

void bbgemm(TYPE m1[N], TYPE m2[N], TYPE prod[N]){
#pragma HLS ARRAY_PARTITION variable=prod type=cyclic dim=1 factor=1
#pragma HLS ARRAY_PARTITION variable=m2 type=cyclic dim=1 factor=1
#pragma HLS ARRAY_PARTITION variable=m1 type=cyclic dim=1 factor=2
    int i, k, j, jj, kk;
    int i_row, k_row;
    TYPE temp_x, mul;

    loopjj:for (jj = 0; jj < row_size; jj += block_size){
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
        loopkk:for (kk = 0; kk < row_size; kk += block_size){
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
            loopi:for ( i = 0; i < row_size; ++i){
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
                loopk:for (k = 0; k < block_size; ++k){
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
                    i_row = i * row_size;
                    k_row = (k  + kk) * row_size;
                    temp_x = m1[i_row + k + kk];
                    loopj:for (j = 0; j < block_size; ++j){
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
                        mul = temp_x * m2[k_row + j + jj];
                        prod[i_row + j + jj] += mul;
                    }
                }
            }
        }
    }
}

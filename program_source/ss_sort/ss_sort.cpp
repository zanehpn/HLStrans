// Converted from ss_sort.c to .cpp by convert_and_transform_with_deepseek_auto.py

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

// ---- file: sort.h ----
/*
Implementation based on algorithm described in:
A. Danalis, G. Marin, C. McCurdy, J. S. Meredith, P. C. Roth, K. Spafford, V. Tipparaju, and J. S. Vetter.
The scalable heterogeneous computing (shoc) benchmark suite.
In Proceedings of the 3rd Workshop on General-Purpose Computation on Graphics Processing Units, 2010
*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "support.h"

#define TYPE int32_t
#define TYPE_MAX INT32_MAX

#define SIZE 2048
#define NUMOFBLOCKS 512

#define ELEMENTSPERBLOCK 4
#define RADIXSIZE 4
#define BUCKETSIZE NUMOFBLOCKS*RADIXSIZE
#define MASK 0x3

#define SCAN_BLOCK 16
#define SCAN_RADIX BUCKETSIZE/SCAN_BLOCK

void ss_sort(int a[SIZE], int b[SIZE], int bucket[BUCKETSIZE], int sum[SCAN_RADIX]);

////////////////////////////////////////////////////////////////////////////////
// Test harness interface code.

struct bench_args_t {
  int a[SIZE];
  int b[SIZE];
  int bucket[BUCKETSIZE];
  int sum[SCAN_RADIX];
};

// ---- file: sort2.c ----
/*
Implementation based on algorithm described in:
A. Danalis, G. Marin, C. McCurdy, J. S. Meredith, P. C. Roth, K. Spafford, V. Tipparaju, and J. S. Vetter.
The scalable heterogeneous computing (shoc) benchmark suite.
In Proceedings of the 3rd Workshop on General-Purpose Computation on Graphics Processing Units, 2010
*/

#include "sort.h"

void local_scan(int bucket[BUCKETSIZE])
{
    int radixID, i, bucket_indx;
    local_1 : for (radixID=0; radixID<SCAN_RADIX; radixID++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
        local_2 : for (i=1; i<SCAN_BLOCK; i++){
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=2
            bucket_indx = radixID*SCAN_BLOCK + i;
            bucket[bucket_indx] += bucket[bucket_indx-1];
        }
    }
}

void sum_scan(int sum[SCAN_RADIX], int bucket[BUCKETSIZE])
{
    int radixID, bucket_indx;
    sum[0] = 0;
    sum_1 : for (radixID=1; radixID<SCAN_RADIX; radixID++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
        bucket_indx = radixID*SCAN_BLOCK - 1;
        sum[radixID] = sum[radixID-1] + bucket[bucket_indx];
    }
}

void last_step_scan(int bucket[BUCKETSIZE], int sum[SCAN_RADIX])
{
    int radixID, i, bucket_indx;
    last_1:for (radixID=0; radixID<SCAN_RADIX; radixID++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=2
        last_2:for (i=0; i<SCAN_BLOCK; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=2
            bucket_indx = radixID * SCAN_BLOCK + i;
            bucket[bucket_indx] = bucket[bucket_indx] + sum[radixID];
         }
    }
}

void init(int bucket[BUCKETSIZE])
{
    int i;
    init_1 : for (i=0; i<BUCKETSIZE; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
        bucket[i] = 0;
    }
}

void hist(int bucket[BUCKETSIZE], int a[SIZE], int exp)
{
    int blockID, i, bucket_indx, a_indx;
    blockID = 0;
    hist_1 : for (blockID=0; blockID<NUMOFBLOCKS; blockID++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
        hist_2 : for(i=0; i<4; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
            a_indx = blockID * ELEMENTSPERBLOCK + i;
            bucket_indx = ((a[a_indx] >> exp) & 0x3)*NUMOFBLOCKS + blockID + 1;
            bucket[bucket_indx]++;
        }
    }
}

void update(int b[SIZE], int bucket[BUCKETSIZE], int a[SIZE], int exp)
{
    int i, blockID, bucket_indx, a_indx;
    blockID = 0;

    update_1 : for (blockID = 0; blockID < NUMOFBLOCKS; blockID++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
        update_2 : for(i=0; i<4; i++) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
            bucket_indx = ((a[blockID * ELEMENTSPERBLOCK + i] >> exp) & 0x3)*NUMOFBLOCKS + blockID;
            a_indx = blockID * ELEMENTSPERBLOCK + i;
            b[bucket[bucket_indx]] = a[a_indx];
            bucket[bucket_indx]++;
        }
    }
}

void ss_sort(int a[SIZE], int b[SIZE], int bucket[BUCKETSIZE], int sum[SCAN_RADIX]){
    int exp=0;
#pragma HLS ARRAY_PARTITION variable=sum type=cyclic dim=1 factor=2
#pragma HLS ARRAY_PARTITION variable=bucket type=cyclic dim=1 factor=1
#pragma HLS ARRAY_PARTITION variable=b type=cyclic dim=1 factor=8
#pragma HLS ARRAY_PARTITION variable=a type=cyclic dim=1 factor=1
    int valid_buffer=0;
    #define BUFFER_A 0
    #define BUFFER_B 1

    sort_1 : for (exp=0; exp<32; exp+=2) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
        init(bucket);
        if (valid_buffer == BUFFER_A) {
            hist(bucket, a, exp);
        } else {
            hist(bucket, b, exp);
        }

        local_scan(bucket);
        sum_scan(sum, bucket);
        last_step_scan(bucket, sum);

        if (valid_buffer==BUFFER_A) {
            update(b, bucket, a, exp);
            valid_buffer = BUFFER_B;
        } else {
            update(a, bucket, b, exp);
            valid_buffer = BUFFER_A;
        }
    }
    // If trip count is even, buffer A will be valid at the end.
}

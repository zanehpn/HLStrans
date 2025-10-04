// Converted from md.c to .cpp by convert_and_transform_with_deepseek_auto.py

// ---- file: md.c ----
#include "md.h"

#define MIN(x,y) ( (x)<(y) ? (x) : (y) )
#define MAX(x,y) ( (x)>(y) ? (x) : (y) )

void md( int n_points[blockSide][blockSide][blockSide],
         dvector_t force[blockSide][blockSide][blockSide][densityFactor],
         dvector_t position[blockSide][blockSide][blockSide][densityFactor] )
{
#pragma HLS ARRAY_PARTITION variable=position type=cyclic dim=4 factor=1
#pragma HLS ARRAY_PARTITION variable=position type=cyclic dim=3 factor=1
#pragma HLS ARRAY_PARTITION variable=position type=cyclic dim=2 factor=1
#pragma HLS ARRAY_PARTITION variable=position type=cyclic dim=1 factor=2
#pragma HLS ARRAY_PARTITION variable=force type=cyclic dim=4 factor=4
#pragma HLS ARRAY_PARTITION variable=force type=cyclic dim=3 factor=1
#pragma HLS ARRAY_PARTITION variable=force type=cyclic dim=2 factor=1
#pragma HLS ARRAY_PARTITION variable=force type=cyclic dim=1 factor=8
#pragma HLS ARRAY_PARTITION variable=n_points type=cyclic dim=3 factor=1
#pragma HLS ARRAY_PARTITION variable=n_points type=cyclic dim=2 factor=1
#pragma HLS ARRAY_PARTITION variable=n_points type=cyclic dim=1 factor=1
  ivector_t b0, b1; // b0 is the current block, b1 is b0 or a neighboring block
  dvector_t p, q; // p is a point in b0, q is a point in either b0 or b1
  int32_t p_idx, q_idx;
  TYPE dx, dy, dz, r2inv, r6inv, potential, f;

  // Iterate over the grid, block by block
  loop_grid0_x: for( b0.x=0; b0.x<blockSide; b0.x++ ) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
  loop_grid0_y: for( b0.y=0; b0.y<blockSide; b0.y++ ) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
  loop_grid0_z: for( b0.z=0; b0.z<blockSide; b0.z++ ) {
#pragma HLS PIPELINE 
#pragma HLS UNROLL factor=2
  // Iterate over the 3x3x3 (modulo boundary conditions) cube of blocks around b0
  loop_grid1_x: for( b1.x=MAX(0,b0.x-1); b1.x<MIN(blockSide,b0.x+2); b1.x++ ) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
    #pragma HLS loop_tripcount min=1 max=blockSide
  loop_grid1_y: for( b1.y=MAX(0,b0.y-1); b1.y<MIN(blockSide,b0.y+2); b1.y++ ) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=8
    #pragma HLS loop_tripcount min=1 max=blockSide
  loop_grid1_z: for( b1.z=MAX(0,b0.z-1); b1.z<MIN(blockSide,b0.z+2); b1.z++ ) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=4
    #pragma HLS loop_tripcount min=1 max=blockSide
    // For all points in b0
    dvector_t *base_q = position[b1.x][b1.y][b1.z];
    int q_idx_range = n_points[b1.x][b1.y][b1.z];
    loop_p: for( p_idx=0; p_idx<n_points[b0.x][b0.y][b0.z]; p_idx++ ) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=2
      #pragma HLS loop_tripcount min=1 max=64 avg=1
      p = position[b0.x][b0.y][b0.z][p_idx];
      TYPE sum_x = force[b0.x][b0.y][b0.z][p_idx].x;
      TYPE sum_y = force[b0.x][b0.y][b0.z][p_idx].y;
      TYPE sum_z = force[b0.x][b0.y][b0.z][p_idx].z;
      // For all points in b1
      loop_q: for( q_idx=0; q_idx< q_idx_range ; q_idx++ ) {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=4
        #pragma HLS loop_tripcount min=1 max=64 avg=1
        q = *(base_q + q_idx);

        // Don't compute our own
        if( q.x!=p.x || q.y!=p.y || q.z!=p.z ) {
          // Compute the LJ-potential
          dx = p.x - q.x;
          dy = p.y - q.y;
          dz = p.z - q.z;
          r2inv = 1.0/( dx*dx + dy*dy + dz*dz );
          r6inv = r2inv*r2inv*r2inv;
          potential = r6inv*(lj1*r6inv - lj2);
          // Update forces
          f = r2inv*potential;
          sum_x += f*dx;
          sum_y += f*dy;
          sum_z += f*dz;
        }
      } // loop_q
      force[b0.x][b0.y][b0.z][p_idx].x = sum_x ;
      force[b0.x][b0.y][b0.z][p_idx].y = sum_y ;
      force[b0.x][b0.y][b0.z][p_idx].z = sum_z ;
    } // loop_p
  }}} // loop_grid1_*
  }}} // loop_grid0_*
}

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

// ---- file: md.h ----
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include "support.h"

#define TYPE double

// Problem Constants
#define nAtoms        256
#define domainEdge    20.0
#define blockSide     4
//#define blockSide     1
#define nBlocks       (blockSide*blockSide*blockSide)
#define blockEdge     (domainEdge/((TYPE)blockSide))
// Memory Bound
// This is an artifact of using statically-allocated arrays. We'll pretend that
// it doesn't exist and instead track the actual number of points.
#define densityFactor 10
// LJ coefficients
#define lj1           1.5
#define lj2           2.0

typedef struct {
  TYPE x, y, z;
} dvector_t;
typedef struct {
  int32_t x, y, z;
} ivector_t;

void md( int32_t n_points[blockSide][blockSide][blockSide],
         dvector_t force[blockSide][blockSide][blockSide][densityFactor],
         dvector_t position[blockSide][blockSide][blockSide][densityFactor]
       );
////////////////////////////////////////////////////////////////////////////////
// Test harness interface code.

struct bench_args_t {
  int32_t n_points[blockSide][blockSide][blockSide];
  dvector_t force[blockSide][blockSide][blockSide][densityFactor];
  dvector_t position[blockSide][blockSide][blockSide][densityFactor];
};

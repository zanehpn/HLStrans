// ---- file: digitrec.cpp ----
// #ifndef __TYPEDEFS_H__
// #define __TYPEDEFS_H__

// // dataset information
// #define NUM_TRAINING 18000
// #define CLASS_SIZE 1800
// #define NUM_TEST 2000
// #define DIGIT_WIDTH 4

// // typedefs
// typedef unsigned long long DigitType;
// typedef unsigned char      LabelType;

// #ifdef OCL
//   #include <string>
//   // target device
//   // change here to map to a different device
//   const std::string TARGET_DEVICE = "xilinx_aws-vu9p-f1-04261818_dynamic_5_0";
// #endif

// #ifdef SDSOC
//   #include "ap_int.h"
//   // sdsoc wide vector type
//   typedef ap_uint<256>  WholeDigitType;
// #endif

// // parameters
// #define K_CONST 3
// #define PAR_FACTOR 40

// #endif


/*===============================================================*/
/*                                                               */
/*                          digitrec.cpp                         */
/*                                                               */
/*             Hardware function for digit recognition           */
/*                                                               */
/*===============================================================*/

#define SDSOC
#include "typedefs.h"

// popcount function
int popcount(WholeDigitType x)
{
  // most straightforward implementation
  // actually not bad on FPGA
  int cnt = 0;
  for (int i = 0; i < 256; i ++ )
    cnt = cnt + x[i];

  return cnt;
}

// Given the test instance and a (new) training instance, this
// function maintains/updates an array of K minimum
// distances per training set.
void update_knn( WholeDigitType test_inst, WholeDigitType train_inst, int min_distances[K_CONST] ) 
{
  #pragma HLS inline

  // Compute the difference using XOR
  WholeDigitType diff = test_inst ^ train_inst;

  int dist = 0;

  dist = popcount(diff);

  int max_dist = 0;
  int max_dist_id = K_CONST+1;
  int k = 0;

  // Find the max distance
  FIND_MAX_DIST: for ( int k = 0; k < K_CONST; ++k ) 
  {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=2
    if ( min_distances[k] > max_dist ) 
    {
      max_dist = min_distances[k];
      max_dist_id = k;
    }
  }

  // Replace the entry with the max distance
  if ( dist < max_dist )
    min_distances[max_dist_id] = dist;

  return;
}

// Given 10xK minimum distance values, this function
// finds the actual K nearest neighbors and determines the
// final output based on the most common int represented by
// these nearest neighbors (i.e., a vote among KNNs).
LabelType knn_vote( int knn_set[PAR_FACTOR * K_CONST] ) 
{
  #pragma HLS inline

  // local buffers

  // final K nearest neighbors
  int min_distance_list[K_CONST];
  #pragma HLS array_partition variable=min_distance_list complete dim=0
  // labels for the K nearest neighbors
  int label_list[K_CONST];
  #pragma HLS array_partition variable=label_list complete dim=0
  // voting boxes
  int vote_list[10];
  #pragma HLS array_partition variable=vote_list complete dim=0

  int pos = 1000;

  // initialize
  INIT_1: for (int i = 0;i < K_CONST; i ++ )
  {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
    
    min_distance_list[i] = 256;
    label_list[i] = 9;
  }

  INIT_2: for (int i = 0;i < 10; i ++ )
  {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
    
    vote_list[i] = 0;
  }

  // go through all the lanes
  // do an insertion sort to keep a sorted neighbor list
  LANES: for (int i = 0; i < PAR_FACTOR; i ++ )
  {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
    INSERTION_SORT_OUTER: for (int j = 0; j < K_CONST; j ++ )
    {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=2
      
      pos = 1000;
      INSERTION_SORT_INNER: for (int r = 0; r < K_CONST; r ++ )
      {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=2
        
        pos = ((knn_set[i*K_CONST+j] < min_distance_list[r]) && (pos > K_CONST)) ? r : pos;
      }

      INSERT: for (int r = K_CONST ;r > 0; r -- )
      {
#pragma HLS PIPELINE 
#pragma HLS UNROLL factor=1
        
        if(r-1 > pos)
        {
          min_distance_list[r-1] = min_distance_list[r-2];
          label_list[r-1] = label_list[r-2];
        }
        else if (r-1 == pos)
        {
          min_distance_list[r-1] = knn_set[i*K_CONST+j];
          label_list[r-1] = i / (PAR_FACTOR / 10);
        }
      }
    }
  }

  // vote
  INCREMENT: for (int i = 0;i < K_CONST; i ++ )
  {
#pragma HLS PIPELINE 
#pragma HLS UNROLL factor=4
    
    vote_list[label_list[i]] += 1;
  }

  LabelType max_vote;
  max_vote = 0;

  // find the maximum value
  VOTE: for (int i = 0;i < 10; i ++ )
  {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=8
    
    if(vote_list[i] >= vote_list[max_vote])
    {
      max_vote = i;
    }
  }

  return max_vote;

}

// top-level hardware function
// since AXIDMA_SIMPLE interface does not support arrays with size more than 16384 on interface
// we call this function twice to transfer data
void DigitRec(WholeDigitType global_training_set[NUM_TRAINING / 2], WholeDigitType global_test_set[NUM_TEST], LabelType global_results[NUM_TEST], int run) 
{

  // This array stores K minimum distances per training set
  int knn_set[PAR_FACTOR * K_CONST];
  #pragma HLS array_partition variable=knn_set complete dim=0

  static WholeDigitType training_set [NUM_TRAINING];
#pragma HLS ARRAY_PARTITION variable=training_set type=cyclic dim=1 factor=8
  // to be used in a pragma
  const int unroll_factor = PAR_FACTOR;


  static WholeDigitType test_set     [NUM_TEST];
#pragma HLS ARRAY_PARTITION variable=test_set type=cyclic dim=1 factor=1
  static LabelType results           [NUM_TEST];

  // the first time, just do data transfer and return
  if (run == 0)
  {
    // copy the training set for the first time
    for (int i = 0; i < NUM_TRAINING / 2; i ++ )
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
      
      training_set[i] = global_training_set[i];
    return;
  }

  // for the second time
  for (int i = 0; i < NUM_TRAINING / 2; i ++ )
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
    
    training_set[i + NUM_TRAINING / 2] = global_training_set[i];
  // copy the test set
  for (int i = 0; i < NUM_TEST; i ++ )
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=4
    
    test_set[i] = global_test_set[i];

  // loop through test set
  TEST_LOOP: for (int t = 0; t < NUM_TEST; ++t) 
  {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
    // fetch one instance
    WholeDigitType test_instance = test_set[t];

    // Initialize the knn set
    SET_KNN_SET: for ( int i = 0; i < K_CONST * PAR_FACTOR ; ++i ) 
    {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=4
      
      // Note that the max distance is 256
      knn_set[i] = 256;
    }

    TRAINING_LOOP : for ( int i = 0; i < NUM_TRAINING / PAR_FACTOR; ++i ) 
    {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1

      LANES : for ( int j = 0; j < PAR_FACTOR; j++ ) 
      {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=2

        // Read a new instance from the training set
        WholeDigitType training_instance = training_set[j * NUM_TRAINING / PAR_FACTOR + i];

        // Update the KNN set
        update_knn( test_instance, training_instance, &knn_set[j * K_CONST] );
      }
    }
    // Compute the final output
    LabelType max_vote = knn_vote(knn_set);
    results[t] = max_vote;

  }

  // copy the results out
  for (int i = 0; i < NUM_TEST; i ++ )
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
    
    global_results[i] = results[i];

}

// ---- file: digitrec.h ----
/*===============================================================*/
/*                                                               */
/*                          digitrec.h                           */
/*                                                               */
/*             Hardware function for digit recognition           */
/*                                                               */
/*===============================================================*/

#include "typedefs.h"

#pragma SDS data mem_attribute(global_training_set:PHYSICAL_CONTIGUOUS, global_test_set:PHYSICAL_CONTIGUOUS, global_results:PHYSICAL_CONTIGUOUS)
#pragma SDS data data_mover(global_training_set:AXIDMA_SIMPLE, global_test_set:AXIDMA_SIMPLE, global_results:AXIDMA_SIMPLE)
void DigitRec(WholeDigitType global_training_set[NUM_TRAINING / 2], WholeDigitType global_test_set[NUM_TEST], LabelType global_results[NUM_TEST], int run);

// ---- file: typedefs.h ----
/*===============================================================*/
/*                                                               */
/*                          typedefs.h                           */
/*                                                               */
/*           Constant definitions and typedefs for host.         */
/*                                                               */
/*===============================================================*/

#ifndef __TYPEDEFS_H__
#define __TYPEDEFS_H__

// dataset information
#define NUM_TRAINING 18000
#define CLASS_SIZE 1800
#define NUM_TEST 2000
#define DIGIT_WIDTH 4

// typedefs
typedef unsigned long long DigitType;
typedef unsigned char      LabelType;

#ifdef OCL
  #include <string>
  // target device
  // change here to map to a different device
  const std::string TARGET_DEVICE = "xilinx_aws-vu9p-f1-04261818_dynamic_5_0";
#endif

#ifdef SDSOC
  #include "ap_int.h"
  // sdsoc wide vector type
  typedef ap_uint<256>  WholeDigitType;
#endif

// parameters
#define K_CONST 3
#define PAR_FACTOR 40

#endif

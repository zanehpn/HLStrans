// file: hash_lookup_hls.cpp
#include <stdint.h>
#define M 1024  
#define Q 256  

void lookup(int keys[M], int data[M], int table_key[M], int table_val[M],
                int queries[Q], int out[Q]) {
    #pragma HLS INTERFACE bram port=keys
    #pragma HLS INTERFACE bram port=data
    #pragma HLS INTERFACE bram port=table_key
    #pragma HLS INTERFACE bram port=table_val
    #pragma HLS INTERFACE bram port=queries
    #pragma HLS INTERFACE bram port=out
    #pragma HLS PIPELINE

    for (int i = 0; i < M; ++i) {
      #pragma HLS UNROLL factor=16
      table_key[i] = -1;
    }
    for (int i = 0; i < M; ++i) {
      #pragma HLS PIPELINE II=1
      int k = keys[i], v = data[i];
      int idx = k & (M-1);
      while (table_key[idx] != -1) {
        idx = (idx + 1) & (M-1);
      }
      table_key[idx] = k;
      table_val[idx] = v;
    }
    for (int qi = 0; qi < Q; ++qi) {
      #pragma HLS PIPELINE II=1
      int k = queries[qi];
      int idx = k & (M-1);
      while (table_key[idx] != k) {
        idx = (idx + 1) & (M-1);
      }
      out[qi] = table_val[idx];
    }
}

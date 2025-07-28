#include <iomanip>
#include <iostream>
#include <vector>
using namespace std;

#include "hls_stream.h"

typedef int DTYPE;
const int SIZE = 8;
const int BLOCK_SIZE = 4;

typedef struct {
    DTYPE a[BLOCK_SIZE];
} blockvec;

typedef struct {
    DTYPE out[BLOCK_SIZE][BLOCK_SIZE];
} blockmat;

void block_mm(hls::stream<blockvec> &Arows, hls::stream<blockvec> &Bcols,
              blockmat &ABpartial, int it) {
    int counter = it % (SIZE / BLOCK_SIZE);
    static DTYPE A[BLOCK_SIZE][SIZE];

    // Load A only when necessary
    if (counter == 0) {
#pragma HLS LOOP_TRIPCOUNT min=SIZE max=SIZE
        loadA: for (int i = 0; i < SIZE; i++) {
#pragma HLS PIPELINE II=1
            blockvec tempA = Arows.read();
            for (int j = 0; j < BLOCK_SIZE; j++) {
                A[j][i] = tempA.a[j];
            }
        }
    }

    DTYPE AB[BLOCK_SIZE][BLOCK_SIZE] = {0};

    // Perform partial sum
#pragma HLS ARRAY_PARTITION variable=A complete dim=1
#pragma HLS ARRAY_PARTITION variable=AB complete dim=1
#pragma HLS ARRAY_PARTITION variable=AB complete dim=2
    partialsum: for (int k = 0; k < SIZE; k++) {
#pragma HLS PIPELINE II=1
        blockvec tempB = Bcols.read();
        for (int i = 0; i < BLOCK_SIZE; i++) {
            for (int j = 0; j < BLOCK_SIZE; j++) {
                AB[i][j] += A[i][k] * tempB.a[j];
            }
        }
    }

    // Write output
    writeoutput: for (int i = 0; i < BLOCK_SIZE; i++) {
#pragma HLS PIPELINE II=1
        for (int j = 0; j < BLOCK_SIZE; j++) {
            ABpartial.out[i][j] = AB[i][j];
        }
    }
}
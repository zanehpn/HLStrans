#include <iomanip>
#include <iostream>
#include <vector>
using namespace std;

#include "hls_stream.h"

typedef int DTYPE;
const int SIZE = 32;
const int BLOCK_SIZE = 16;

typedef struct {
    DTYPE a[BLOCK_SIZE];
} blockvec;

typedef struct {
    DTYPE out[BLOCK_SIZE][BLOCK_SIZE];
} blockmat;

void block_mm(
    hls::stream<blockvec> &Arows,
    hls::stream<blockvec> &Bcols,
    blockmat &ABpartial,
    DTYPE iteration);
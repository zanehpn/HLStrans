#include <stdio.h>
#include <iostream>
#include <fstream>
#include <cstdlib>
#include <ap_fixed.h>
#include <hls_math.h>
#include <stdlib.h>
#include <cstdint>
#include <hls_math.h>

using namespace std;

typedef ap_fixed<16, 5> data_t;

#define C 64
#define H 28
#define W 28

void tanh(data_t input[C][H][W], data_t output[C][H][W]); 
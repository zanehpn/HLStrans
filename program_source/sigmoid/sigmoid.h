#include <stdio.h>
#include <iostream>
#include <fstream>
#include <cstdlib>
#include <ap_fixed.h>
#include <stdlib.h>
#include <cstdint>
#include <hls_math.h>

#ifndef TOP_H
#define TOP_H


typedef ap_fixed<16, 5> data_t;

#define C 64
#define H 28
#define W 28

void sigmoid (data_t input[C][H][W], data_t output[C][H][W]);
#endif // TOP_H
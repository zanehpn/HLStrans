#include <ap_fixed.h>
#ifndef TOP_H
#define TOP_H

typedef ap_fixed<16, 5> data_t;

void vec_matrix(data_t DRAM_1[16][64], data_t DRAM_2[64], data_t DRAM_3[16], data_t DRAM_4[16]);

#endif // TOP_H
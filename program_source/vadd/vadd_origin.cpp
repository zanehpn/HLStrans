// Converted from vadd_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: combined.cpp ----

// Includes
// Missing include: #include <stdio.h>
// Missing include: #include <string.h>
#define DATA_SIZE 2048
#define INCR_VALUE 10
// define internal buffer max size
#define BURSTBUFFERSIZE 256

void vadd(int* a, int size, int inc_value);
// TRIPCOUNT identifiers
const unsigned int c_size_min = 1;
const unsigned int c_size_max = BURSTBUFFERSIZE;
const unsigned int c_chunk_sz = DATA_SIZE;

void vadd(int* a, int size, int inc_value) {

// Map pointer a to AXI4-master interface for global memory access

// We also need to map a and return to a bundled axilite slave interface

    int burstbuffer[BURSTBUFFERSIZE];

read_buf:
    // Per iteration of this loop perform BURSTBUFFERSIZE vector addition
    for (int i = 0; i < size; i += BURSTBUFFERSIZE) {

        int chunk_size = BURSTBUFFERSIZE;
        // boundary checks
        if ((i + BURSTBUFFERSIZE) > size) chunk_size = size - i;
        // burst read
        // Auto-pipeline is going to apply pipeline to these loops
        for (int j = 0; j < chunk_size; j++) {

// As the outer loop is not a perfect loop

            burstbuffer[j] = a[i + j];
        }

    // calculate and write results to global memory, the sequential write in a for
    // loop can be inferred to a memory burst access
    calc_write:
        for (int j = 0; j < chunk_size; j++) {

            burstbuffer[j] = burstbuffer[j] + inc_value;
            a[i + j] = burstbuffer[j];
        }
    }
}

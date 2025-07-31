#ifndef ATAX_H
        #define ATAX_H

        #include <hls_stream.h>

        #define N 16
        #define TILE_SIZE 4
        #define DATA_TYPE int

        void atax(DATA_TYPE A[N][N], DATA_TYPE x[N], DATA_TYPE y_out[N]);

        #endif // ATAX_H
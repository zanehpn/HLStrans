#include <iostream>
#include <limits>
#include <hls_stream.h>
#include <stdint.h>

// Include the header that declares the tsp function.
const int N = 5;
void tsp(hls::stream<uint16_t>& streamDistances, unsigned int& shortestDistance);

int main() {
    // Create an HLS stream for distance values
    hls::stream<uint16_t> streamDistances;
    unsigned int shortestDistance = 0;

    // Define a sample 5x5 distance matrix.
    // The matrix is chosen such that the minimum consecutive-path distance (without returning to start)
    // is expected to be 19.
    uint16_t matrix[N][N] = {
        {0,  2,  9, 10, 7},
        {1,  0,  6,  4, 3},
        {15, 7,  0,  8, 3},
        {6,  3, 12,  0, 5},
        {10, 4,  8,  9,  0}
    };

    // Write the matrix values into the stream in row-major order
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) {
            streamDistances.write(matrix[i][j]);
        }
    }

    // Call the TSP function (Design Under Test)
    tsp(streamDistances, shortestDistance);

    // Expected shortest distance (from manual calculation using consecutive edge distances)
    unsigned int expected = 19;

    // Check the result and print Pass/Fail accordingly
    if (shortestDistance == expected) {
        std::cout << "Pass: Shortest distance is " << shortestDistance << std::endl;
    } else {
        std::cout << "Fail: Expected " << expected << " but got " << shortestDistance << std::endl;
    }

    return 0;
}

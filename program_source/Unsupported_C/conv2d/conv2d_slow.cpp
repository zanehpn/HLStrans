// file: conv2d_non_synth.cpp
#include <vector>
#include <complex>
#include <cstdlib>
#include <iostream>

#define K 3

int conv_rec(const std::vector<std::vector<int>>& window,
             const std::vector<std::vector<int>>& kernel,
             int i = 0, int j = 0) {
    if (i == K) return 0;
    if (j == K) return conv_rec(window, kernel, i+1, 0);
    return window[i][j] * kernel[i][j] + conv_rec(window, kernel, i, j+1);
}

void conv2d_non_synth(
    const std::vector<int>&      in_line, 
    std::vector<int>&            out_line,
    int width,
    const std::vector<std::vector<int>>& kernel
) {
    auto lb = new std::vector<std::vector<int>>(K, std::vector<int>(width));
    auto win = new std::vector<std::vector<int>>(K, std::vector<int>(K));

    for (int col = 0; col < width; col++) {
        for (int i = K-1; i > 0; i--) {
            (*lb)[i] = (*lb)[i-1];
        }
        (*lb)[0] = in_line;  

        for (int i = 0; i < K; i++) {
            for (int j = 0; j < K; j++) {
                (*win)[i][j] = (*lb)[i][col - (K/2) + j];
            }
        }

        int val = conv_rec(*win, kernel);
        out_line.push_back(val);
    }

    delete lb;   
    delete win; 
}
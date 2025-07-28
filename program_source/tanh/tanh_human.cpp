#include <stdio.h>
#include <iostream>
#include <fstream>
#include <cstdlib>
#include <ap_fixed.h>
#include <hls_math.h>
#include <stdlib.h>
#include <cstdint>
#include <hls_math.h>
#include "tanh.h"

using namespace std;


data_t FM_buffer_1[C][H][W];
data_t FM_buffer_2[C][H][W];
data_t FM_buffer_3[C][H][W];
data_t FM_buffer_4[C][H][W];


void load_feature_map(data_t input_dram[C][H][W], data_t input_buffer[C][H][W])
{
    #pragma HLS inline off
    for (int c = 0; c < C; c++)
    {
        for (int h = 0; h < H; h++)
        {
            for (int w = 0; w < W; w++)
            {
                input_buffer[c][h][w] = input_dram[c][h][w];
            }
        }
    }
}

void store_feature_map(data_t output_buffer[C][H][W], data_t output_dram[C][H][W])
{
    #pragma HLS inline off
    for (int c = 0; c < C; c++)
    {
        for (int h = 0; h < H; h++)
        {
            for (int w = 0; w < W; w++)
            {
                output_dram[c][h][w] = output_buffer[c][h][w];
            }
        }
    }
}

void compute_exp(data_t input[C][H][W], data_t output[C][H][W])
{
    #pragma HLS inline off
    for (int i = 0; i < C; i++)
    {
        for (int j = 0; j < H; j++)
        {
            for (int k = 0; k < W; k++)
            {
                output[i][j][k] = hls::exp(input[i][j][k]);
            }
        }
    }

}

void negative(data_t input[C][H][W], data_t output[C][H][W])
{
    #pragma HLS inline off
    for (int i = 0; i < C; i++)
    {
        for (int j = 0; j < H; j++)
        {
            for (int k = 0; k < W; k++)
            {
                output[i][j][k] = -input[i][j][k];
            }
        }
    }
}

void compute_div(data_t input_1[C][H][W], data_t input_2[C][H][W], data_t output[C][H][W])
{
    #pragma HLS inline off
    for (int i = 0; i < C; i++)
    {
        for (int j = 0; j < H; j++)
        {
            for (int k = 0; k < W; k++)
            {
                output[i][j][k] = input_1[i][j][k]/input_2[i][j][k];
            }
        }
    }
}

void compute_add(data_t input_1[C][H][W], data_t input_2[C][H][W], data_t output[C][H][W])
{
    #pragma HLS inline off
    for (int i = 0; i < C; i++)
    {
        for (int j = 0; j < H; j++)
        {
            for (int k = 0; k < W; k++)
            {
                output[i][j][k] = input_1[i][j][k] + input_2[i][j][k];
            }
        }
    }
}

void compute_mul(data_t input_1[C][H][W], data_t input_2[C][H][W], data_t output[C][H][W])
{
    #pragma HLS inline off
    for (int i = 0; i < C; i++)
    {
        for (int j = 0; j < H; j++)
        {
            for (int k = 0; k < W; k++)
            {
                output[i][j][k] = input_1[i][j][k] * input_2[i][j][k];
            }
        }
    }
}

void tanh(data_t input[C][H][W], data_t output[C][H][W])
{
    #pragma HLS inline off
    load_feature_map(input, FM_buffer_1);
    compute_exp(FM_buffer_1, FM_buffer_2); //exp(x)
    negative(FM_buffer_1, FM_buffer_3);
    compute_exp(FM_buffer_3, FM_buffer_1); //exp(-x)
    compute_add(FM_buffer_2, FM_buffer_1, FM_buffer_3);
    negative(FM_buffer_1, FM_buffer_4);
    compute_add(FM_buffer_2, FM_buffer_4, FM_buffer_1);
    compute_div(FM_buffer_1, FM_buffer_3, FM_buffer_2);
    store_feature_map(FM_buffer_2, output);
}



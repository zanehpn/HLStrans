#include <stdio.h>
#include <math.h>
#include <stdlib.h>

#define WIDTH 64
#define HEIGHT 64

//#define OUTPUT_DEBUG
void sobel(int *inputImage, int *outputImage,int EDGE_THRESHOLD) {
#pragma HLS INTERFACE m_axi depth=4096 port=outputImage offset=slave bundle=out
#pragma HLS INTERFACE m_axi depth=4096 port=inputImage offset=slave bundle=in
//#pragma HLS INTERFACE ap_ctrl_none port=return

	int image_data[WIDTH+2][WIDTH+2];
IMG_CREATE:
    for(int p = 0 ; p < WIDTH+2 ; p++){
        for(int q = 0 ; q < WIDTH +2 ; q++){
            if( p ==0 || q ==0 || p ==WIDTH+1 || q ==WIDTH+1)
                image_data[p][q]=0;
            else
                image_data[p][q] = inputImage[(q-1)+(p-1)*WIDTH];
            }
    }

    int Gx[WIDTH][WIDTH];
    int Gy[WIDTH][WIDTH];
OUTPUT_CREATE:
    for(int i = 1 ; i < WIDTH+1 ; i++){
        for(int j = 1 ; j < WIDTH+1 ; j++){
            Gx[i-1][j-1] = (image_data[i-1][j-1] + 2* image_data[i-1][j] + image_data[i-1][j+1]) - (image_data[i+1][j-1] + 2* image_data[i+1][j] + image_data[i+1][j+1]);
            Gy[i-1][j-1] = (image_data[i-1][j-1] + 2* image_data[i][j-1] + image_data[i+1][j-1]) - (image_data[i-1][j+1] + 2* image_data[i][j+1] + image_data[i+1][j+1]);
            int gradient = (int)sqrt(Gx[i-1][j-1] * Gx[i-1][j-1] + Gy[i-1][j-1] * Gy[i-1][j-1]);
            if (gradient > EDGE_THRESHOLD) {
                outputImage[(j-1)+WIDTH*(i-1)] = 255;  
            } else {
                outputImage[(j-1)+WIDTH*(i-1)] = 0;    
            }
        }
    }
}

#include <hls_stream.h>
#include <iostream>
#include "assert.h"

// Water Mark Defines
#define CHANNELS 3 // Three Channels (R, G and B)
#define WATERMARK_HEIGHT 16
#define WATERMARK_WIDTH 16

// Per Memory Access getting 16 pixels
#define DATA_SIZE 16
typedef unsigned int uint;

const int width = 920;
const int height = 549;

// WaterMark Image of 16x16 size
int watermark[WATERMARK_HEIGHT][WATERMARK_WIDTH] = {
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {0, 0x0f0f0f, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0x0f0f0f, 0},
    {0, 0, 0x0f0f0f, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0x0f0f0f, 0, 0},
    {0, 0, 0, 0x0f0f0f, 0, 0, 0, 0, 0, 0, 0, 0, 0x0f0f0f, 0, 0, 0},
    {0, 0, 0, 0, 0x0f0f0f, 0, 0, 0, 0, 0, 0, 0x0f0f0f, 0, 0, 0, 0},
    {0, 0, 0, 0, 0, 0x0f0f0f, 0, 0, 0, 0, 0x0f0f0f, 0, 0, 0, 0, 0},
    {0, 0, 0, 0, 0, 0, 0x0f0f0f, 0, 0, 0x0f0f0f, 0, 0, 0, 0, 0, 0},
    {0, 0, 0, 0, 0, 0, 0, 0x0f0f0f, 0x0f0f0f, 0, 0, 0, 0, 0, 0, 0},
    {0, 0, 0, 0, 0, 0, 0, 0x0f0f0f, 0x0f0f0f, 0, 0, 0, 0, 0, 0, 0},
    {0, 0, 0, 0, 0, 0, 0x0f0f0f, 0, 0, 0x0f0f0f, 0, 0, 0, 0, 0, 0},
    {0, 0, 0, 0, 0, 0x0f0f0f, 0, 0, 0, 0, 0x0f0f0f, 0, 0, 0, 0, 0},
    {0, 0, 0, 0, 0x0f0f0f, 0, 0, 0, 0, 0, 0, 0x0f0f0f, 0, 0, 0, 0},
    {0, 0, 0, 0x0f0f0f, 0, 0, 0, 0, 0, 0, 0, 0, 0x0f0f0f, 0, 0, 0},
    {0, 0, 0x0f0f0f, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0x0f0f0f, 0, 0},
    {0, 0x0f0f0f, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0x0f0f0f, 0},
    {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
};

// Using structure to get the full memory datawidth 512
typedef struct TYPE { 
    uint data[DATA_SIZE];
} TYPE;

// Tripcount identifiers
const uint c_size = DATA_SIZE;

// function declaration
int saturatedAdd(int x, int y);

static void load_input(TYPE* input,
    hls::stream<TYPE>& inStream,
    int vSize, hls::stream<uint>& xStream, hls::stream<uint>& yStream, int width, int height)
{
mem_rd:
    // Auto-pipeline is going to apply pipeline to this loop
image_traverse:
    for (uint x = 0, y = 0, idx = 0; idx < vSize; ++idx) {
	#pragma HLS LOOP_TRIPCOUNT min = 31568 max = 31568
        // Read the next 16 Pixels
        inStream << input[idx];

        // Row Boundary Check for x
        if (x >= width) {
            x = x - width;
            ++y;
        }
        xStream << x;
        yStream << y;
        // "x" variable is getting updated outside the loop
        x += DATA_SIZE;

    }
}


static void compute_watermark(hls::stream<TYPE>& inStream,
    hls::stream<TYPE>& outStream,
    hls::stream<uint>& xStream,
    hls::stream<uint>& yStream,
	int vSize,
    int width,
    int height)
{
    TYPE tmp;
    uint tmp_x, tmp_y;
    for (uint idx = 0; idx < vSize; idx++)
    {
	#pragma HLS LOOP_TRIPCOUNT min = 31568 max = 31568
    	tmp = inStream.read();
    	tmp_x = xStream.read();
    	tmp_y = yStream.read();
    	watermark:
    	    for (uint i = 0; i < DATA_SIZE; i++)
    	    {
    	#pragma HLS LOOP_TRIPCOUNT min = c_size max = c_size
    	#pragma HLS UNROLL
    	        // Row Boundary Check for x
    	        if (tmp_x > width) {
    	            tmp_x = tmp_x - width;
    	            tmp_y += 1;
    	        }

    	        uint w_idy = tmp_y % WATERMARK_HEIGHT;
    	        uint w_idx = tmp_x % WATERMARK_WIDTH;
    	        tmp.data[i] = saturatedAdd(tmp.data[i], watermark[w_idy][w_idx]);

    	        tmp_x ++;
    	    }
    	    outStream << tmp;
    }

}

static void store_result(TYPE* out,
    hls::stream<TYPE>& outStream,
    int vSize) {
mem_wr:
    for (int i = 0; i < vSize; i++) {
	#pragma HLS LOOP_TRIPCOUNT min = 31568 max = 31568
        out[i] = outStream.read();
       
    }
}

extern "C" {
void apply_watermark(TYPE* input, TYPE* output) {

    unsigned int imageSize = width * height; // Total Number of Pixels
    // As memory access is int16 type so total 16 pixels can be access at a time,
    // so calculating total number of Memory accesses which are needed to entire
    // Image

#pragma HLS INTERFACE m_axi port = input bundle = gmem0 depth = 31568
#pragma HLS INTERFACE m_axi port = output bundle = gmem1 depth = 31568

#pragma HLS INTERFACE s_axilite register	port=return

    static hls::stream<TYPE> inStream("input_stream");
    static hls::stream<TYPE> outStream("output_stream");
    static hls::stream<uint> xStream("x_stream");
    static hls::stream<uint> yStream("y_stream");

    uint size = ((imageSize - 1) / DATA_SIZE) + 1;

    //std::cout<< size <<"\n";

#pragma HLS dataflow

    load_input(input, inStream, size, xStream, yStream, width, height);
    compute_watermark(inStream, outStream, xStream, yStream, size, width, height);
    store_result(output, outStream, size);
}
}

int saturatedAdd(int x, int y) {
    // Separate into the different channels

    // Red Channel
    int redX = x & 0xff;
    int redY = y & 0xff;
    int redOutput;

    // Green Channel
    int greenX = (x & 0xff00) >> 8;
    int greenY = (y & 0xff00) >> 8;
    int greenOutput;

    // Blue Channel
    int blueX = (x & 0xff0000) >> 16;
    int blueY = (y & 0xff0000) >> 16;
    int blueOutput;

    // Calculating Red
    if (redX + redY > 255) {
        redOutput = 255;
    } else {
        redOutput = redX + redY;
    }

    // Calculating Green
    if (greenX + greenY > 255) {
        greenOutput = 255;
    } else {
        greenOutput = greenX + greenY;
    }

    // Calculating Blue
    if (blueX + blueY > 255) {
        blueOutput = 255;
    } else {
        blueOutput = blueX + blueY;
    }

    // Combining all channels into one
    int combinedOutput = 0;
    combinedOutput |= redOutput;
    combinedOutput |= (greenOutput << 8);
    combinedOutput |= (blueOutput << 16);
    return combinedOutput;
}

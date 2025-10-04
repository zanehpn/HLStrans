// Converted from rendering_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: rendering.cpp ----

void rendering( bit32 input[3*NUM_3D_TRI], bit32 output[NUM_FB])
{

  // local variables
  Triangle_3D triangle_3ds;
  Triangle_2D triangle_2ds;
  Triangle_2D triangle_2ds_same;

  bit16 size_fragment;
  CandidatePixel fragment[500];

  bit16 size_pixels;
  Pixel pixels[500];

  bit8 frame_buffer[MAX_X][MAX_Y];
  bit2 angle = 0;

  bit8 max_min[5];
  bit16 max_index[1];
  bit2 flag;

  // processing NUM_3D_TRI 3D triangles
  TRIANGLES: for (bit16 i = 0; i < NUM_3D_TRI; i++)
  {

    bit32 input_lo  = input[3*i];
    bit32 input_mi  = input[3*i+1];
    bit32 input_hi  = input[3*i+2];

    triangle_3ds.x0 = input_lo( 7,  0);
    triangle_3ds.y0 = input_lo(15,  8);
    triangle_3ds.z0 = input_lo(23, 16);
    triangle_3ds.x1 = input_lo(31, 24);
    triangle_3ds.y1 = input_mi( 7,  0);
    triangle_3ds.z1 = input_mi(15,  8);
    triangle_3ds.x2 = input_mi(23, 16);
    triangle_3ds.y2 = input_mi(31, 24);
    triangle_3ds.z2 = input_hi( 7,  0);

    #ifdef USE_DATAFLOW

    #endif

    // five stages for processing each 3D triangle
    projection( triangle_3ds, &triangle_2ds, angle );
    flag = rasterization1( triangle_2ds, max_min, &triangle_2ds_same, max_index);
    size_fragment = rasterization2( flag, max_min, max_index, triangle_2ds_same, fragment );
    size_pixels = zculling( i, fragment, size_fragment, pixels);
    coloringFB ( i, size_pixels, pixels, frame_buffer);
  }

  // output values: frame buffer
  output_FB(frame_buffer,output);
}

// ---- file: rendering.h ----

/*                                                               */
/*                          typedefs.h                           */
/*                                                               */
/*                     Typedefs for the host                     */
/*                                                               */
/*===============================================================*/

#ifndef __TYPEDEFS_H__
#define __TYPEDEFS_H__

// resolution 256x256
const int MAX_X = 256;
const int MAX_Y = 256;

// number of values in frame buffer: 32 bits
const int NUM_FB = MAX_X * MAX_Y / 4;
// dataset information
const int NUM_3D_TRI = 3192;

#ifdef OCL
  #include <string>
  // target device
  // change here to map to a different device
  const std::string TARGET_DEVICE = "xilinx_aws-vu9p-f1-04261818_dynamic_5_0";
#endif

#ifndef SW
  // hls header
  #include "ap_int.h"
  // specialized datatypes
  typedef ap_uint<1> bit1;
  typedef ap_uint<2> bit2;
  typedef ap_uint<8> bit8;
  typedef ap_uint<16> bit16;
  typedef ap_uint<32> bit32;
#else
  typedef unsigned char bit8;
  typedef unsigned int bit32;
#endif

// struct: 3D triangle
typedef struct
{
  bit8   x0;
  bit8   y0;
  bit8   z0;
  bit8   x1;
  bit8   y1;
  bit8   z1;
  bit8   x2;
  bit8   y2;
  bit8   z2;
} Triangle_3D;

// struct: 2D triangle
typedef struct
{
  bit8   x0;
  bit8   y0;
  bit8   x1;
  bit8   y1;
  bit8   x2;
  bit8   y2;
  bit8   z;
} Triangle_2D;

// struct: candidate pixels
typedef struct
{
  bit8   x;
  bit8   y;
  bit8   z;
  bit8   color;
} CandidatePixel;

// struct: colored pixel
typedef struct
{
  bit8   x;
  bit8   y;
  bit8   color;
} Pixel;

// dataflow switch
#define ENABLE_DATAFLOW
#endif

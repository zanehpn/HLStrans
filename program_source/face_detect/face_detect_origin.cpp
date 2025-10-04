// Converted from face_detect_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: face_detect.h ----

    MySize winSize = { myRound(winSize0.width*factor), myRound(winSize0.height*factor) };

  unsigned char L[WINDOW_SIZE-1][IMAGE_WIDTH];

  static int_II II[WINDOW_SIZE][WINDOW_SIZE];

  static int_SII SII[SQ_SIZE][SQ_SIZE];

  Initialize0u :
  for ( u = 0; u < WINDOW_SIZE; u++ ){

    Initailize0v:
    for ( v = 0; v < WINDOW_SIZE; v++ ){

      II[u][v] = 0;
    }
  }

  SII[0][0] = 0;
  SII[0][1] = 0;
  SII[1][0] = 0;
  SII[1][1] = 0;

  Initialize1i:
  for ( i = 0; i < WINDOW_SIZE ; i++ ){

    Initialize1j:
    for ( j = 0; j < 2*WINDOW_SIZE; j++ ){

      I[i][j] = 0;
      SI[i][j] = 0;
    }
  }

  Initialize2y :
  for ( y = 0; y < WINDOW_SIZE-1; y++ ){

    Initialize2x :
    for ( x = 0; x < IMAGE_WIDTH ; x++){//IMAGE_WIDTH; x++ ){

      L[y][x] = 0;
    }
  }

  int element_counter = 0;
  int x_index = 0;
  int y_index = 0;
  int ii, jj;

      SetIIu: for ( u = 0; u < WINDOW_SIZE; u++){

        SetIIj: for ( v = 0; v < WINDOW_SIZE; v++ ){

          II[u][v] = II[u][v] + ( I[u][v+1] - I[u][0] );
        }
      }

      Ilast: for( i = 0; i < WINDOW_SIZE-1; i++ ){

        I[i][2*WINDOW_SIZE-1] = L[i][x];
        SI[i][2*WINDOW_SIZE-1] = L[i][x]*L[i][x];
      }
      I[WINDOW_SIZE-1][2*WINDOW_SIZE-1] = IMG1_data[y][x];
      SI[WINDOW_SIZE-1][2*WINDOW_SIZE-1] = IMG1_data[y][x]*IMG1_data[y][x];

      if ( element_counter >= ( ( (WINDOW_SIZE-1)*sum_col + WINDOW_SIZE ) + WINDOW_SIZE -1 ) ) {

  #include "haar_dataRcc_with_partitioning.h"

  static uint18_t coord[12];

  static int s0[9];

  static int s1[16];

  static int s2[27];

  uint10_t addr_list[12];

  stage_sum = 0;
  s0[0] = classifier0( II, stddev );
  s0[1] = classifier1( II, stddev );
  s0[2] = classifier2( II, stddev );
  s0[3] = classifier3( II, stddev );
  s0[4] = classifier4( II, stddev );
  s0[5] = classifier5( II, stddev );
  s0[6] = classifier6( II, stddev );
  s0[7] = classifier7( II, stddev );
  s0[8] = classifier8( II, stddev );
  stage_sum = s0[0] + s0[1] + s0[2] + s0[3] + s0[4] + s0[5] + s0[6] + s0[7] + s0[8];

  if( stage_sum < 0.4*stages_thresh_array[0] )
    return -1;

  haar_counter += 9;

      addr_list[ 0] =  tr0.y    *25+ tr0.x;
      addr_list[ 1] =  tr0.y    *25+tr0.x+tr0.width;
      addr_list[ 2] = (tr0.y+tr0.height)*25+tr0.x;
      addr_list[ 3] = (tr0.y+tr0.height)*25+tr0.x+tr0.width;
      addr_list[ 4] =  tr1.y    *25+tr1.x;
      addr_list[ 5] =  tr1.y    *25+tr1.x+tr1.width;
      addr_list[ 6] = (tr1.y+tr1.height)*25+tr1.x;
      addr_list[ 7] = (tr1.y+tr1.height)*25+tr1.x+tr1.width;

      if (!(tr2.x ==0 && tr2.width==0 && tr2.y==0 && tr2.height==0 ) && tr2.width!=0 && tr2.height!=0)
      {

        addr_list[ 8] =  tr2.y    *25+tr2.x;
        addr_list[ 9] =  tr2.y    *25+tr2.x+tr2.width;
        addr_list[10] = (tr2.y+tr2.height)*25+tr2.x;
        addr_list[11] = (tr2.y+tr2.height)*25+tr2.x+tr2.width;
        enable_list[ 8] = 1;
        enable_list[ 9] = 1;
        enable_list[10] = 1;
        enable_list[11] = 1;

        }
        else
        {
          addr_list[ 8] =  addr_list[0];
          addr_list[ 9] =  addr_list[1];
          addr_list[10] =  addr_list[2];
          addr_list[11] =  addr_list[3];
          enable_list[ 8] = 0;
          enable_list[ 9] = 0;
          enable_list[10] = 0;
          enable_list[11] = 0;

        }

    if( stage_sum < 0.4*stages_thresh_array[i] ){
       return -i;
    }
  }
/*                                                               */
/*                          typedefs.h                           */
/*                                                               */
/*                     Typedefs for the host                     */
/*                                                               */
/*===============================================================*/

#ifndef __HAAR_H__
#define __HAAR_H__

// constants
const int IMAGE_HEIGHT = 240;
const int IMAGE_WIDTH = 320;
const int RESULT_SIZE = 100;
const int IMAGE_MAXGREY = 255;
const int IMAGE_SIZE = ( IMAGE_HEIGHT * IMAGE_WIDTH );
const int TOTAL_NODES = 2913;
const int TOTAL_STAGES = 25;
const int TOTAL_COORDINATES = TOTAL_NODES * 12;
const int TOTAL_WEIGHTS = TOTAL_NODES * 3;
const int WINDOW_SIZE = 25;
const int SQ_SIZE = 2;
const int PYRAMID_HEIGHT = 12;
const int ROWS = 25;
const int COLS = 25;
const int NUM_BANKS = 12;
const int SIZE = 2913;

#ifdef OCL
  #include <string>
  // target device
  // change here to map to a different device
  const std::string TARGET_DEVICE = "xilinx_aws-vu9p-f1-04261818_dynamic_5_0";
#endif

#ifndef SW
  #include "ap_int.h"
  // HLS-specific datatypes
  typedef ap_uint<18> uint18_t;
  typedef ap_uint<10> uint10_t;
  typedef ap_uint<1>  bit;
  typedef ap_uint<5> uint5_t;
  typedef ap_uint<13> int_I;
  typedef ap_uint<21> int_SI;
  typedef ap_uint<18> int_II;
  typedef ap_uint<26> int_SII;
#endif

// standard datatypes
typedef struct MyPoint
{
  int x;
  int y;
} MyPoint;

typedef struct
{
  int width;
  int height;
} MySize;

typedef struct
{
  int x;
  int y;
  int width;
  int height;
} MyRect;

typedef struct
{
  int width;
  int height;
  int maxgrey;
  int flag;
} MyInputImage;

#endif

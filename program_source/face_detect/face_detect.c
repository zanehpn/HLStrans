// ---- file: face_detect.h ----
/*===============================================================*/
/*                                                               */
/*                       face_detect.h                           */
/*                                                               */
/*     Hardware function for the Face Detection application.     */
/*                                                               */
/*===============================================================*/


#include "typedefs.h"

void face_detect( unsigned char Data[IMAGE_WIDTH], 
                  int _result_x[RESULT_SIZE], 
                  int _result_y[RESULT_SIZE], 
                  int _result_w[RESULT_SIZE], 
                  int _result_h[RESULT_SIZE], 
                  int *result_size);

// ---- file: haar_mapping.h ----

static int bank_mapping[ROWS * COLS] = 
{8, 13, 20, 14, 21, 12, 10, 1, 15, 2, 14, 17, 16, 20, 9, 6, 19, 14, 1, 0, 2, 18, 11, 5, 4, 15, 16, 13, 2, 0, 15, 24, 21, 25, 4, 14, 27, 23, 7, 12, 10, 3, 6, 18, 20, 11, 9, 4, 2, 16, 23, 25, 0, 5, 12, 6, 3, 15, 4, 13, 19, 12, 18, 20, 25, 1, 14, 17, 16, 19, 26, 22, 1, 21, 2, 12, 12, 17, 25, 3, 19, 21, 7, 16, 24, 22, 25, 13, 23, 26, 20, 27, 22, 7, 5, 5, 3, 2, 27, 14, 0, 5, 11, 10, 17, 4, 12, 27, 21, 3, 25, 20, 19, 24, 23, 26, 24, 19, 13, 9, 15, 16, 6, 15, 22, 17, 20, 26, 4, 24, 25, 13, 0, 22, 23, 7, 11, 11, 6, 5, 12, 3, 26, 22, 18, 18, 10, 9, 1, 1, 9, 9, 14, 1, 20, 3, 11, 11, 24, 7, 17, 0, 4, 9, 1, 12, 22, 13, 2, 15, 19, 5, 21, 10, 10, 13, 27, 6, 14, 4, 5, 20, 24, 11, 11, 9, 19, 2, 2, 23, 21, 1, 15, 0, 21, 7, 18, 18, 9, 18, 20, 3, 27, 17, 6, 23, 19, 17, 1, 12, 11, 22, 7, 2, 23, 6, 25, 15, 4, 16, 0, 11, 5, 19, 21, 22, 4, 24, 6, 1, 20, 6, 10, 2, 16, 11, 23, 7, 7, 0, 1, 15, 9, 17, 17, 12, 12, 13, 14, 3, 6, 1, 16, 0, 25, 19, 1, 20, 7, 14, 2, 2, 9, 3, 17, 16, 21, 5, 10, 7, 14, 15, 26, 23, 15, 5, 24, 2, 27, 10, 1, 16, 16, 7, 0, 15, 9, 6, 19, 19, 14, 11, 18, 3, 20, 20, 20, 23, 25, 17, 16, 18, 9, 2, 22, 22, 15, 6, 6, 0, 7, 5, 5, 16, 2, 9, 12, 18, 21, 13, 25, 14, 3, 17, 11, 19, 19, 15, 7, 2, 18, 18, 18, 5, 13, 13, 14, 14, 21, 20, 9, 10, 16, 9, 11, 19, 4, 12, 26, 23, 18, 22, 22, 11, 23, 7, 2, 19, 9, 9, 21, 14, 0, 18, 4, 5, 6, 17, 15, 4, 26, 13, 19, 20, 10, 2, 2, 11, 16, 26, 24, 18, 14, 3, 1, 0, 10, 13, 4, 16, 5, 6, 21, 14, 3, 13, 0, 5, 11, 20, 17, 17, 25, 15, 24, 10, 4, 22, 3, 5, 5, 6, 12, 12, 13, 3, 14, 11, 11, 25, 10, 7, 20, 22, 6, 4, 5, 7, 3, 9, 26, 22, 23, 18, 15, 6, 20, 21, 25, 10, 4, 17, 13, 5, 12, 3, 25, 0, 0, 0, 1, 0, 2, 4, 11, 25, 17, 23, 4, 3, 24, 26, 20, 5, 12, 7, 0, 27, 6, 18, 24, 10, 22, 14, 15, 21, 15, 23, 1, 3, 17, 9, 27, 16, 18, 26, 4, 19, 10, 9, 12, 25, 0, 24, 24, 22, 16, 6, 23, 2, 25, 13, 14, 24, 15, 21, 1, 9, 19, 10, 4, 11, 23, 26, 24, 22, 16, 1, 20, 2, 9, 19, 18, 7, 11, 9, 10, 1, 17, 2, 12, 0, 3, 20, 12, 12, 2, 5, 15, 6, 11, 26, 1, 19, 13, 14, 27, 7, 13, 22, 26, 2, 4, 22, 1, 6, 27, 7, 22, 11, 12, 18, 0, 15, 3, 13, 24, 2, 15, 27, 7, 5, 9, 1, 21, 3, 1, 9, 16, 17, 24, 19, 16, 26, 11, 20, 12, 18, 22, 17, 25, 9, 27, 7, 4, 16, 15, 2, 3, 5, 14, 21, 24, 13, 13, 23, 7, 26, 5, 6, 20, 3, 10, 11, 22, 2, 23, 24, 12, 17, 27, 1, 25, 18, 18};

static int offset_mapping[ROWS * COLS] = 
{0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  1,  0,  0,  1,  0,  0,  0,  2,  1,  0,  1,  0,  0,  0,  0,  1,  1,  1,  2,  1,  2,  0,  1,  0,  1,  3,  0,  0,  0,  1,  1,  0,  1,  1,  2,  1,  1,  2,  3,  2,  1,  1,  2,  1,  2,  2,  1,  3,  3,  2,  1,  3,  2,  3,  2,  2,  4,  1,  3,  2,  0,  0,  3,  2,  4,  4,  5,  2,  3,  2,  3,  3,  1,  4,  1,  1,  4,  3,  2,  1,  4,  1,  2,  2,  2,  3,  3,  5,  2,  5,  3,  4,  2,  2,  3,  4,  6,  3,  4,  4,  5,  5,  4,  2,  3,  2,  3,  5,  4,  2,  4,  5,  3,  5,  3,  4,  6,  3,  5,  4,  6,  5,  4,  4,  4,  3,  3,  4,  4,  5,  7,  5,  4,  5,  3,  4,  3,  3,  4,  5,  4,  5,  6,  6,  7,  6,  5,  6,  5,  4,  5,  5,  6,  6,  7,  8,  6,  6,  6,  6,  6,  6,  5,  4,  5,  7,  4,  5,  7,  7,  7,  8,  6,  7,  8,  7,  7,  7,  8,  5,  6,  8,  7,  6,  7,  5,  5,  6,  8,  7,  9,  7,  5,  6,  6,  6,  8,  7,  9,  9,  9,  7,  6,  9,  7,  7,  7,  8,  8,  6,  7, 10,  8,  9,  8,  8,  9,  7,  8, 10, 10,  9,  6, 10,  7, 11,  8,  7,  8,  8, 11,  9,  9,  8,  9, 10, 11,  8,  8,  8, 10, 12,  8,  9,  8, 10, 13, 11,  9,  9, 11, 12, 10,  9, 10,  9,  9,  9,  7, 10, 10, 10,  5,  9, 11, 10,  8, 13,  6,  8, 14, 10, 11, 11, 10, 12, 11, 11, 11, 12, 11, 12,  8, 10, 12, 13, 14, 10,  9, 11, 12,  9, 12, 14,  9, 10, 13, 12, 13, 11, 12, 11, 12, 13, 15, 13, 12, 10, 10,  9, 10, 12, 11, 12, 13, 13, 14, 14, 13, 16, 11, 12, 13, 13, 10, 11, 13, 14, 11, 15, 14,  9, 14, 15, 14, 15, 10, 13,  6, 11, 14, 11, 12, 15, 12, 14, 17, 16, 16, 17, 12, 15, 12, 15, 11, 14, 14, 13, 15, 12,  7, 12, 17, 16, 10, 18, 19, 16, 15,  8,  9, 16, 16, 12, 15, 13, 11, 13, 13, 16, 15, 15, 13, 17, 13, 14, 14, 16, 17, 17, 14, 15, 11, 16, 10, 12, 14, 13, 14, 17, 18, 16, 14, 15, 15, 15, 18, 18, 19, 12, 13, 15, 18, 14, 17, 15, 19, 16, 16, 18,  9, 15, 13, 17, 17, 18, 19, 14, 13, 14, 16, 16, 16, 20, 16, 17, 14, 15, 16, 17, 16, 18, 20, 17, 20, 15, 17, 14, 18, 18, 11, 10, 20, 21, 17, 17, 19,  7, 19, 18, 12, 15, 16, 19, 18, 15, 19, 15, 17, 19, 18, 19,  8, 17, 19, 11, 19, 18, 16, 20, 18, 16, 20, 13, 14, 17, 18, 20, 16, 21, 17, 17, 20, 15, 20, 16, 18, 21, 19, 17, 20, 21, 17, 12, 16, 18, 19, 19, 21, 22, 22, 20, 20, 18, 22, 23, 18, 20, 19, 23, 19, 21, 20, 22, 20, 21, 24, 22, 21, 21, 23, 13, 21, 21, 18, 21,  9, 19, 19, 19, 14, 25, 21, 20, 22, 22, 10, 20, 21, 24, 22, 21, 22, 22, 21, 20, 17, 26, 23, 11, 21, 23, 24, 23, 17, 22, 24, 25, 20, 20, 18, 22, 21, 15, 25, 23, 23, 22, 22, 21, 18, 26, 12, 22, 22, 22, 24, 27, 23, 24, 22, 18, 19, 21, 22, 18, 23, 16, 25, 23, 24, 24, 19, 26, 23, 28, 19, 20, 24, 22, 13, 25, 19, 23, 24};

// ---- file: face_detect.cpp ----
/*===============================================================*/
/*                                                               */
/*                      face_detect.cpp                          */
/*                                                               */
/*     Hardware function for the Face Detection application.     */
/*                                                               */
/*===============================================================*/

#include "typedefs.h"

#include "haar_mapping.h"

uint5_t get_bank(uint10_t addr)
{
  #pragma HLS inline
  return bank_mapping[addr];
}

uint5_t get_offset(uint10_t addr)
{
  #pragma HLS inline
  return offset_mapping[addr];
}

uint18_t get_data0(int offset, uint18_t aa[ROWS*COLS])
{
  #pragma HLS inline
  uint18_t a;
  switch (offset)
  {
    case 0: a = aa[19 ]; break;
    case 1: a = aa[29 ]; break;
    case 2: a = aa[52 ]; break;
    case 3: a = aa[100]; break;
    case 4: a = aa[132]; break;
    case 5: a = aa[161]; break;
    case 6: a = aa[193]; break;
    case 7: a = aa[220]; break;
    case 8: a = aa[239]; break;
    case 9: a = aa[253]; break;
    case 10:a = aa[284]; break;
    case 11:a = aa[309]; break;
    case 12:a = aa[362]; break;
    case 13:a = aa[385]; break;
    case 14:a = aa[396]; break;
    case 15:a = aa[447]; break;
    case 16:a = aa[448]; break;
    case 17:a = aa[449]; break;
    case 18:a = aa[451]; break;
    case 19:a = aa[466]; break;
    case 20:a = aa[492]; break;
    case 21:a = aa[531]; break;
    case 22:a = aa[562]; break;
    default: a = 0; break;
  }; 

  return a;
}

uint18_t get_data1(int offset, uint18_t aa[ROWS*COLS])
{
  #pragma HLS inline
  uint18_t a;
  switch (offset)
  {
    case 0: a = aa[7  ]; break;
    case 1: a = aa[18 ]; break;
    case 2: a = aa[65 ]; break;
    case 3: a = aa[72 ]; break;
    case 4: a = aa[148]; break;
    case 5: a = aa[149]; break;
    case 6: a = aa[153]; break;
    case 7: a = aa[164]; break;
    case 8: a = aa[191]; break;
    case 9: a = aa[208]; break;
    case 10:a = aa[229]; break;
    case 11:a = aa[240]; break;
    case 12:a = aa[251]; break;
    case 13:a = aa[256]; break;
    case 14:a = aa[280]; break;
    case 15:a = aa[384]; break;
    case 16:a = aa[450]; break;
    case 17:a = aa[478]; break;
    case 18:a = aa[506]; break;
    case 19:a = aa[517]; break;
    case 20:a = aa[527]; break;
    case 21:a = aa[542]; break;
    case 22:a = aa[554]; break;
    case 23:a = aa[573]; break;
    case 24:a = aa[576]; break;
    case 25:a = aa[621]; break;
    default: a = 0; break;
  }; 
  return a;
}

uint18_t get_data2(int offset, uint18_t aa[ROWS*COLS])
{
  #pragma HLS inline
  uint18_t a;
  switch (offset)
  {
    case 0: a = aa[9  ]; break;
    case 1: a = aa[20 ]; break;
    case 2: a = aa[28 ]; break;
    case 3: a = aa[48 ]; break;
    case 4: a = aa[74 ]; break;
    case 5: a = aa[97 ]; break;
    case 6: a = aa[168]; break;
    case 7: a = aa[187]; break;
    case 8: a = aa[188]; break;
    case 9: a = aa[213]; break;
    case 10:a = aa[233]; break;
    case 11:a = aa[260]; break;
    case 12:a = aa[261]; break;
    case 13:a = aa[277]; break;
    case 14:a = aa[303]; break;
    case 15:a = aa[314]; break;
    case 16:a = aa[329]; break;
    case 17:a = aa[356]; break;
    case 18:a = aa[375]; break;
    case 19:a = aa[376]; break;
    case 20:a = aa[452]; break;
    case 21:a = aa[499]; break;
    case 22:a = aa[519]; break;
    case 23:a = aa[529]; break;
    case 24:a = aa[536]; break;
    case 25:a = aa[551]; break;
    case 26:a = aa[567]; break;
    case 27:a = aa[597]; break;
    case 28:a = aa[615]; break;
    default: a = 0; break;
  };
  return a;
}

uint18_t get_data3(int offset, uint18_t aa[ROWS*COLS])
{
  #pragma HLS inline
  uint18_t a;
  switch (offset)
  {
    case 0: a = aa[41 ]; break;
    case 1: a = aa[56 ]; break;
    case 2: a = aa[79 ]; break;
    case 3: a = aa[96 ]; break;
    case 4: a = aa[109]; break;
    case 5: a = aa[141]; break;
    case 6: a = aa[155]; break;
    case 7: a = aa[201]; break;
    case 8: a = aa[249]; break;
    case 9: a = aa[263]; break;
    case 10:a = aa[293]; break;
    case 11:a = aa[322]; break;
    case 12:a = aa[383]; break;
    case 13:a = aa[394]; break;
    case 14:a = aa[408]; break;
    case 15:a = aa[415]; break;
    case 16:a = aa[428]; break;
    case 17:a = aa[445]; break;
    case 18:a = aa[459]; break;
    case 19:a = aa[479]; break;
    case 20:a = aa[532]; break;
    case 21:a = aa[564]; break;
    case 22:a = aa[575]; break;
    case 23:a = aa[598]; break;
    case 24:a = aa[611]; break;
    default: a = 0; break;
  };
  return a;
}

uint18_t get_data4(int offset, uint18_t aa[ROWS*COLS])
{
  #pragma HLS inline
  uint18_t a;

  switch (offset)
  {
    case 0: a = aa[24 ]; break;
    case 1: a = aa[34 ]; break;
    case 2: a = aa[47 ]; break;
    case 3: a = aa[58 ]; break;
    case 4: a = aa[105]; break;
    case 5: a = aa[128]; break;
    case 6: a = aa[162]; break;
    case 7: a = aa[179]; break;
    case 8: a = aa[218]; break;
    case 9: a = aa[226]; break;
    case 10:a = aa[346]; break;
    case 11:a = aa[364]; break;
    case 12:a = aa[369]; break;
    case 13:a = aa[388]; break;
    case 14:a = aa[406]; break;
    case 15:a = aa[425]; break;
    case 16:a = aa[440]; break;
    case 17:a = aa[453]; break;
    case 18:a = aa[458]; break;
    case 19:a = aa[486]; break;
    case 20:a = aa[510]; break;
    case 21:a = aa[552]; break;
    case 22:a = aa[594]; break;
    default: a = 0; break;
  }; 
  return a;
}

uint18_t get_data5(int offset, uint18_t aa[ROWS*COLS])
{
  #pragma HLS inline
  uint18_t a;

  switch (offset)
  {
    case 0: a = aa[23 ]; break;
    case 1: a = aa[53 ]; break;
    case 2: a = aa[94 ]; break;
    case 3: a = aa[95 ]; break;
    case 4: a = aa[101]; break;
    case 5: a = aa[139]; break;
    case 6: a = aa[171]; break;
    case 7: a = aa[180]; break;
    case 8: a = aa[222]; break;
    case 9: a = aa[267]; break;
    case 10:a = aa[275]; break;
    case 11:a = aa[311]; break;
    case 12:a = aa[312]; break;
    case 13:a = aa[333]; break;
    case 14:a = aa[365]; break;
    case 15:a = aa[390]; break;
    case 16:a = aa[397]; break;
    case 17:a = aa[409]; break;
    case 18:a = aa[410]; break;
    case 19:a = aa[426]; break;
    case 20:a = aa[443]; break;
    case 21:a = aa[463]; break;
    case 22:a = aa[537]; break;
    case 23:a = aa[571]; break;
    case 24:a = aa[599]; break;
    case 25:a = aa[608]; break;
    default: a = 0; break;
  }; 
  return a;
}

uint18_t get_data6(int offset, uint18_t aa[ROWS*COLS])
{
  #pragma HLS inline
  uint18_t a;
  switch (offset)
  {
    case 0: a = aa[15 ]; break;
    case 1: a = aa[42 ]; break;
    case 2: a = aa[55 ]; break;
    case 3: a = aa[122]; break;
    case 4: a = aa[138]; break;
    case 5: a = aa[177]; break;
    case 6: a = aa[204]; break;
    case 7: a = aa[215]; break;
    case 8: a = aa[228]; break;
    case 9: a = aa[231]; break;
    case 10:a = aa[250]; break;
    case 11:a = aa[287]; break;
    case 12:a = aa[307]; break;
    case 13:a = aa[308]; break;
    case 14:a = aa[366]; break;
    case 15:a = aa[391]; break;
    case 16:a = aa[411]; break;
    case 17:a = aa[424]; break;
    case 18:a = aa[435]; break;
    case 19:a = aa[468]; break;
    case 20:a = aa[497]; break;
    case 21:a = aa[539]; break;
    case 22:a = aa[555]; break;
    case 23:a = aa[609]; break;
    default: a = 0; break;
  }; 
  return a;
}

uint18_t get_data7(int offset, uint18_t aa[ROWS*COLS])
{
  #pragma HLS inline
  uint18_t a;

  switch (offset)
  {
    case 0: a = aa[38 ]; break;
    case 1: a = aa[82 ]; break;
    case 2: a = aa[93 ]; break;
    case 3: a = aa[135]; break;
    case 4: a = aa[159]; break;
    case 5: a = aa[195]; break;
    case 6: a = aa[212]; break;
    case 7: a = aa[237]; break;
    case 8: a = aa[238]; break;
    case 9: a = aa[258]; break;
    case 10:a = aa[269]; break;
    case 11:a = aa[283]; break;
    case 12:a = aa[310]; break;
    case 13:a = aa[328]; break;
    case 14:a = aa[355]; break;
    case 15:a = aa[421]; break;
    case 16:a = aa[427]; break;
    case 17:a = aa[465]; break;
    case 18:a = aa[523]; break;
    case 19:a = aa[547]; break;
    case 20:a = aa[557]; break;
    case 21:a = aa[570]; break;
    case 22:a = aa[593]; break;
    case 23:a = aa[606]; break;
    default: a = 0; break;
  }; 
  return a;
}

uint18_t get_data8(int offset, uint18_t aa[ROWS*COLS])
{
  #pragma HLS inline
  uint18_t a;

  switch (offset)
  {
    case 0:a = aa[0]; break;
    default: a = 0; break;
  }; 
  return a;
}

uint18_t get_data9(int offset, uint18_t aa[ROWS*COLS])
{
  #pragma HLS inline
  uint18_t a;

  switch (offset)
  {
    case 0: a = aa[14 ]; break;
    case 1: a = aa[46 ]; break;
    case 2: a = aa[119]; break;
    case 3: a = aa[147]; break;
    case 4: a = aa[150]; break;
    case 5: a = aa[151]; break;
    case 6: a = aa[163]; break;
    case 7: a = aa[185]; break;
    case 8: a = aa[198]; break;
    case 9: a = aa[242]; break;
    case 10:a = aa[262]; break;
    case 11:a = aa[286]; break;
    case 12:a = aa[302]; break;
    case 13:a = aa[315]; break;
    case 14:a = aa[340]; break;
    case 15:a = aa[343]; break;
    case 16:a = aa[358]; break;
    case 17:a = aa[359]; break;
    case 18:a = aa[429]; break;
    case 19:a = aa[481]; break;
    case 20:a = aa[489]; break;
    case 21:a = aa[507]; break;
    case 22:a = aa[520]; break;
    case 23:a = aa[525]; break;
    case 24:a = aa[572]; break;
    case 25:a = aa[577]; break;
    case 26:a = aa[591]; break;
    default: a = 0; break;
  }; 
  return a;
}

uint18_t get_data10(int offset, uint18_t aa[ROWS*COLS])
{
  #pragma HLS inline
  uint18_t a;

  switch (offset)
  {
    case 0: a = aa[6  ]; break;
    case 1: a = aa[40 ]; break;
    case 2: a = aa[103]; break;
    case 3: a = aa[146]; break;
    case 4: a = aa[173]; break;
    case 5: a = aa[174]; break;
    case 6: a = aa[232]; break;
    case 7: a = aa[268]; break;
    case 8: a = aa[279]; break;
    case 9: a = aa[341]; break;
    case 10:a = aa[374]; break;
    case 11:a = aa[386]; break;
    case 12:a = aa[405]; break;
    case 13:a = aa[420]; break;
    case 14:a = aa[439]; break;
    case 15:a = aa[471]; break;
    case 16:a = aa[488]; break;
    case 17:a = aa[509]; break;
    case 18:a = aa[526]; break;
    case 19:a = aa[612]; break;
    default: a = 0; break;
  }; 
  return a;
}

uint18_t get_data11(int offset, uint18_t aa[ROWS*COLS])
{
  #pragma HLS inline
  uint18_t a;

  switch (offset)
  {
    case 0: a = aa[22 ]; break;
    case 1: a = aa[45 ]; break;
    case 2: a = aa[102]; break;
    case 3: a = aa[136]; break;
    case 4: a = aa[137]; break;
    case 5: a = aa[156]; break;
    case 6: a = aa[157]; break;
    case 7: a = aa[183]; break;
    case 8: a = aa[184]; break;
    case 9: a = aa[210]; break;
    case 10:a = aa[221]; break;
    case 11:a = aa[235]; break;
    case 12:a = aa[291]; break;
    case 13:a = aa[324]; break;
    case 14:a = aa[344]; break;
    case 15:a = aa[353]; break;
    case 16:a = aa[377]; break;
    case 17:a = aa[398]; break;
    case 18:a = aa[417]; break;
    case 19:a = aa[418]; break;
    case 20:a = aa[454]; break;
    case 21:a = aa[511]; break;
    case 22:a = aa[524]; break;
    case 23:a = aa[540]; break;
    case 24:a = aa[559]; break;
    case 25:a = aa[584]; break;
    case 26:a = aa[613]; break;
    default: a = 0; break;
  }; 
  return a;
}

uint18_t get_data12(int offset, uint18_t aa[ROWS*COLS])
{
  #pragma HLS inline
  uint18_t a;

  switch (offset)
  {
    case 0: a = aa[5  ]; break;
    case 1: a = aa[39 ]; break;
    case 2: a = aa[54 ]; break;
    case 3: a = aa[61 ]; break;
    case 4: a = aa[75 ]; break;
    case 5: a = aa[76 ]; break;
    case 6: a = aa[106]; break;
    case 7: a = aa[140]; break;
    case 8: a = aa[165]; break;
    case 9: a = aa[209]; break;
    case 10:a = aa[245]; break;
    case 11:a = aa[246]; break;
    case 12:a = aa[316]; break;
    case 13:a = aa[347]; break;
    case 14:a = aa[412]; break;
    case 15:a = aa[413]; break;
    case 16:a = aa[444]; break;
    case 17:a = aa[464]; break;
    case 18:a = aa[490]; break;
    case 19:a = aa[530]; break;
    case 20:a = aa[534]; break;
    case 21:a = aa[535]; break;
    case 22:a = aa[560]; break;
    case 23:a = aa[586]; break;
    case 24:a = aa[618]; break;
    default: a = 0; break;
  }; 
  return a;
}

uint18_t get_data13(int offset, uint18_t aa[ROWS*COLS])
{
  #pragma HLS inline
  uint18_t a;

  switch (offset)
  {
    case 0: a = aa[1  ]; break;
    case 1: a = aa[27 ]; break;
    case 2: a = aa[59 ]; break;
    case 3: a = aa[87 ]; break;
    case 4: a = aa[118]; break;
    case 5: a = aa[131]; break;
    case 6: a = aa[167]; break;
    case 7: a = aa[175]; break;
    case 8: a = aa[247]; break;
    case 9: a = aa[319]; break;
    case 10:a = aa[334]; break;
    case 11:a = aa[335]; break;
    case 12:a = aa[371]; break;
    case 13:a = aa[387]; break;
    case 14:a = aa[395]; break;
    case 15:a = aa[414]; break;
    case 16:a = aa[442]; break;
    case 17:a = aa[501]; break;
    case 18:a = aa[544]; break;
    case 19:a = aa[548]; break;
    case 20:a = aa[565]; break;
    case 21:a = aa[603]; break;
    case 22:a = aa[604]; break;
    default: a = 0; break;
  }; 
  return a;
}

uint18_t get_data14(int offset, uint18_t aa[ROWS*COLS])
{
  #pragma HLS inline
  uint18_t a;

  switch (offset)
  {
    case 0: a = aa[3  ]; break;
    case 1: a = aa[10 ]; break;
    case 2: a = aa[17 ]; break;
    case 3: a = aa[35 ]; break;
    case 4: a = aa[66 ]; break;
    case 5: a = aa[99 ]; break;
    case 6: a = aa[152]; break;
    case 7: a = aa[178]; break;
    case 8: a = aa[248]; break;
    case 9: a = aa[259]; break;
    case 10:a = aa[270]; break;
    case 11:a = aa[290]; break;
    case 12:a = aa[321]; break;
    case 13:a = aa[336]; break;
    case 14:a = aa[337]; break;
    case 15:a = aa[361]; break;
    case 16:a = aa[382]; break;
    case 17:a = aa[393]; break;
    case 18:a = aa[416]; break;
    case 19:a = aa[473]; break;
    case 20:a = aa[502]; break;
    case 21:a = aa[545]; break;
    case 22:a = aa[600]; break;
    default: a = 0; break;
  }; 
  return a;
}

uint18_t get_data15(int offset, uint18_t aa[ROWS*COLS])
{
  #pragma HLS inline
  uint18_t a;

  switch (offset)
  {
    case 0: a = aa[8  ]; break;
    case 1: a = aa[25 ]; break;
    case 2: a = aa[30 ]; break;
    case 3: a = aa[57 ]; break;
    case 4: a = aa[120]; break;
    case 5: a = aa[123]; break;
    case 6: a = aa[169]; break;
    case 7: a = aa[192]; break;
    case 8: a = aa[217]; break;
    case 9: a = aa[241]; break;
    case 10:a = aa[271]; break;
    case 11:a = aa[274]; break;
    case 12:a = aa[285]; break;
    case 13:a = aa[306]; break;
    case 14:a = aa[327]; break;
    case 15:a = aa[368]; break;
    case 16:a = aa[403]; break;
    case 17:a = aa[434]; break;
    case 18:a = aa[474]; break;
    case 19:a = aa[476]; break;
    case 20:a = aa[504]; break;
    case 21:a = aa[538]; break;
    case 22:a = aa[563]; break;
    case 23:a = aa[568]; break;
    case 24:a = aa[596]; break;
    default: a = 0; break;
  }; 
  return a;
}

uint18_t get_data16(int offset, uint18_t aa[ROWS*COLS])
{
  #pragma HLS inline
  uint18_t a;

  switch (offset)
  {
    case 0: a = aa[12 ]; break;
    case 1: a = aa[26 ]; break;
    case 2: a = aa[49 ]; break;
    case 3: a = aa[68 ]; break;
    case 4: a = aa[83 ]; break;
    case 5: a = aa[121]; break;
    case 6: a = aa[219]; break;
    case 7: a = aa[234]; break;
    case 8: a = aa[252]; break;
    case 9: a = aa[265]; break;
    case 10:a = aa[281]; break;
    case 11:a = aa[282]; break;
    case 12:a = aa[300]; break;
    case 13:a = aa[313]; break;
    case 14:a = aa[342]; break;
    case 15:a = aa[378]; break;
    case 16:a = aa[389]; break;
    case 17:a = aa[483]; break;
    case 18:a = aa[496]; break;
    case 19:a = aa[516]; break;
    case 20:a = aa[578]; break;
    case 21:a = aa[582]; break;
    case 22:a = aa[595]; break;
    default: a = 0; break;
  }; 
  return a;
}

uint18_t get_data17(int offset, uint18_t aa[ROWS*COLS])
{
  #pragma HLS inline
  uint18_t a;

  switch (offset)
  {
    case 0: a = aa[11 ]; break;
    case 1: a = aa[67 ]; break;
    case 2: a = aa[77 ]; break;
    case 3: a = aa[104]; break;
    case 4: a = aa[125]; break;
    case 5: a = aa[160]; break;
    case 6: a = aa[203]; break;
    case 7: a = aa[207]; break;
    case 8: a = aa[243]; break;
    case 9: a = aa[244]; break;
    case 10:a = aa[264]; break;
    case 11:a = aa[299]; break;
    case 12:a = aa[323]; break;
    case 13:a = aa[367]; break;
    case 14:a = aa[400]; break;
    case 15:a = aa[401]; break;
    case 16:a = aa[441]; break;
    case 17:a = aa[456]; break;
    case 18:a = aa[480]; break;
    case 19:a = aa[528]; break;
    case 20:a = aa[579]; break;
    case 21:a = aa[589]; break;
    case 22:a = aa[619]; break;
    default: a = 0; break;
  }; 
  return a;
}


uint18_t get_data18(int offset, uint18_t aa[ROWS*COLS])
{
  #pragma HLS inline
  uint18_t a;
  switch (offset)
  {
    case 0: a = aa[21 ]; break;
    case 1: a = aa[43 ]; break;
    case 2: a = aa[62 ]; break;
    case 3: a = aa[144]; break;
    case 4: a = aa[145]; break;
    case 5: a = aa[196]; break;
    case 6: a = aa[197]; break;
    case 7: a = aa[199]; break;
    case 8: a = aa[292]; break;
    case 9: a = aa[301]; break;
    case 10:a = aa[317]; break;
    case 11:a = aa[330]; break;
    case 12:a = aa[331]; break;
    case 13:a = aa[332]; break;
    case 14:a = aa[350]; break;
    case 15:a = aa[363]; break;
    case 16:a = aa[381]; break;
    case 17:a = aa[433]; break;
    case 18:a = aa[469]; break;
    case 19:a = aa[484]; break;
    case 20:a = aa[522]; break;
    case 21:a = aa[561]; break;
    case 22:a = aa[587]; break;
    case 23:a = aa[623]; break;
    case 24:a = aa[624]; break;
    default: a = 0; break;
  }; 
  return a;
}

uint18_t get_data19(int offset, uint18_t aa[ROWS*COLS])
{
  #pragma HLS inline
  uint18_t a;

  switch (offset)
  {
    case 0: a = aa[16 ]; break;
    case 1: a = aa[60 ]; break;
    case 2: a = aa[69 ]; break;
    case 3: a = aa[80 ]; break;
    case 4: a = aa[112]; break;
    case 5: a = aa[117]; break;
    case 6: a = aa[170]; break;
    case 7: a = aa[186]; break;
    case 8: a = aa[206]; break;
    case 9: a = aa[223]; break;
    case 10:a = aa[255]; break;
    case 11:a = aa[288]; break;
    case 12:a = aa[289]; break;
    case 13:a = aa[325]; break;
    case 14:a = aa[326]; break;
    case 15:a = aa[345]; break;
    case 16:a = aa[357]; break;
    case 17:a = aa[372]; break;
    case 18:a = aa[487]; break;
    case 19:a = aa[508]; break;
    case 20:a = aa[521]; break;
    case 21:a = aa[543]; break;
    case 22:a = aa[581]; break;
    default: a = 0; break;
  }; 
  return a;
}

uint18_t get_data20(int offset, uint18_t aa[ROWS*COLS])
{
  #pragma HLS inline
  uint18_t a;

  switch (offset)
  {
    case 0: a = aa[2  ]; break;
    case 1: a = aa[13 ]; break;
    case 2: a = aa[44 ]; break;
    case 3: a = aa[63 ]; break;
    case 4: a = aa[90 ]; break;
    case 5: a = aa[111]; break;
    case 6: a = aa[126]; break;
    case 7: a = aa[154]; break;
    case 8: a = aa[181]; break;
    case 9: a = aa[200]; break;
    case 10:a = aa[230]; break;
    case 11:a = aa[257]; break;
    case 12:a = aa[294]; break;
    case 13:a = aa[295]; break;
    case 14:a = aa[296]; break;
    case 15:a = aa[339]; break;
    case 16:a = aa[373]; break;
    case 17:a = aa[399]; break;
    case 18:a = aa[422]; break;
    case 19:a = aa[436]; break;
    case 20:a = aa[462]; break;
    case 21:a = aa[518]; break;
    case 22:a = aa[533]; break;
    case 23:a = aa[585]; break;
    case 24:a = aa[610]; break;
    default: a = 0; break;
  }; 
  return a;
}

uint18_t get_data21(int offset, uint18_t aa[ROWS*COLS])
{
  #pragma HLS inline
  uint18_t a;

  switch (offset)
  {
    case 0: a = aa[4  ]; break;
    case 1: a = aa[32 ]; break;
    case 2: a = aa[73 ]; break;
    case 3: a = aa[81 ]; break;
    case 4: a = aa[108]; break;
    case 5: a = aa[172]; break;
    case 6: a = aa[190]; break;
    case 7: a = aa[194]; break;
    case 8: a = aa[224]; break;
    case 9: a = aa[266]; break;
    case 10:a = aa[318]; break;
    case 11:a = aa[338]; break;
    case 12:a = aa[360]; break;
    case 13:a = aa[392]; break;
    case 14:a = aa[437]; break;
    case 15:a = aa[475]; break;
    case 16:a = aa[505]; break;
    case 17:a = aa[574]; break;
    case 18:a = aa[601]; break;
    default: a = 0; break;
  }; 
  return a;
}

uint18_t get_data22(int offset, uint18_t aa[ROWS*COLS])
{
  #pragma HLS inline
  uint18_t a;

  switch (offset)
  {
    case 0: a = aa[71 ]; break;
    case 1: a = aa[85 ]; break;
    case 2: a = aa[92 ]; break;
    case 3: a = aa[124]; break;
    case 4: a = aa[133]; break;
    case 5: a = aa[143]; break;
    case 6: a = aa[166]; break;
    case 7: a = aa[211]; break;
    case 8: a = aa[225]; break;
    case 9: a = aa[304]; break;
    case 10:a = aa[305]; break;
    case 11:a = aa[351]; break;
    case 12:a = aa[352]; break;
    case 13:a = aa[407]; break;
    case 14:a = aa[423]; break;
    case 15:a = aa[431]; break;
    case 16:a = aa[472]; break;
    case 17:a = aa[495]; break;
    case 18:a = aa[515]; break;
    case 19:a = aa[549]; break;
    case 20:a = aa[553]; break;
    case 21:a = aa[558]; break;
    case 22:a = aa[588]; break;
    case 23:a = aa[614]; break;
    default: a = 0; break;
  }; 
  return a;
}

uint18_t get_data23(int offset, uint18_t aa[ROWS*COLS])
{
  #pragma HLS inline
  uint18_t a;

  switch (offset)
  {
    case 0: a = aa[37 ]; break;
    case 1: a = aa[50 ]; break;
    case 2: a = aa[88 ]; break;
    case 3: a = aa[114]; break;
    case 4: a = aa[134]; break;
    case 5: a = aa[189]; break;
    case 6: a = aa[205]; break;
    case 7: a = aa[214]; break;
    case 8: a = aa[236]; break;
    case 9: a = aa[273]; break;
    case 10:a = aa[297]; break;
    case 11:a = aa[349]; break;
    case 12:a = aa[354]; break;
    case 13:a = aa[432]; break;
    case 14:a = aa[457]; break;
    case 15:a = aa[477]; break;
    case 16:a = aa[498]; break;
    case 17:a = aa[512]; break;
    case 18:a = aa[605]; break;
    case 19:a = aa[616]; break;
    default: a = 0; break;
  }; 
  return a;
}

uint18_t get_data24(int offset, uint18_t aa[ROWS*COLS])
{
  #pragma HLS inline
  uint18_t a;

  switch (offset)
  {
    case 0: a = aa[31 ]; break;
    case 1: a = aa[84 ]; break;
    case 2: a = aa[113]; break;
    case 3: a = aa[116]; break;
    case 4: a = aa[129]; break;
    case 5: a = aa[158]; break;
    case 6: a = aa[182]; break;
    case 7: a = aa[227]; break;
    case 8: a = aa[276]; break;
    case 9: a = aa[380]; break;
    case 10:a = aa[404]; break;
    case 11:a = aa[460]; break;
    case 12:a = aa[470]; break;
    case 13:a = aa[493]; break;
    case 14:a = aa[494]; break;
    case 15:a = aa[503]; break;
    case 16:a = aa[514]; break;
    case 17:a = aa[566]; break;
    case 18:a = aa[580]; break;
    case 19:a = aa[602]; break;
    case 20:a = aa[617]; break;
    default: a = 0; break;
  }; 
  return a;
}

uint18_t get_data25(int offset, uint18_t aa[ROWS*COLS])
{
  #pragma HLS inline
  uint18_t a;

  switch (offset)
  {
    case 0: a = aa[33 ]; break;
    case 1: a = aa[51 ]; break;
    case 2: a = aa[64 ]; break;
    case 3: a = aa[78 ]; break;
    case 4: a = aa[86 ]; break;
    case 5: a = aa[110]; break;
    case 6: a = aa[130]; break;
    case 7: a = aa[216]; break;
    case 8: a = aa[254]; break;
    case 9: a = aa[298]; break;
    case 10:a = aa[320]; break;
    case 11:a = aa[402]; break;
    case 12:a = aa[419]; break;
    case 13:a = aa[438]; break;
    case 14:a = aa[446]; break;
    case 15:a = aa[455]; break;
    case 16:a = aa[491]; break;
    case 17:a = aa[500]; break;
    case 18:a = aa[590]; break;
    case 19:a = aa[622]; break;
    default: a = 0; break;
  }; 
  return a;
}

uint18_t get_data26(int offset, uint18_t aa[ROWS*COLS])
{
  #pragma HLS inline
  uint18_t a;

  switch (offset)
  {
    case 0: a = aa[70 ]; break;
    case 1: a = aa[89 ]; break;
    case 2: a = aa[115]; break;
    case 3: a = aa[127]; break;
    case 4: a = aa[142]; break;
    case 5: a = aa[272]; break;
    case 6: a = aa[348]; break;
    case 7: a = aa[370]; break;
    case 8: a = aa[379]; break;
    case 9: a = aa[430]; break;
    case 10:a = aa[461]; break;
    case 11:a = aa[485]; break;
    case 12:a = aa[513]; break;
    case 13:a = aa[541]; break;
    case 14:a = aa[550]; break;
    case 15:a = aa[583]; break;
    case 16:a = aa[607]; break;
    default: a = 0; break;
  }; 
  return a;
}

uint18_t get_data27(int offset, uint18_t aa[ROWS*COLS])
{
  #pragma HLS inline
  uint18_t a;

  switch (offset)
  {
    case 0: a = aa[36 ]; break;
    case 1: a = aa[91 ]; break;
    case 2: a = aa[98 ]; break;
    case 3: a = aa[107]; break;
    case 4: a = aa[176]; break;
    case 5: a = aa[202]; break;
    case 6: a = aa[278]; break;
    case 7: a = aa[467]; break;
    case 8: a = aa[482]; break;
    case 9: a = aa[546]; break;
    case 10:a = aa[556]; break;
    case 11:a = aa[569]; break;
    case 12:a = aa[592]; break;
    case 13:a = aa[620]; break;
    default: a = 0; break;
  }; return a;
}

void get_all_data(uint18_t output[12], uint10_t addr_list[12], uint18_t aa[ROWS*COLS])
{
  
  #pragma HLS inline
  #pragma HLS interface ap_stable port=aa

  uint5_t bank[12];
  #pragma HLS array_partition variable=bank complete dim=0
  uint5_t offset[12];
  #pragma HLS array_partition variable=offset complete dim=0
  uint5_t offset_for_banks[28];
  #pragma HLS array_partition variable=offset_for_banks complete dim=0
  uint18_t data_from_banks[28];
  #pragma HLS array_partition variable=data_from_banks complete dim=0
  
COMPUTE_BANK_AND_OFFSET:
  for (int i = 0; i < 12; i ++ )
  {
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=2
       
    bank[i] = get_bank(addr_list[i]);
    offset[i] = get_offset(addr_list[i]);
  }

ASSIGN_OFFSET_FOR_BANKS:
  for (int i = 0; i < 28; i ++ )
  {
#pragma HLS PIPELINE 
#pragma HLS UNROLL factor=2
    
    offset_for_banks[i] = (bank[ 0] == i) ? offset[ 0] :
                          (bank[ 1] == i) ? offset[ 1] :
                          (bank[ 2] == i) ? offset[ 2] :
                          (bank[ 3] == i) ? offset[ 3] :
                          (bank[ 4] == i) ? offset[ 4] :
                          (bank[ 5] == i) ? offset[ 5] :
                          (bank[ 6] == i) ? offset[ 6] :
                          (bank[ 7] == i) ? offset[ 7] :
                          (bank[ 8] == i) ? offset[ 8] :
                          (bank[ 9] == i) ? offset[ 9] :
                          (bank[10] == i) ? offset[10] :
                          (bank[11] == i) ? offset[11] :
                          uint5_t("0",10);

  }

READ_ALL_BANKS:
  data_from_banks[ 0] =  get_data0 (offset_for_banks[ 0], aa);
  data_from_banks[ 1] =  get_data1 (offset_for_banks[ 1], aa);
  data_from_banks[ 2] =  get_data2 (offset_for_banks[ 2], aa);
  data_from_banks[ 3] =  get_data3 (offset_for_banks[ 3], aa);
  data_from_banks[ 4] =  get_data4 (offset_for_banks[ 4], aa);
  data_from_banks[ 5] =  get_data5 (offset_for_banks[ 5], aa);
  data_from_banks[ 6] =  get_data6 (offset_for_banks[ 6], aa);
  data_from_banks[ 7] =  get_data7 (offset_for_banks[ 7], aa);
  data_from_banks[ 8] =  get_data8 (offset_for_banks[ 8], aa);
  data_from_banks[ 9] =  get_data9 (offset_for_banks[ 9], aa);
  data_from_banks[10] =  get_data10(offset_for_banks[10], aa);
  data_from_banks[11] =  get_data11(offset_for_banks[11], aa);
  data_from_banks[12] =  get_data12(offset_for_banks[12], aa);
  data_from_banks[13] =  get_data13(offset_for_banks[13], aa);
  data_from_banks[14] =  get_data14(offset_for_banks[14], aa);
  data_from_banks[15] =  get_data15(offset_for_banks[15], aa);
  data_from_banks[16] =  get_data16(offset_for_banks[16], aa);
  data_from_banks[17] =  get_data17(offset_for_banks[17], aa);
  data_from_banks[18] =  get_data18(offset_for_banks[18], aa);
  data_from_banks[19] =  get_data19(offset_for_banks[19], aa);
  data_from_banks[20] =  get_data20(offset_for_banks[20], aa);
  data_from_banks[21] =  get_data21(offset_for_banks[21], aa);
  data_from_banks[22] =  get_data22(offset_for_banks[22], aa);
  data_from_banks[23] =  get_data23(offset_for_banks[23], aa);
  data_from_banks[24] =  get_data24(offset_for_banks[24], aa);
  data_from_banks[25] =  get_data25(offset_for_banks[25], aa);
  data_from_banks[26] =  get_data26(offset_for_banks[26], aa);
  data_from_banks[27] =  get_data27(offset_for_banks[27], aa);

CHOOSE_DATA:
  for (int i = 0; i < 12; i ++ )
  {
#pragma HLS PIPELINE 
#pragma HLS UNROLL factor=2
    
    output[i] = data_from_banks[bank[i]];
  }

}

int classifier0( int_II II[WINDOW_SIZE][WINDOW_SIZE], int stddev ){
  static int coord[12];
  #pragma HLS array_partition variable=coord complete dim=0

  int sum0, sum1, sum2, final_sum;
  int return_value;
  coord[0] = II[4][6];
  coord[1] = II[4][18];
  coord[2] = II[13][6];
  coord[3] = II[13][18];

  coord[4] = II[7][6];
  coord[5] = II[7][18];
  coord[6] = II[10][6];
  coord[7] = II[10][18];

  coord[8] = 0;
  coord[9] = 0;
  coord[10] = 0;
  coord[11] = 0;

  sum0 = (coord[0] - coord[1] - coord[2] + coord[3]) * -4096;
  sum1 = (coord[4] - coord[5] - coord[6] + coord[7]) * 12288;
  sum2 = (coord[8] - coord[9] - coord[10] + coord[11]) * 0;
  final_sum = sum0 + sum1 + sum2;

  if(final_sum >= (-129 * stddev))
     return_value = -567;
  else
     return_value = 534;
  return return_value;
}
int classifier1( int_II II[WINDOW_SIZE][WINDOW_SIZE], int stddev ){
  static int coord[12];
  #pragma HLS array_partition variable=coord complete dim=0

  int sum0, sum1, sum2, final_sum;
  int return_value;
  coord[0] = II[4][6];
  coord[1] = II[4][18];
  coord[2] = II[11][6];
  coord[3] = II[11][18];

  coord[4] = II[4][10];
  coord[5] = II[4][14];
  coord[6] = II[11][10];
  coord[7] = II[11][14];

  coord[8] = 0;
  coord[9] = 0;
  coord[10] = 0;
  coord[11] = 0;

  sum0 = (coord[0] - coord[1] - coord[2] + coord[3]) * -4096;
  sum1 = (coord[4] - coord[5] - coord[6] + coord[7]) * 12288;
  sum2 = (coord[8] - coord[9] - coord[10] + coord[11]) * 0;
  final_sum = sum0 + sum1 + sum2;

  if(final_sum >= (50 * stddev))
     return_value = 339;
  else
     return_value = -477;
  return return_value;
}
int classifier2( int_II II[WINDOW_SIZE][WINDOW_SIZE], int stddev ){
  static int coord[12];
  #pragma HLS array_partition variable=coord complete dim=0

  int sum0, sum1, sum2, final_sum;
  int return_value;
  coord[0] = II[9][3];
  coord[1] = II[9][21];
  coord[2] = II[18][3];
  coord[3] = II[18][21];

  coord[4] = II[12][3];
  coord[5] = II[12][21];
  coord[6] = II[15][3];
  coord[7] = II[15][21];

  coord[8] = 0;
  coord[9] = 0;
  coord[10] = 0;
  coord[11] = 0;

  sum0 = (coord[0] - coord[1] - coord[2] + coord[3]) * -4096;
  sum1 = (coord[4] - coord[5] - coord[6] + coord[7]) * 12288;
  sum2 = (coord[8] - coord[9] - coord[10] + coord[11]) * 0;
  final_sum = sum0 + sum1 + sum2;

  if(final_sum >= (89 * stddev))
     return_value = 272;
  else
     return_value = -386;
  return return_value;
}
int classifier3( int_II II[WINDOW_SIZE][WINDOW_SIZE], int stddev ){
  static int coord[12];
  #pragma HLS array_partition variable=coord complete dim=0

  int sum0, sum1, sum2, final_sum;
  int return_value;
  coord[0] = II[18][8];
  coord[1] = II[18][17];
  coord[2] = II[24][8];
  coord[3] = II[24][17];

  coord[4] = II[20][8];
  coord[5] = II[20][17];
  coord[6] = II[22][8];
  coord[7] = II[22][17];

  coord[8] = 0;
  coord[9] = 0;
  coord[10] = 0;
  coord[11] = 0;

  sum0 = (coord[0] - coord[1] - coord[2] + coord[3]) * -4096;
  sum1 = (coord[4] - coord[5] - coord[6] + coord[7]) * 12288;
  sum2 = (coord[8] - coord[9] - coord[10] + coord[11]) * 0;
  final_sum = sum0 + sum1 + sum2;

  if(final_sum >= (23 * stddev))
     return_value = 301;
  else
     return_value = -223;
  return return_value;
}
int classifier4( int_II II[WINDOW_SIZE][WINDOW_SIZE], int stddev ){
  static int coord[12];
  #pragma HLS array_partition variable=coord complete dim=0

  int sum0, sum1, sum2, final_sum;
  int return_value;
  coord[0] = II[5][3];
  coord[1] = II[5][7];
  coord[2] = II[24][3];
  coord[3] = II[24][7];

  coord[4] = II[5][5];
  coord[5] = II[5][7];
  coord[6] = II[24][5];
  coord[7] = II[24][7];

  coord[8] = 0;
  coord[9] = 0;
  coord[10] = 0;
  coord[11] = 0;

  sum0 = (coord[0] - coord[1] - coord[2] + coord[3]) * -4096;
  sum1 = (coord[4] - coord[5] - coord[6] + coord[7]) * 8192;
  sum2 = (coord[8] - coord[9] - coord[10] + coord[11]) * 0;
  final_sum = sum0 + sum1 + sum2;

  if(final_sum >= (61 * stddev))
     return_value = 322;
  else
     return_value = -199;
  return return_value;
}
int classifier5( int_II II[WINDOW_SIZE][WINDOW_SIZE], int stddev ){
  static int coord[12];
  #pragma HLS array_partition variable=coord complete dim=0

  int sum0, sum1, sum2, final_sum;
  int return_value;
  coord[0] = II[5][6];
  coord[1] = II[5][18];
  coord[2] = II[21][6];
  coord[3] = II[21][18];

  coord[4] = II[13][6];
  coord[5] = II[13][18];
  coord[6] = II[21][6];
  coord[7] = II[21][18];

  coord[8] = 0;
  coord[9] = 0;
  coord[10] = 0;
  coord[11] = 0;

  sum0 = (coord[0] - coord[1] - coord[2] + coord[3]) * -4096;
  sum1 = (coord[4] - coord[5] - coord[6] + coord[7]) * 8192;
  sum2 = (coord[8] - coord[9] - coord[10] + coord[11]) * 0;
  final_sum = sum0 + sum1 + sum2;

  if(final_sum >= (407 * stddev))
     return_value = -479;
  else
     return_value = 142;
  return return_value;
}
int classifier6( int_II II[WINDOW_SIZE][WINDOW_SIZE], int stddev ){
  static int coord[12];
  #pragma HLS array_partition variable=coord complete dim=0

  int sum0, sum1, sum2, final_sum;
  int return_value;
  coord[0] = II[8][5];
  coord[1] = II[8][17];
  coord[2] = II[14][5];
  coord[3] = II[14][17];

  coord[4] = II[11][5];
  coord[5] = II[11][17];
  coord[6] = II[14][5];
  coord[7] = II[14][17];

  coord[8] = 0;
  coord[9] = 0;
  coord[10] = 0;
  coord[11] = 0;

  sum0 = (coord[0] - coord[1] - coord[2] + coord[3]) * -4096;
  sum1 = (coord[4] - coord[5] - coord[6] + coord[7]) * 8192;
  sum2 = (coord[8] - coord[9] - coord[10] + coord[11]) * 0;
  final_sum = sum0 + sum1 + sum2;

  if(final_sum >= (11 * stddev))
     return_value = 112;
  else
     return_value = -432;
  return return_value;
}
int classifier7( int_II II[WINDOW_SIZE][WINDOW_SIZE], int stddev ){
  static int coord[12];
  #pragma HLS array_partition variable=coord complete dim=0

  int sum0, sum1, sum2, final_sum;
  int return_value;
  coord[0] = II[14][11];
  coord[1] = II[14][15];
  coord[2] = II[24][11];
  coord[3] = II[24][15];

  coord[4] = II[19][11];
  coord[5] = II[19][15];
  coord[6] = II[24][11];
  coord[7] = II[24][15];

  coord[8] = 0;
  coord[9] = 0;
  coord[10] = 0;
  coord[11] = 0;

  sum0 = (coord[0] - coord[1] - coord[2] + coord[3]) * -4096;
  sum1 = (coord[4] - coord[5] - coord[6] + coord[7]) * 8192;
  sum2 = (coord[8] - coord[9] - coord[10] + coord[11]) * 0;
  final_sum = sum0 + sum1 + sum2;

  if(final_sum >= (-77 * stddev))
     return_value = 113;
  else
     return_value = -378;
  return return_value;
}
int classifier8( int_II II[WINDOW_SIZE][WINDOW_SIZE], int stddev ){
  static int coord[12];
  #pragma HLS array_partition variable=coord complete dim=0

  int sum0, sum1, sum2, final_sum;
  int return_value;
  coord[0] = II[0][4];
  coord[1] = II[0][11];
  coord[2] = II[6][4];
  coord[3] = II[6][11];

  coord[4] = II[3][4];
  coord[5] = II[3][11];
  coord[6] = II[6][4];
  coord[7] = II[6][11];

  coord[8] = 0;
  coord[9] = 0;
  coord[10] = 0;
  coord[11] = 0;

  sum0 = (coord[0] - coord[1] - coord[2] + coord[3]) * -4096;
  sum1 = (coord[4] - coord[5] - coord[6] + coord[7]) * 8192;
  sum2 = (coord[8] - coord[9] - coord[10] + coord[11]) * 0;
  final_sum = sum0 + sum1 + sum2;

  if(final_sum >= (24 * stddev))
     return_value = 218;
  else
     return_value = -219;
  return return_value;
}

int classifier9( int_II II[WINDOW_SIZE][WINDOW_SIZE], int stddev ){
  static int coord[12];
  #pragma HLS array_partition variable=coord complete dim=0

  int sum0, sum1, sum2, final_sum;
  int return_value;
  coord[0] = II[6][6];
  coord[1] = II[6][18];
  coord[2] = II[12][6];
  coord[3] = II[12][18];

  coord[4] = II[8][6];
  coord[5] = II[8][18];
  coord[6] = II[10][6];
  coord[7] = II[10][18];

  coord[8] = 0;
  coord[9] = 0;
  coord[10] = 0;
  coord[11] = 0;

  sum0 = (coord[0] - coord[1] - coord[2] + coord[3]) * -4096;
  sum1 = (coord[4] - coord[5] - coord[6] + coord[7]) * 12288;
  sum2 = (coord[8] - coord[9] - coord[10] + coord[11]) * 0;
  final_sum = sum0 + sum1 + sum2;

  if(final_sum >= (-86 * stddev))
     return_value = -402;
  else
     return_value = 318;
  return return_value;
}
int classifier10( int_II II[WINDOW_SIZE][WINDOW_SIZE], int stddev ){
  static int coord[12];
  #pragma HLS array_partition variable=coord complete dim=0

  int sum0, sum1, sum2, final_sum;
  int return_value;
  coord[0] = II[4][6];
  coord[1] = II[4][18];
  coord[2] = II[11][6];
  coord[3] = II[11][18];

  coord[4] = II[4][10];
  coord[5] = II[4][14];
  coord[6] = II[11][10];
  coord[7] = II[11][14];

  coord[8] = 0;
  coord[9] = 0;
  coord[10] = 0;
  coord[11] = 0;

  sum0 = (coord[0] - coord[1] - coord[2] + coord[3]) * -4096;
  sum1 = (coord[4] - coord[5] - coord[6] + coord[7]) * 12288;
  sum2 = (coord[8] - coord[9] - coord[10] + coord[11]) * 0;
  final_sum = sum0 + sum1 + sum2;

  if(final_sum >= (83 * stddev))
     return_value = 302;
  else
     return_value = -414;
  return return_value;
}
int classifier11( int_II II[WINDOW_SIZE][WINDOW_SIZE], int stddev ){
  static int coord[12];
  #pragma HLS array_partition variable=coord complete dim=0

  int sum0, sum1, sum2, final_sum;
  int return_value;
  coord[0] = II[8][1];
  coord[1] = II[8][20];
  coord[2] = II[20][1];
  coord[3] = II[20][20];

  coord[4] = II[12][1];
  coord[5] = II[12][20];
  coord[6] = II[16][1];
  coord[7] = II[16][20];

  coord[8] = 0;
  coord[9] = 0;
  coord[10] = 0;
  coord[11] = 0;

  sum0 = (coord[0] - coord[1] - coord[2] + coord[3]) * -4096;
  sum1 = (coord[4] - coord[5] - coord[6] + coord[7]) * 12288;
  sum2 = (coord[8] - coord[9] - coord[10] + coord[11]) * 0;
  final_sum = sum0 + sum1 + sum2;

  if(final_sum >= (87 * stddev))
     return_value = 179;
  else
     return_value = -497;
  return return_value;
}
int classifier12( int_II II[WINDOW_SIZE][WINDOW_SIZE], int stddev ){
  static int coord[12];
  #pragma HLS array_partition variable=coord complete dim=0

  int sum0, sum1, sum2, final_sum;
  int return_value;
  coord[0] = II[2][0];
  coord[1] = II[2][24];
  coord[2] = II[5][0];
  coord[3] = II[5][24];

  coord[4] = II[2][8];
  coord[5] = II[2][16];
  coord[6] = II[5][8];
  coord[7] = II[5][16];

  coord[8] = 0;
  coord[9] = 0;
  coord[10] = 0;
  coord[11] = 0;

  sum0 = (coord[0] - coord[1] - coord[2] + coord[3]) * -4096;
  sum1 = (coord[4] - coord[5] - coord[6] + coord[7]) * 12288;
  sum2 = (coord[8] - coord[9] - coord[10] + coord[11]) * 0;
  final_sum = sum0 + sum1 + sum2;

  if(final_sum >= (375 * stddev))
     return_value = 442;
  else
     return_value = -142;
  return return_value;
}
int classifier13( int_II II[WINDOW_SIZE][WINDOW_SIZE], int stddev ){
  static int coord[12];
  #pragma HLS array_partition variable=coord complete dim=0

  int sum0, sum1, sum2, final_sum;
  int return_value;
  coord[0] = II[9][9];
  coord[1] = II[9][15];
  coord[2] = II[24][9];
  coord[3] = II[24][15];

  coord[4] = II[14][9];
  coord[5] = II[14][15];
  coord[6] = II[19][9];
  coord[7] = II[19][15];

  coord[8] = 0;
  coord[9] = 0;
  coord[10] = 0;
  coord[11] = 0;

  sum0 = (coord[0] - coord[1] - coord[2] + coord[3]) * -4096;
  sum1 = (coord[4] - coord[5] - coord[6] + coord[7]) * 12288;
  sum2 = (coord[8] - coord[9] - coord[10] + coord[11]) * 0;
  final_sum = sum0 + sum1 + sum2;

  if(final_sum >= (148 * stddev))
     return_value = -558;
  else
     return_value = 68;
  return return_value;
}
int classifier14( int_II II[WINDOW_SIZE][WINDOW_SIZE], int stddev ){
  static int coord[12];
  #pragma HLS array_partition variable=coord complete dim=0

  int sum0, sum1, sum2, final_sum;
  int return_value;
  coord[0] = II[6][5];
  coord[1] = II[6][19];
  coord[2] = II[16][5];
  coord[3] = II[16][19];

  coord[4] = II[11][5];
  coord[5] = II[11][19];
  coord[6] = II[16][5];
  coord[7] = II[16][19];

  coord[8] = 0;
  coord[9] = 0;
  coord[10] = 0;
  coord[11] = 0;

  sum0 = (coord[0] - coord[1] - coord[2] + coord[3]) * -4096;
  sum1 = (coord[4] - coord[5] - coord[6] + coord[7]) * 8192;
  sum2 = (coord[8] - coord[9] - coord[10] + coord[11]) * 0;
  final_sum = sum0 + sum1 + sum2;

  if(final_sum >= (-78 * stddev))
     return_value = 116;
  else
     return_value = -684;
  return return_value;
}
int classifier15( int_II II[WINDOW_SIZE][WINDOW_SIZE], int stddev ){
  static int coord[12];
  #pragma HLS array_partition variable=coord complete dim=0

  int sum0, sum1, sum2, final_sum;
  int return_value;
  coord[0] = II[0][5];
  coord[1] = II[0][19];
  coord[2] = II[9][5];
  coord[3] = II[9][19];

  coord[4] = II[3][5];
  coord[5] = II[3][19];
  coord[6] = II[6][5];
  coord[7] = II[6][19];

  coord[8] = 0;
  coord[9] = 0;
  coord[10] = 0;
  coord[11] = 0;

  sum0 = (coord[0] - coord[1] - coord[2] + coord[3]) * -4096;
  sum1 = (coord[4] - coord[5] - coord[6] + coord[7]) * 12288;
  sum2 = (coord[8] - coord[9] - coord[10] + coord[11]) * 0;
  final_sum = sum0 + sum1 + sum2;

  if(final_sum >= (33 * stddev))
     return_value = 137;
  else
     return_value = -277;
  return return_value;
}
int classifier16( int_II II[WINDOW_SIZE][WINDOW_SIZE], int stddev ){
  static int coord[12];
  #pragma HLS array_partition variable=coord complete dim=0

  int sum0, sum1, sum2, final_sum;
  int return_value;
  coord[0] = II[11][13];
  coord[1] = II[11][22];
  coord[2] = II[17][13];
  coord[3] = II[17][22];

  coord[4] = II[11][16];
  coord[5] = II[11][19];
  coord[6] = II[17][16];
  coord[7] = II[17][19];

  coord[8] = 0;
  coord[9] = 0;
  coord[10] = 0;
  coord[11] = 0;

  sum0 = (coord[0] - coord[1] - coord[2] + coord[3]) * -4096;
  sum1 = (coord[4] - coord[5] - coord[6] + coord[7]) * 12288;
  sum2 = (coord[8] - coord[9] - coord[10] + coord[11]) * 0;
  final_sum = sum0 + sum1 + sum2;

  if(final_sum >= (75 * stddev))
     return_value = 238;
  else
     return_value = -90;
  return return_value;
}
int classifier17( int_II II[WINDOW_SIZE][WINDOW_SIZE], int stddev ){
  static int coord[12];
  #pragma HLS array_partition variable=coord complete dim=0

  int sum0, sum1, sum2, final_sum;
  int return_value;
  coord[0] = II[5][7];
  coord[1] = II[5][13];
  coord[2] = II[15][7];
  coord[3] = II[15][13];

  coord[4] = II[5][9];
  coord[5] = II[5][11];
  coord[6] = II[15][9];
  coord[7] = II[15][11];

  coord[8] = 0;
  coord[9] = 0;
  coord[10] = 0;
  coord[11] = 0;

  sum0 = (coord[0] - coord[1] - coord[2] + coord[3]) * -4096;
  sum1 = (coord[4] - coord[5] - coord[6] + coord[7]) * 12288;
  sum2 = (coord[8] - coord[9] - coord[10] + coord[11]) * 0;
  final_sum = sum0 + sum1 + sum2;

  if(final_sum >= (-28 * stddev))
     return_value = -169;
  else
     return_value = 237;
  return return_value;
}
int classifier18( int_II II[WINDOW_SIZE][WINDOW_SIZE], int stddev ){
  static int coord[12];
  #pragma HLS array_partition variable=coord complete dim=0

  int sum0, sum1, sum2, final_sum;
  int return_value;
  coord[0] = II[8][10];
  coord[1] = II[8][16];
  coord[2] = II[18][10];
  coord[3] = II[18][16];

  coord[4] = II[8][12];
  coord[5] = II[8][14];
  coord[6] = II[18][12];
  coord[7] = II[18][14];

  coord[8] = 0;
  coord[9] = 0;
  coord[10] = 0;
  coord[11] = 0;

  sum0 = (coord[0] - coord[1] - coord[2] + coord[3]) * -4096;
  sum1 = (coord[4] - coord[5] - coord[6] + coord[7]) * 12288;
  sum2 = (coord[8] - coord[9] - coord[10] + coord[11]) * 0;
  final_sum = sum0 + sum1 + sum2;

  if(final_sum >= (-40 * stddev))
     return_value = -76;
  else
     return_value = 296;
  return return_value;
}
int classifier19( int_II II[WINDOW_SIZE][WINDOW_SIZE], int stddev ){
  static int coord[12];
  #pragma HLS array_partition variable=coord complete dim=0

  int sum0, sum1, sum2, final_sum;
  int return_value;
  coord[0] = II[5][2];
  coord[1] = II[5][6];
  coord[2] = II[14][2];
  coord[3] = II[14][6];

  coord[4] = II[5][4];
  coord[5] = II[5][6];
  coord[6] = II[14][4];
  coord[7] = II[14][6];

  coord[8] = 0;
  coord[9] = 0;
  coord[10] = 0;
  coord[11] = 0;

  sum0 = (coord[0] - coord[1] - coord[2] + coord[3]) * -4096;
  sum1 = (coord[4] - coord[5] - coord[6] + coord[7]) * 8192;
  sum2 = (coord[8] - coord[9] - coord[10] + coord[11]) * 0;
  final_sum = sum0 + sum1 + sum2;

  if(final_sum >= (64 * stddev))
     return_value = 347;
  else
     return_value = -107;
  return return_value;
}
int classifier20( int_II II[WINDOW_SIZE][WINDOW_SIZE], int stddev ){
  static int coord[12];
  #pragma HLS array_partition variable=coord complete dim=0

  int sum0, sum1, sum2, final_sum;
  int return_value;
  coord[0] = II[0][18];
  coord[1] = II[0][24];
  coord[2] = II[11][18];
  coord[3] = II[11][24];

  coord[4] = II[0][20];
  coord[5] = II[0][22];
  coord[6] = II[11][20];
  coord[7] = II[11][22];

  coord[8] = 0;
  coord[9] = 0;
  coord[10] = 0;
  coord[11] = 0;

  sum0 = (coord[0] - coord[1] - coord[2] + coord[3]) * -4096;
  sum1 = (coord[4] - coord[5] - coord[6] + coord[7]) * 12288;
  sum2 = (coord[8] - coord[9] - coord[10] + coord[11]) * 0;
  final_sum = sum0 + sum1 + sum2;

  if(final_sum >= (-84 * stddev))
     return_value = -50;
  else
     return_value = 373;
  return return_value;
}
int classifier21( int_II II[WINDOW_SIZE][WINDOW_SIZE], int stddev ){
  static int coord[12];
  #pragma HLS array_partition variable=coord complete dim=0

  int sum0, sum1, sum2, final_sum;
  int return_value;
  coord[0] = II[6][0];
  coord[1] = II[6][24];
  coord[2] = II[19][0];
  coord[3] = II[19][24];

  coord[4] = II[6][8];
  coord[5] = II[6][16];
  coord[6] = II[19][8];
  coord[7] = II[19][16];

  coord[8] = 0;
  coord[9] = 0;
  coord[10] = 0;
  coord[11] = 0;

  sum0 = (coord[0] - coord[1] - coord[2] + coord[3]) * -4096;
  sum1 = (coord[4] - coord[5] - coord[6] + coord[7]) * 12288;
  sum2 = (coord[8] - coord[9] - coord[10] + coord[11]) * 0;
  final_sum = sum0 + sum1 + sum2;

  if(final_sum >= (-563 * stddev))
     return_value = -135;
  else
     return_value = 286;
  return return_value;
}
int classifier22( int_II II[WINDOW_SIZE][WINDOW_SIZE], int stddev ){
  static int coord[12];
  #pragma HLS array_partition variable=coord complete dim=0

  int sum0, sum1, sum2, final_sum;
  int return_value;
  coord[0] = II[6][9];
  coord[1] = II[6][15];
  coord[2] = II[15][9];
  coord[3] = II[15][15];

  coord[4] = II[6][11];
  coord[5] = II[6][13];
  coord[6] = II[15][11];
  coord[7] = II[15][13];

  coord[8] = 0;
  coord[9] = 0;
  coord[10] = 0;
  coord[11] = 0;

  sum0 = (coord[0] - coord[1] - coord[2] + coord[3]) * -4096;
  sum1 = (coord[4] - coord[5] - coord[6] + coord[7]) * 12288;
  sum2 = (coord[8] - coord[9] - coord[10] + coord[11]) * 0;
  final_sum = sum0 + sum1 + sum2;

  if(final_sum >= (58 * stddev))
     return_value = 292;
  else
     return_value = -89;
  return return_value;
}
int classifier23( int_II II[WINDOW_SIZE][WINDOW_SIZE], int stddev ){
  static int coord[12];
  #pragma HLS array_partition variable=coord complete dim=0

  int sum0, sum1, sum2, final_sum;
  int return_value;
  coord[0] = II[18][7];
  coord[1] = II[18][17];
  coord[2] = II[24][7];
  coord[3] = II[24][17];

  coord[4] = II[20][7];
  coord[5] = II[20][17];
  coord[6] = II[22][7];
  coord[7] = II[22][17];

  coord[8] = 0;
  coord[9] = 0;
  coord[10] = 0;
  coord[11] = 0;

  sum0 = (coord[0] - coord[1] - coord[2] + coord[3]) * -4096;
  sum1 = (coord[4] - coord[5] - coord[6] + coord[7]) * 12288;
  sum2 = (coord[8] - coord[9] - coord[10] + coord[11]) * 0;
  final_sum = sum0 + sum1 + sum2;

  if(final_sum >= (41 * stddev))
     return_value = 197;
  else
     return_value = -155;
  return return_value;
}
int classifier24( int_II II[WINDOW_SIZE][WINDOW_SIZE], int stddev ){
  static int coord[12];
  #pragma HLS array_partition variable=coord complete dim=0

  int sum0, sum1, sum2, final_sum;
  int return_value;
  coord[0] = II[7][5];
  coord[1] = II[7][19];
  coord[2] = II[19][5];
  coord[3] = II[19][19];

  coord[4] = II[13][5];
  coord[5] = II[13][19];
  coord[6] = II[19][5];
  coord[7] = II[19][19];

  coord[8] = 0;
  coord[9] = 0;
  coord[10] = 0;
  coord[11] = 0;

  sum0 = (coord[0] - coord[1] - coord[2] + coord[3]) * -4096;
  sum1 = (coord[4] - coord[5] - coord[6] + coord[7]) * 8192;
  sum2 = (coord[8] - coord[9] - coord[10] + coord[11]) * 0;
  final_sum = sum0 + sum1 + sum2;

  if(final_sum >= (374 * stddev))
     return_value = -387;
  else
     return_value = 99;
  return return_value;
}
int classifier25( int_II II[WINDOW_SIZE][WINDOW_SIZE], int stddev ){
  static int coord[12];
  #pragma HLS array_partition variable=coord complete dim=0

  int sum0, sum1, sum2, final_sum;
  int return_value;
  coord[0] = II[3][0];
  coord[1] = II[3][24];
  coord[2] = II[6][0];
  coord[3] = II[6][24];

  coord[4] = II[3][8];
  coord[5] = II[3][16];
  coord[6] = II[6][8];
  coord[7] = II[6][16];

  coord[8] = 0;
  coord[9] = 0;
  coord[10] = 0;
  coord[11] = 0;

  sum0 = (coord[0] - coord[1] - coord[2] + coord[3]) * -4096;
  sum1 = (coord[4] - coord[5] - coord[6] + coord[7]) * 12288;
  sum2 = (coord[8] - coord[9] - coord[10] + coord[11]) * 0;
  final_sum = sum0 + sum1 + sum2;

  if(final_sum >= (285 * stddev))
     return_value = 375;
  else
     return_value = -259;
  return return_value;
}
int classifier26( int_II II[WINDOW_SIZE][WINDOW_SIZE], int stddev ){
  static int coord[12];
  #pragma HLS array_partition variable=coord complete dim=0

  int sum0, sum1, sum2, final_sum;
  int return_value;
  coord[0] = II[8][5];
  coord[1] = II[8][20];
  coord[2] = II[14][5];
  coord[3] = II[14][20];

  coord[4] = II[11][5];
  coord[5] = II[11][20];
  coord[6] = II[14][5];
  coord[7] = II[14][20];

  coord[8] = 0;
  coord[9] = 0;
  coord[10] = 0;
  coord[11] = 0;

  sum0 = (coord[0] - coord[1] - coord[2] + coord[3]) * -4096;
  sum1 = (coord[4] - coord[5] - coord[6] + coord[7]) * 8192;
  sum2 = (coord[8] - coord[9] - coord[10] + coord[11]) * 0;
  final_sum = sum0 + sum1 + sum2;

  if(final_sum >= (129 * stddev))
     return_value = 256;
  else
     return_value = -421;
  return return_value;
}
int classifier27( int_II II[WINDOW_SIZE][WINDOW_SIZE], int stddev ){
  static int coord[12];
  #pragma HLS array_partition variable=coord complete dim=0

  int sum0, sum1, sum2, final_sum;
  int return_value;
  coord[0] = II[6][9];
  coord[1] = II[6][14];
  coord[2] = II[20][9];
  coord[3] = II[20][14];

  coord[4] = II[13][9];
  coord[5] = II[13][14];
  coord[6] = II[20][9];
  coord[7] = II[20][14];

  coord[8] = 0;
  coord[9] = 0;
  coord[10] = 0;
  coord[11] = 0;

  sum0 = (coord[0] - coord[1] - coord[2] + coord[3]) * -4096;
  sum1 = (coord[4] - coord[5] - coord[6] + coord[7]) * 8192;
  sum2 = (coord[8] - coord[9] - coord[10] + coord[11]) * 0;
  final_sum = sum0 + sum1 + sum2;

  if(final_sum >= (58 * stddev))
     return_value = -408;
  else
     return_value = 118;
  return return_value;
}
int classifier28( int_II II[WINDOW_SIZE][WINDOW_SIZE], int stddev ){
  static int coord[12];
  #pragma HLS array_partition variable=coord complete dim=0

  int sum0, sum1, sum2, final_sum;
  int return_value;
  coord[0] = II[5][9];
  coord[1] = II[5][15];
  coord[2] = II[15][9];
  coord[3] = II[15][15];

  coord[4] = II[5][11];
  coord[5] = II[5][13];
  coord[6] = II[15][11];
  coord[7] = II[15][13];

  coord[8] = 0;
  coord[9] = 0;
  coord[10] = 0;
  coord[11] = 0;

  sum0 = (coord[0] - coord[1] - coord[2] + coord[3]) * -4096;
  sum1 = (coord[4] - coord[5] - coord[6] + coord[7]) * 12288;
  sum2 = (coord[8] - coord[9] - coord[10] + coord[11]) * 0;
  final_sum = sum0 + sum1 + sum2;

  if(final_sum >= (59 * stddev))
     return_value = 212;
  else
     return_value = -167;
  return return_value;
}
int classifier29( int_II II[WINDOW_SIZE][WINDOW_SIZE], int stddev ){
  static int coord[12];
  #pragma HLS array_partition variable=coord complete dim=0

  int sum0, sum1, sum2, final_sum;
  int return_value;
  coord[0] = II[6][6];
  coord[1] = II[6][9];
  coord[2] = II[18][6];
  coord[3] = II[18][9];

  coord[4] = II[12][6];
  coord[5] = II[12][9];
  coord[6] = II[18][6];
  coord[7] = II[18][9];

  coord[8] = 0;
  coord[9] = 0;
  coord[10] = 0;
  coord[11] = 0;

  sum0 = (coord[0] - coord[1] - coord[2] + coord[3]) * -4096;
  sum1 = (coord[4] - coord[5] - coord[6] + coord[7]) * 8192;
  sum2 = (coord[8] - coord[9] - coord[10] + coord[11]) * 0;
  final_sum = sum0 + sum1 + sum2;

  if(final_sum >= (-12 * stddev))
     return_value = 108;
  else
     return_value = -357;
  return return_value;
}
int classifier30( int_II II[WINDOW_SIZE][WINDOW_SIZE], int stddev ){
  static int coord[12];
  #pragma HLS array_partition variable=coord complete dim=0

  int sum0, sum1, sum2, final_sum;
  int return_value;
  coord[0] = II[21][3];
  coord[1] = II[21][21];
  coord[2] = II[24][3];
  coord[3] = II[24][21];

  coord[4] = II[21][9];
  coord[5] = II[21][15];
  coord[6] = II[24][9];
  coord[7] = II[24][15];

  coord[8] = 0;
  coord[9] = 0;
  coord[10] = 0;
  coord[11] = 0;

  sum0 = (coord[0] - coord[1] - coord[2] + coord[3]) * -4096;
  sum1 = (coord[4] - coord[5] - coord[6] + coord[7]) * 12288;
  sum2 = (coord[8] - coord[9] - coord[10] + coord[11]) * 0;
  final_sum = sum0 + sum1 + sum2;

  if(final_sum >= (134 * stddev))
     return_value = 269;
  else
     return_value = -129;
  return return_value;
}
int classifier31( int_II II[WINDOW_SIZE][WINDOW_SIZE], int stddev ){
  static int coord[12];
  #pragma HLS array_partition variable=coord complete dim=0

  int sum0, sum1, sum2, final_sum;
  int return_value;
  coord[0] = II[6][5];
  coord[1] = II[6][18];
  coord[2] = II[12][5];
  coord[3] = II[12][18];

  coord[4] = II[8][5];
  coord[5] = II[8][18];
  coord[6] = II[10][5];
  coord[7] = II[10][18];

  coord[8] = 0;
  coord[9] = 0;
  coord[10] = 0;
  coord[11] = 0;

  sum0 = (coord[0] - coord[1] - coord[2] + coord[3]) * -4096;
  sum1 = (coord[4] - coord[5] - coord[6] + coord[7]) * 12288;
  sum2 = (coord[8] - coord[9] - coord[10] + coord[11]) * 0;
  final_sum = sum0 + sum1 + sum2;

  if(final_sum >= (-29 * stddev))
     return_value = -344;
  else
     return_value = 93;
  return return_value;
}
int classifier32( int_II II[WINDOW_SIZE][WINDOW_SIZE], int stddev ){
  static int coord[12];
  #pragma HLS array_partition variable=coord complete dim=0

  int sum0, sum1, sum2, final_sum;
  int return_value;
  coord[0] = II[1][18];
  coord[1] = II[1][24];
  coord[2] = II[16][18];
  coord[3] = II[16][24];

  coord[4] = II[1][18];
  coord[5] = II[1][21];
  coord[6] = II[16][18];
  coord[7] = II[16][21];

  coord[8] = 0;
  coord[9] = 0;
  coord[10] = 0;
  coord[11] = 0;

  sum0 = (coord[0] - coord[1] - coord[2] + coord[3]) * -4096;
  sum1 = (coord[4] - coord[5] - coord[6] + coord[7]) * 8192;
  sum2 = (coord[8] - coord[9] - coord[10] + coord[11]) * 0;
  final_sum = sum0 + sum1 + sum2;

  if(final_sum >= (206 * stddev))
     return_value = 371;
  else
     return_value = -77;
  return return_value;
}
int classifier33( int_II II[WINDOW_SIZE][WINDOW_SIZE], int stddev ){
  static int coord[12];
  #pragma HLS array_partition variable=coord complete dim=0

  int sum0, sum1, sum2, final_sum;
  int return_value;
  coord[0] = II[1][1];
  coord[1] = II[1][7];
  coord[2] = II[16][1];
  coord[3] = II[16][7];

  coord[4] = II[1][4];
  coord[5] = II[1][7];
  coord[6] = II[16][4];
  coord[7] = II[16][7];

  coord[8] = 0;
  coord[9] = 0;
  coord[10] = 0;
  coord[11] = 0;

  sum0 = (coord[0] - coord[1] - coord[2] + coord[3]) * -4096;
  sum1 = (coord[4] - coord[5] - coord[6] + coord[7]) * 8192;
  sum2 = (coord[8] - coord[9] - coord[10] + coord[11]) * 0;
  final_sum = sum0 + sum1 + sum2;

  if(final_sum >= (192 * stddev))
     return_value = 310;
  else
     return_value = -103;
  return return_value;
}
int classifier34( int_II II[WINDOW_SIZE][WINDOW_SIZE], int stddev ){
  static int coord[12];
  #pragma HLS array_partition variable=coord complete dim=0

  int sum0, sum1, sum2, final_sum;
  int return_value;
  coord[0] = II[8][0];
  coord[1] = II[8][24];
  coord[2] = II[23][0];
  coord[3] = II[23][24];

  coord[4] = II[8][8];
  coord[5] = II[8][16];
  coord[6] = II[23][8];
  coord[7] = II[23][16];

  coord[8] = 0;
  coord[9] = 0;
  coord[10] = 0;
  coord[11] = 0;

  sum0 = (coord[0] - coord[1] - coord[2] + coord[3]) * -4096;
  sum1 = (coord[4] - coord[5] - coord[6] + coord[7]) * 12288;
  sum2 = (coord[8] - coord[9] - coord[10] + coord[11]) * 0;
  final_sum = sum0 + sum1 + sum2;

  if(final_sum >= (-284 * stddev))
     return_value = -117;
  else
     return_value = 269;
  return return_value;
}
int classifier35( int_II II[WINDOW_SIZE][WINDOW_SIZE], int stddev ){
  static int coord[12];
  #pragma HLS array_partition variable=coord complete dim=0

  int sum0, sum1, sum2, final_sum;
  int return_value;
  coord[0] = II[6][5];
  coord[1] = II[6][19];
  coord[2] = II[18][5];
  coord[3] = II[18][19];

  coord[4] = II[6][5];
  coord[5] = II[6][12];
  coord[6] = II[12][5];
  coord[7] = II[12][12];

  coord[8] = II[12][12];
  coord[9] = II[12][19];
  coord[10] = II[18][12];
  coord[11] = II[18][19];

  sum0 = (coord[0] - coord[1] - coord[2] + coord[3]) * -4096;
  sum1 = (coord[4] - coord[5] - coord[6] + coord[7]) * 8192;
  sum2 = (coord[8] - coord[9] - coord[10] + coord[11]) * 8192;
  final_sum = sum0 + sum1 + sum2;

  if(final_sum >= (-200 * stddev))
     return_value = 39;
  else
     return_value = -416;
  return return_value;
}
int classifier36( int_II II[WINDOW_SIZE][WINDOW_SIZE], int stddev ){
  static int coord[12];
  #pragma HLS array_partition variable=coord complete dim=0

  int sum0, sum1, sum2, final_sum;
  int return_value;
  coord[0] = II[12][2];
  coord[1] = II[12][23];
  coord[2] = II[24][2];
  coord[3] = II[24][23];

  coord[4] = II[16][2];
  coord[5] = II[16][23];
  coord[6] = II[20][2];
  coord[7] = II[20][23];

  coord[8] = 0;
  coord[9] = 0;
  coord[10] = 0;
  coord[11] = 0;

  sum0 = (coord[0] - coord[1] - coord[2] + coord[3]) * -4096;
  sum1 = (coord[4] - coord[5] - coord[6] + coord[7]) * 12288;
  sum2 = (coord[8] - coord[9] - coord[10] + coord[11]) * 0;
  final_sum = sum0 + sum1 + sum2;

  if(final_sum >= (347 * stddev))
     return_value = -400;
  else
     return_value = 72;
  return return_value;
}
int classifier37( int_II II[WINDOW_SIZE][WINDOW_SIZE], int stddev ){
  static int coord[12];
  #pragma HLS array_partition variable=coord complete dim=0

  int sum0, sum1, sum2, final_sum;
  int return_value;
  coord[0] = II[1][8];
  coord[1] = II[1][12];
  coord[2] = II[11][8];
  coord[3] = II[11][12];

  coord[4] = II[1][10];
  coord[5] = II[1][12];
  coord[6] = II[11][10];
  coord[7] = II[11][12];

  coord[8] = 0;
  coord[9] = 0;
  coord[10] = 0;
  coord[11] = 0;

  sum0 = (coord[0] - coord[1] - coord[2] + coord[3]) * -4096;
  sum1 = (coord[4] - coord[5] - coord[6] + coord[7]) * 8192;
  sum2 = (coord[8] - coord[9] - coord[10] + coord[11]) * 0;
  final_sum = sum0 + sum1 + sum2;

  if(final_sum >= (-7 * stddev))
     return_value = 59;
  else
     return_value = -259;
  return return_value;
}
int classifier38( int_II II[WINDOW_SIZE][WINDOW_SIZE], int stddev ){
  static int coord[12];
  #pragma HLS array_partition variable=coord complete dim=0

  int sum0, sum1, sum2, final_sum;
  int return_value;
  coord[0] = II[13][2];
  coord[1] = II[13][22];
  coord[2] = II[23][2];
  coord[3] = II[23][22];

  coord[4] = II[13][2];
  coord[5] = II[13][12];
  coord[6] = II[23][2];
  coord[7] = II[23][12];

  coord[8] = 0;
  coord[9] = 0;
  coord[10] = 0;
  coord[11] = 0;

  sum0 = (coord[0] - coord[1] - coord[2] + coord[3]) * -4096;
  sum1 = (coord[4] - coord[5] - coord[6] + coord[7]) * 8192;
  sum2 = (coord[8] - coord[9] - coord[10] + coord[11]) * 0;
  final_sum = sum0 + sum1 + sum2;

  if(final_sum >= (473 * stddev))
     return_value = 327;
  else
     return_value = -42;
  return return_value;
}
int classifier39( int_II II[WINDOW_SIZE][WINDOW_SIZE], int stddev ){
  static int coord[12];
  #pragma HLS array_partition variable=coord complete dim=0

  int sum0, sum1, sum2, final_sum;
  int return_value;
  coord[0] = II[1][0];
  coord[1] = II[1][6];
  coord[2] = II[14][0];
  coord[3] = II[14][6];

  coord[4] = II[1][2];
  coord[5] = II[1][4];
  coord[6] = II[14][2];
  coord[7] = II[14][4];

  coord[8] = 0;
  coord[9] = 0;
  coord[10] = 0;
  coord[11] = 0;

  sum0 = (coord[0] - coord[1] - coord[2] + coord[3]) * -4096;
  sum1 = (coord[4] - coord[5] - coord[6] + coord[7]) * 12288;
  sum2 = (coord[8] - coord[9] - coord[10] + coord[11]) * 0;
  final_sum = sum0 + sum1 + sum2;

  if(final_sum >= (-210 * stddev))
     return_value = -77;
  else
     return_value = 388;
  return return_value;
}
int classifier40( int_II II[WINDOW_SIZE][WINDOW_SIZE], int stddev ){
  static int coord[12];
  #pragma HLS array_partition variable=coord complete dim=0

  int sum0, sum1, sum2, final_sum;
  int return_value;
  coord[0] = II[2][20];
  coord[1] = II[2][24];
  coord[2] = II[15][20];
  coord[3] = II[15][24];

  coord[4] = II[2][20];
  coord[5] = II[2][22];
  coord[6] = II[15][20];
  coord[7] = II[15][22];

  coord[8] = 0;
  coord[9] = 0;
  coord[10] = 0;
  coord[11] = 0;

  sum0 = (coord[0] - coord[1] - coord[2] + coord[3]) * -4096;
  sum1 = (coord[4] - coord[5] - coord[6] + coord[7]) * 8192;
  sum2 = (coord[8] - coord[9] - coord[10] + coord[11]) * 0;
  final_sum = sum0 + sum1 + sum2;

  if(final_sum >= (-174 * stddev))
     return_value = -13;
  else
     return_value = 451;
  return return_value;
}
int classifier41( int_II II[WINDOW_SIZE][WINDOW_SIZE], int stddev ){
  static int coord[12];
  #pragma HLS array_partition variable=coord complete dim=0

  int sum0, sum1, sum2, final_sum;
  int return_value;
  coord[0] = II[5][0];
  coord[1] = II[5][22];
  coord[2] = II[24][0];
  coord[3] = II[24][22];

  coord[4] = II[5][11];
  coord[5] = II[5][22];
  coord[6] = II[24][11];
  coord[7] = II[24][22];

  coord[8] = 0;
  coord[9] = 0;
  coord[10] = 0;
  coord[11] = 0;

  sum0 = (coord[0] - coord[1] - coord[2] + coord[3]) * -4096;
  sum1 = (coord[4] - coord[5] - coord[6] + coord[7]) * 8192;
  sum2 = (coord[8] - coord[9] - coord[10] + coord[11]) * 0;
  final_sum = sum0 + sum1 + sum2;

  if(final_sum >= (1522 * stddev))
     return_value = 393;
  else
     return_value = -80;
  return return_value;
}
int classifier42( int_II II[WINDOW_SIZE][WINDOW_SIZE], int stddev ){
  static int coord[12];
  #pragma HLS array_partition variable=coord complete dim=0

  int sum0, sum1, sum2, final_sum;
  int return_value;
  coord[0] = II[4][18];
  coord[1] = II[4][24];
  coord[2] = II[13][18];
  coord[3] = II[13][24];

  coord[4] = II[4][20];
  coord[5] = II[4][22];
  coord[6] = II[13][20];
  coord[7] = II[13][22];

  coord[8] = 0;
  coord[9] = 0;
  coord[10] = 0;
  coord[11] = 0;

  sum0 = (coord[0] - coord[1] - coord[2] + coord[3]) * -4096;
  sum1 = (coord[4] - coord[5] - coord[6] + coord[7]) * 12288;
  sum2 = (coord[8] - coord[9] - coord[10] + coord[11]) * 0;
  final_sum = sum0 + sum1 + sum2;

  if(final_sum >= (79 * stddev))
     return_value = 239;
  else
     return_value = -25;
  return return_value;
}
int classifier43( int_II II[WINDOW_SIZE][WINDOW_SIZE], int stddev ){
  static int coord[12];
  #pragma HLS array_partition variable=coord complete dim=0

  int sum0, sum1, sum2, final_sum;
  int return_value;
  coord[0] = II[3][0];
  coord[1] = II[3][6];
  coord[2] = II[14][0];
  coord[3] = II[14][6];

  coord[4] = II[3][2];
  coord[5] = II[3][4];
  coord[6] = II[14][2];
  coord[7] = II[14][4];

  coord[8] = 0;
  coord[9] = 0;
  coord[10] = 0;
  coord[11] = 0;

  sum0 = (coord[0] - coord[1] - coord[2] + coord[3]) * -4096;
  sum1 = (coord[4] - coord[5] - coord[6] + coord[7]) * 12288;
  sum2 = (coord[8] - coord[9] - coord[10] + coord[11]) * 0;
  final_sum = sum0 + sum1 + sum2;

  if(final_sum >= (71 * stddev))
     return_value = 246;
  else
     return_value = -103;
  return return_value;
}
int classifier44( int_II II[WINDOW_SIZE][WINDOW_SIZE], int stddev ){
  static int coord[12];
  #pragma HLS array_partition variable=coord complete dim=0

  int sum0, sum1, sum2, final_sum;
  int return_value;
  coord[0] = II[1][12];
  coord[1] = II[1][16];
  coord[2] = II[10][12];
  coord[3] = II[10][16];

  coord[4] = II[1][12];
  coord[5] = II[1][14];
  coord[6] = II[10][12];
  coord[7] = II[10][14];

  coord[8] = 0;
  coord[9] = 0;
  coord[10] = 0;
  coord[11] = 0;

  sum0 = (coord[0] - coord[1] - coord[2] + coord[3]) * -4096;
  sum1 = (coord[4] - coord[5] - coord[6] + coord[7]) * 8192;
  sum2 = (coord[8] - coord[9] - coord[10] + coord[11]) * 0;
  final_sum = sum0 + sum1 + sum2;

  if(final_sum >= (162 * stddev))
     return_value = -757;
  else
     return_value = 43;
  return return_value;
}
int classifier45( int_II II[WINDOW_SIZE][WINDOW_SIZE], int stddev ){
  static int coord[12];
  #pragma HLS array_partition variable=coord complete dim=0

  int sum0, sum1, sum2, final_sum;
  int return_value;
  coord[0] = II[6][0];
  coord[1] = II[6][19];
  coord[2] = II[9][0];
  coord[3] = II[9][19];

  coord[4] = II[7][0];
  coord[5] = II[7][19];
  coord[6] = II[8][0];
  coord[7] = II[8][19];

  coord[8] = 0;
  coord[9] = 0;
  coord[10] = 0;
  coord[11] = 0;

  sum0 = (coord[0] - coord[1] - coord[2] + coord[3]) * -4096;
  sum1 = (coord[4] - coord[5] - coord[6] + coord[7]) * 12288;
  sum2 = (coord[8] - coord[9] - coord[10] + coord[11]) * 0;
  final_sum = sum0 + sum1 + sum2;

  if(final_sum >= (-37 * stddev))
     return_value = -112;
  else
     return_value = 227;
  return return_value;
}
int classifier46( int_II II[WINDOW_SIZE][WINDOW_SIZE], int stddev ){
  static int coord[12];
  #pragma HLS array_partition variable=coord complete dim=0

  int sum0, sum1, sum2, final_sum;
  int return_value;
  coord[0] = II[1][12];
  coord[1] = II[1][16];
  coord[2] = II[10][12];
  coord[3] = II[10][16];

  coord[4] = II[1][12];
  coord[5] = II[1][14];
  coord[6] = II[10][12];
  coord[7] = II[10][14];

  coord[8] = 0;
  coord[9] = 0;
  coord[10] = 0;
  coord[11] = 0;

  sum0 = (coord[0] - coord[1] - coord[2] + coord[3]) * -4096;
  sum1 = (coord[4] - coord[5] - coord[6] + coord[7]) * 8192;
  sum2 = (coord[8] - coord[9] - coord[10] + coord[11]) * 0;
  final_sum = sum0 + sum1 + sum2;

  if(final_sum >= (7 * stddev))
     return_value = 102;
  else
     return_value = -95;
  return return_value;
}
int classifier47( int_II II[WINDOW_SIZE][WINDOW_SIZE], int stddev ){
  static int coord[12];
  #pragma HLS array_partition variable=coord complete dim=0

  int sum0, sum1, sum2, final_sum;
  int return_value;
  coord[0] = II[1][8];
  coord[1] = II[1][12];
  coord[2] = II[10][8];
  coord[3] = II[10][12];

  coord[4] = II[1][10];
  coord[5] = II[1][12];
  coord[6] = II[10][10];
  coord[7] = II[10][12];

  coord[8] = 0;
  coord[9] = 0;
  coord[10] = 0;
  coord[11] = 0;

  sum0 = (coord[0] - coord[1] - coord[2] + coord[3]) * -4096;
  sum1 = (coord[4] - coord[5] - coord[6] + coord[7]) * 8192;
  sum2 = (coord[8] - coord[9] - coord[10] + coord[11]) * 0;
  final_sum = sum0 + sum1 + sum2;

  if(final_sum >= (123 * stddev))
     return_value = -677;
  else
     return_value = 16;
  return return_value;
}
int classifier48( int_II II[WINDOW_SIZE][WINDOW_SIZE], int stddev ){
  static int coord[12];
  #pragma HLS array_partition variable=coord complete dim=0

  int sum0, sum1, sum2, final_sum;
  int return_value;
  coord[0] = II[5][5];
  coord[1] = II[5][19];
  coord[2] = II[19][5];
  coord[3] = II[19][19];

  coord[4] = II[5][12];
  coord[5] = II[5][19];
  coord[6] = II[12][12];
  coord[7] = II[12][19];

  coord[8] = II[12][5];
  coord[9] = II[12][12];
  coord[10] = II[19][5];
  coord[11] = II[19][12];

  sum0 = (coord[0] - coord[1] - coord[2] + coord[3]) * -4096;
  sum1 = (coord[4] - coord[5] - coord[6] + coord[7]) * 8192;
  sum2 = (coord[8] - coord[9] - coord[10] + coord[11]) * 8192;
  final_sum = sum0 + sum1 + sum2;

  if(final_sum >= (-322 * stddev))
     return_value = 72;
  else
     return_value = -447;
  return return_value;
}
int classifier49( int_II II[WINDOW_SIZE][WINDOW_SIZE], int stddev ){
  static int coord[12];
  #pragma HLS array_partition variable=coord complete dim=0

  int sum0, sum1, sum2, final_sum;
  int return_value;
  coord[0] = II[10][1];
  coord[1] = II[10][19];
  coord[2] = II[12][1];
  coord[3] = II[12][19];

  coord[4] = II[11][1];
  coord[5] = II[11][19];
  coord[6] = II[12][1];
  coord[7] = II[12][19];

  coord[8] = 0;
  coord[9] = 0;
  coord[10] = 0;
  coord[11] = 0;

  sum0 = (coord[0] - coord[1] - coord[2] + coord[3]) * -4096;
  sum1 = (coord[4] - coord[5] - coord[6] + coord[7]) * 8192;
  sum2 = (coord[8] - coord[9] - coord[10] + coord[11]) * 0;
  final_sum = sum0 + sum1 + sum2;

  if(final_sum >= (8 * stddev))
     return_value = 59;
  else
     return_value = -240;
  return return_value;
}
int classifier50( int_II II[WINDOW_SIZE][WINDOW_SIZE], int stddev ){
  static int coord[12];
  #pragma HLS array_partition variable=coord complete dim=0

  int sum0, sum1, sum2, final_sum;
  int return_value;
  coord[0] = II[13][17];
  coord[1] = II[13][21];
  coord[2] = II[24][17];
  coord[3] = II[24][21];

  coord[4] = II[13][17];
  coord[5] = II[13][19];
  coord[6] = II[24][17];
  coord[7] = II[24][19];

  coord[8] = 0;
  coord[9] = 0;
  coord[10] = 0;
  coord[11] = 0;

  sum0 = (coord[0] - coord[1] - coord[2] + coord[3]) * -4096;
  sum1 = (coord[4] - coord[5] - coord[6] + coord[7]) * 8192;
  sum2 = (coord[8] - coord[9] - coord[10] + coord[11]) * 0;
  final_sum = sum0 + sum1 + sum2;

  if(final_sum >= (110 * stddev))
     return_value = 275;
  else
     return_value = -13;
  return return_value;
}
int classifier51( int_II II[WINDOW_SIZE][WINDOW_SIZE], int stddev ){
  static int coord[12];
  #pragma HLS array_partition variable=coord complete dim=0

  int sum0, sum1, sum2, final_sum;
  int return_value;
  coord[0] = II[4][0];
  coord[1] = II[4][6];
  coord[2] = II[13][0];
  coord[3] = II[13][6];

  coord[4] = II[7][0];
  coord[5] = II[7][6];
  coord[6] = II[10][0];
  coord[7] = II[10][6];

  coord[8] = 0;
  coord[9] = 0;
  coord[10] = 0;
  coord[11] = 0;

  sum0 = (coord[0] - coord[1] - coord[2] + coord[3]) * -4096;
  sum1 = (coord[4] - coord[5] - coord[6] + coord[7]) * 12288;
  sum2 = (coord[8] - coord[9] - coord[10] + coord[11]) * 0;
  final_sum = sum0 + sum1 + sum2;

  if(final_sum >= (-184 * stddev))
     return_value = 25;
  else
     return_value = -468;
  return return_value;
}

/****************************************************************************************/
/* FUNCTION DECLARATIONS
****************************************************************************************/
void imageScaler        ( int src_height,
			  int src_width,
                          unsigned char Data[IMAGE_HEIGHT][IMAGE_WIDTH],
                          int dest_height,
			  int dest_width,
                          unsigned char IMG1_data[IMAGE_HEIGHT][IMAGE_WIDTH] 
                        );

void processImage       ( float _factor,
                          int sum_row,
                          int sum_col,
                          int *AllCandidates_x,
                          int *AllCandidates_y,
                          int *AllCandidates_w,
                          int *AllCandidates_h,
                          int *AllCandidates_size,
                          unsigned char IMG1_data[IMAGE_HEIGHT][IMAGE_WIDTH],
                          MySize winSize
                        );

int cascadeClassifier   ( MyPoint pt,
                          int_II II[WINDOW_SIZE][WINDOW_SIZE],
                          int_SII SII[SQ_SIZE][SQ_SIZE] 
                        );

int weakClassifier      ( int stddev,
                          uint18_t coord[12],
                          int haar_counter,
                          int w_id                      
                        );

void groupRectangles    ( MyRect *rectList, 
                          int *rectList_size, 
                          int groupThreshold, 
                          float eps
                        );

unsigned int int_sqrt   ( ap_uint<32> value
                        );

inline  int  myRound ( float value )
{
  return (int)(value + (value >= 0 ? 0.5 : -0.5));
}

//========================================================================================
// TOP LEVEL MODULE OR DUT (DEVICE UNDER TEST) 
//========================================================================================

void face_detect

( 
  unsigned char inData[IMAGE_WIDTH],
  int result_x[RESULT_SIZE],
  int result_y[RESULT_SIZE],
  int result_w[RESULT_SIZE],
  int result_h[RESULT_SIZE],
  int *result_size
)

{
#pragma HLS ARRAY_PARTITION variable=result_h type=cyclic dim=1 factor=1
#pragma HLS ARRAY_PARTITION variable=result_w type=cyclic dim=1 factor=8
#pragma HLS ARRAY_PARTITION variable=result_y type=cyclic dim=1 factor=2
#pragma HLS ARRAY_PARTITION variable=result_x type=cyclic dim=1 factor=2
  static unsigned char Data[IMAGE_HEIGHT][IMAGE_WIDTH];
  int i, j;

  int result_x_Scale[RESULT_SIZE];
  int result_y_Scale[RESULT_SIZE];
  int result_w_Scale[RESULT_SIZE];
  int result_h_Scale[RESULT_SIZE];
  int res_size_Scale = 0;
  int *result_size_Scale = &res_size_Scale;

  static int counter = 0;
  if ( counter < IMAGE_HEIGHT){
    for( j = 0; j < IMAGE_WIDTH; j++){
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
         Data[counter][j] = inData[j];
    }
    counter++;
    if ( counter < IMAGE_HEIGHT ){
      for ( i = 0; i < RESULT_SIZE; i++){ 
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
        result_x[i] = 0;
        result_y[i] = 0;
        result_w[i] = 0;
        result_h[i] = 0;
      }
      *result_size = 0; 
      return ;
    }
  }

  counter = 0;
  *result_size = 0;
    
  float  scaleFactor = 1.2;

  unsigned char IMG1_data[IMAGE_HEIGHT][IMAGE_WIDTH];  

  int height, width;   
  float factor;

  MySize winSize0;
  winSize0.width = 24;
  winSize0.height= 24;

  factor = scaleFactor ;

  L1: 
  while ( IMAGE_WIDTH/factor > WINDOW_SIZE && IMAGE_HEIGHT/factor > WINDOW_SIZE )
  {

    /* size of the image scaled up */
    MySize winSize = { myRound(winSize0.width*factor), myRound(winSize0.height*factor) };
    /* size of the image scaled down (from bigger to smaller) */
    MySize sz = { (int)( IMAGE_WIDTH/factor ), (int)( IMAGE_HEIGHT/factor ) };

    height = sz.height;
    width  = sz.width;
     
    imageScaler	    ( IMAGE_HEIGHT,
		      IMAGE_WIDTH,
                      Data, 
                      height,
		      width,
                      IMG1_data
                    ); 
   
  
    processImage       ( factor, 
                         height, //200
                         width, //266
                         result_x_Scale,
                         result_y_Scale,
                         result_w_Scale,
                         result_h_Scale,
                         result_size_Scale,
                         IMG1_data,
                         winSize
                       ); 
    factor *= scaleFactor;
  } /* end of the factor loop, finish all scales in pyramid*/

   for ( i = 0; i < RESULT_SIZE; i++){
#pragma HLS PIPELINE 
#pragma HLS UNROLL factor=2
      result_x[i] = result_x_Scale[i];
      result_y[i] = result_y_Scale[i];
      result_w[i] = result_w_Scale[i];
      result_h[i] = result_h_Scale[i];
   }
   *result_size = *result_size_Scale;
}

void processImage 

( float factor,
  int sum_row,
  int sum_col, 
  int *AllCandidates_x,
  int *AllCandidates_y,
  int *AllCandidates_w,
  int *AllCandidates_h,
  int *AllCandidates_size, 
  unsigned char IMG1_data[IMAGE_HEIGHT][IMAGE_WIDTH], 
  MySize winSize
)
{
  #pragma HLS inline off
  MyPoint p;
  int result;
  int step;
 
  int u,v;
  int x,y,i,j,k;

  /** Image Line buffer ( 24 BRAMs ) */ 
  unsigned char L[WINDOW_SIZE-1][IMAGE_WIDTH];
  #pragma HLS array_partition variable=L complete dim=1

  /** Image Window buffer ( 1250 registers )*/
  static int_I I[WINDOW_SIZE][2*WINDOW_SIZE];
  #pragma HLS array_partition variable=I complete dim=0

  /** Integral Image Window buffer ( 625 registers )*/
  static int_II II[WINDOW_SIZE][WINDOW_SIZE];
  #pragma HLS array_partition variable=II complete dim=0
  
  /** Square Image Window buffer ( 1250 registers ) **/
  static int_SI SI[WINDOW_SIZE][2*WINDOW_SIZE];
  #pragma HLS array_partition variable=SI complete dim=0

  /** Square Integral Image Window buffer ( 625 registers )*/
  static int_SII SII[SQ_SIZE][SQ_SIZE];
  #pragma HLS array_partition variable=SII complete dim=0

  
  Initialize0u : 
  for ( u = 0; u < WINDOW_SIZE; u++ ){
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=2
  
    Initailize0v:
    for ( v = 0; v < WINDOW_SIZE; v++ ){
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=4
    
      II[u][v] = 0;
    }
  }

  SII[0][0] = 0;
  SII[0][1] = 0;
  SII[1][0] = 0;
  SII[1][1] = 0;
  

  Initialize1i:
  for ( i = 0; i < WINDOW_SIZE ; i++ ){
#pragma HLS PIPELINE 
#pragma HLS UNROLL factor=2
  
    Initialize1j:
    for ( j = 0; j < 2*WINDOW_SIZE; j++ ){
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=4
    
      I[i][j] = 0;
      SI[i][j] = 0;
    }
  }
  
  
  Initialize2y :
  for ( y = 0; y < WINDOW_SIZE-1; y++ ){
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=2
  
    Initialize2x :
    for ( x = 0; x < IMAGE_WIDTH ; x++){//IMAGE_WIDTH; x++ ){
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=4
      L[y][x] = 0;
    }
  }
 

  int element_counter = 0;
  int x_index = 0;
  int y_index = 0;
  int ii, jj;

  /** Loop over each point in the Image ( scaled ) **/
  Pixely: for( y = 0; y < sum_row; y++ ){
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
  #pragma HLS loop_tripcount min=200 max=200
    Pixelx : for ( x = 0; x < sum_col; x++ ){
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
      #pragma HLS loop_tripcount min=266 max=266

      /* Updates for Integral Image Window Buffer (I) */
      SetIIu: for ( u = 0; u < WINDOW_SIZE; u++){
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=4

        SetIIj: for ( v = 0; v < WINDOW_SIZE; v++ ){
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=4

          II[u][v] = II[u][v] + ( I[u][v+1] - I[u][0] );
        }
      }
      
      /* Updates for Square Image Window Buffer (SI) */
      SII[0][0] = SII[0][0] + ( SI[0][1] - SI[0][0] );
      SII[0][1] = SII[0][1] + ( SI[0][WINDOW_SIZE] - SI[0][0] );
      SII[1][0] = SII[1][0] + ( SI[WINDOW_SIZE-1][1] - SI[WINDOW_SIZE-1][0] );
      SII[1][1] = SII[1][1] + ( SI[WINDOW_SIZE-1][WINDOW_SIZE] - SI[WINDOW_SIZE-1][0] );
      
      /* Updates for Image Window Buffer (I) and Square Image Window Bufer (SI) */
      SetIj: for( j = 0; j < 2*WINDOW_SIZE-1; j++){
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=8
      
        SetIi: for( i = 0; i < WINDOW_SIZE; i++ ){
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=2
        
          if( i+j != 2*WINDOW_SIZE-1 ){
            I[i][j] = I[i][j+1];
            SI[i][j] = SI[i][j+1];
          }
          else if ( i > 0 ){
            I[i][j] = I[i][j+1] + I[i-1][j+1];
            SI[i][j] = SI[i][j+1] + SI[i-1][j+1];
          }
        }
      }
      /** Last column of the I[][] matrix **/
      Ilast: for( i = 0; i < WINDOW_SIZE-1; i++ ){
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
      
        I[i][2*WINDOW_SIZE-1] = L[i][x];
        SI[i][2*WINDOW_SIZE-1] = L[i][x]*L[i][x];
      }
      I[WINDOW_SIZE-1][2*WINDOW_SIZE-1] = IMG1_data[y][x];
      SI[WINDOW_SIZE-1][2*WINDOW_SIZE-1] = IMG1_data[y][x]*IMG1_data[y][x];

      /** Updates for Image Line Buffer (L) **/
      LineBuf: for( k = 0; k < WINDOW_SIZE-2; k++ ){
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=2
      
        L[k][x] = L[k+1][x];
      }
      L[WINDOW_SIZE-2][x] = IMG1_data[y][x];

      /* Pass the Integral Image Window buffer through Cascaded Classifier. Only pass
       * when the integral image window buffer has flushed out the initial garbage data */
      if ( element_counter >= ( ( (WINDOW_SIZE-1)*sum_col + WINDOW_SIZE ) + WINDOW_SIZE -1 ) ) {

	 /* Sliding Window should not go beyond the boundary */
         if ( x_index < ( sum_col - (WINDOW_SIZE-1) ) && y_index < ( sum_row - (WINDOW_SIZE-1) ) ){
            p.x = x_index;
            p.y = y_index;
            
            result = cascadeClassifier ( p,
                                         II,
                                         SII
                                       );

           if ( result > 0 )
           {
             MyRect r = {myRound(p.x*factor), myRound(p.y*factor), winSize.width, winSize.height};
             AllCandidates_x[*AllCandidates_size]=r.x;
             AllCandidates_y[*AllCandidates_size]=r.y;
             AllCandidates_w[*AllCandidates_size]=r.width;
             AllCandidates_h[*AllCandidates_size]=r.height;
            *AllCandidates_size=*AllCandidates_size+1;
           }
         }// inner if
         if ( x_index < sum_col-1 )
             x_index = x_index + 1;
         else{ 
             x_index = 0;
             y_index = y_index + 1;
         }
       } // outer if
       element_counter +=1;
    }   
  } 
   
}

int cascadeClassifier 
(  
  MyPoint pt, 
  int_II II[WINDOW_SIZE][WINDOW_SIZE],
  int_SII SII[SQ_SIZE][SQ_SIZE]
) 

{
  #pragma HLS INLINE

  int i, j, k;

  int mean;
  int stddev = 0;
  int haar_counter = 0;
  int w_index = 0;
  int r_index = 0;
  int stage_sum=0;

  /* The rectangle co-ordinagte values for all the classifiers */
  #include "haar_dataRcc_with_partitioning.h"
 
  static uint18_t coord[12];
  #pragma HLS array_partition variable=coord complete dim=0

  static int s0[9];
  #pragma HLS array_partition variable=s0 complete dim=0

  static int s1[16];
  #pragma HLS array_partition variable=s1 complete dim=0

  static int s2[27];
  #pragma HLS array_partition variable=s2 complete dim=0

  /* Banking */

  /* 12 (x,y,w,h) values corresponding to 3 rectangles that need to be read */
  uint18_t values[12];
  #pragma HLS array_partition variable=values complete dim=0

  /* location/address of those 12 values in the 25 X 25 window */
  uint10_t addr_list[12];
  #pragma HLS array_partition variable=addr_list complete dim=0

  /* among the 12 values which of them are needed to be read from the 25 X 25 window */
  bit enable_list[12] = {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1};
  #pragma HLS array_partition variable=enable_list complete dim=0  
  
  uint18_t _II[WINDOW_SIZE*WINDOW_SIZE];
  #pragma HLS array_partition variable=_II complete dim=0

  COPY_LOOP1: for (int i = 0; i < WINDOW_SIZE; i ++ ){
#pragma HLS PIPELINE 
#pragma HLS UNROLL factor=4
    
    COPY_LOOP2: for (int j = 0; j < WINDOW_SIZE; j ++ ){
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=8
      
      _II[i*25+j] = II[i][j];
    }
  }

  stddev =                    SII[0][0]
                           -  SII[0][SQ_SIZE- 1]
                           -  SII[SQ_SIZE-1][0] 
                           +  SII[SQ_SIZE-1][SQ_SIZE-1]; 

  mean =                      II[0][0]
                           -  II[0][WINDOW_SIZE - 1]
                           -  II[WINDOW_SIZE - 1][0] 
                           +  II[WINDOW_SIZE - 1][WINDOW_SIZE - 1];
      
  stddev = (stddev*(WINDOW_SIZE-1)*(WINDOW_SIZE-1));
  stddev =  stddev - mean*mean; 
  
  if( stddev > 0 )
    stddev = int_sqrt(stddev);  
  else
    stddev = 1;

  MyRect tr0,tr1,tr2;
  
  int r_id;
  int w_id;
  int s;

  /* Hard-Coding Classifier 0 */
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

  /* Hard-Coding Classifier 1 */
  stage_sum = 0;
  s1[0] = classifier9( II, stddev );
  s1[1] = classifier10( II, stddev );
  s1[2] = classifier11( II, stddev );
  s1[3] = classifier12( II, stddev );
  s1[4] = classifier13( II, stddev );
  s1[5] = classifier14( II, stddev );
  s1[6] = classifier15( II, stddev );
  s1[7] = classifier16( II, stddev );
  s1[8] = classifier17( II, stddev );
  s1[9] = classifier18( II, stddev );
  s1[10] = classifier19( II, stddev );
  s1[11] = classifier20( II, stddev );
  s1[12] = classifier21( II, stddev );
  s1[13] = classifier22( II, stddev );
  s1[14] = classifier23( II, stddev );
  s1[15] = classifier24( II, stddev );

  stage_sum = s1[0] + s1[1] + s1[2] + s1[3] + s1[4] + s1[5] + s1[6] + s1[7];
  stage_sum+= s1[8] + s1[9] + s1[10] + s1[11] + s1[12] + s1[13] + s1[14] + s1[15];

  if( stage_sum < 0.4*stages_thresh_array[1] )
    return -1;
  
  haar_counter += 16;

  /* Hard-Coding Classifier 2 */
  stage_sum = 0;
  s2[0] = classifier25( II, stddev );
  s2[1] = classifier26( II, stddev );
  s2[2] = classifier27( II, stddev );
  s2[3] = classifier28( II, stddev );
  s2[4] = classifier29( II, stddev );
  s2[5] = classifier30( II, stddev );
  s2[6] = classifier31( II, stddev );
  s2[7] = classifier32( II, stddev );
  s2[8] = classifier33( II, stddev );
  s2[9] = classifier34( II, stddev );
  s2[10] = classifier35( II, stddev );
  s2[11] = classifier36( II, stddev );
  s2[12] = classifier37( II, stddev );
  s2[13] = classifier38( II, stddev );
  s2[14] = classifier39( II, stddev );
  s2[15] = classifier40( II, stddev );
  s2[16] = classifier41( II, stddev );
  s2[17] = classifier42( II, stddev );
  s2[18] = classifier43( II, stddev );
  s2[19] = classifier44( II, stddev );
  s2[20] = classifier45( II, stddev );
  s2[21] = classifier46( II, stddev );
  s2[22] = classifier47( II, stddev );
  s2[23] = classifier48( II, stddev );
  s2[24] = classifier49( II, stddev );
  s2[25] = classifier50( II, stddev );
  s2[26] = classifier51( II, stddev );

  stage_sum = s2[0] + s2[1] + s2[2] + s2[3] + s2[4] + s2[5] + s2[6] + s2[7];
  stage_sum+= s2[8] + s2[9] + s2[10] + s2[11] + s2[12] + s2[13] + s2[14] + s2[15];
  stage_sum+= s2[16] + s2[17] + s2[18] + s2[19] + s2[20] + s2[21] + s2[22] + s2[23];
  stage_sum+= s2[24] + s2[25] + s2[26];

  if( stage_sum < 0.4*stages_thresh_array[2] )
    return -1;
  
  haar_counter += 27;

 /******************************************/
 // REST 23 STAGES
 /*****************************************/

  Stages: for ( i = 3; i < 25; i++ ){
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
    Filters: for ( j = 0; j < stages_array[i] ; j++ ){
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=1
    #pragma HLS loop_tripcount min=8 max=32

      if ( j == 0 ) {
        stage_sum = 0; s=0;
      } 
    
      r_id = r_index;
      w_id = w_index;

      tr0.x = rectangles_array0[haar_counter];
      tr0.width = rectangles_array2[haar_counter];
      tr0.y = rectangles_array1[haar_counter];
      tr0.height = rectangles_array3[haar_counter];
   
      tr1.x = rectangles_array4[haar_counter];
      tr1.width = rectangles_array6[haar_counter];
      tr1.y = rectangles_array5[haar_counter];
      tr1.height = rectangles_array7[haar_counter];
    
      tr2.x = rectangles_array8[haar_counter];
      tr2.width = rectangles_array10[haar_counter];
      tr2.y = rectangles_array9[haar_counter];
      tr2.height = rectangles_array11[haar_counter];

      /* Calculates addresses/locations of all the 12 co-ordinates */
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
        
        /* Read the values corresponding to the 12 locations from _II which is the copy of integral image window */
        get_all_data(values, addr_list, _II);
 
  	for ( k = 0; k < 12; k++ ){
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=4
	  if ( enable_list[k] == 0 )
            coord[k] = 0;
 	  else 
	    coord[k] = values[k];
        }

        s = weakClassifier      ( stddev, 
                                  coord,
                                  haar_counter,
                                  w_id				 
                                );
          
        stage_sum = stage_sum + s;
        haar_counter = haar_counter+1;
        w_index = w_index+3;
        r_index = r_index+12;
     
    } /* end of j loop */
    if( stage_sum < 0.4*stages_thresh_array[i] ){
       return -i;
    }
  } /* end of i loop */

 return 1;
}
 
int weakClassifier
(
  int stddev,
  uint18_t coord[12],  
  int haar_counter,
  int w_id 
)
{
  /* weights and threshold values for various classifiers */
                                                                                             
  #include "haar_dataEWC_with_partitioning.h"
  # pragma HLS INLINE

  int t = tree_thresh_array[haar_counter] * stddev; 
  
  int sum0 =0;
  int sum1 =0;
  int sum2 =0;
  int final_sum =0;
  int return_value;
	             
  sum0 = (coord[0] - coord[1] - coord[2] + coord[3]) * weights_array0[haar_counter];
  sum1 = (coord[4] - coord[5] - coord[6] + coord[7]) * weights_array1[haar_counter];  
  sum2 = (coord[8] - coord[9] - coord[10] + coord[11]) * weights_array2[haar_counter];
  final_sum = sum0+sum1+sum2;
  
  if(final_sum >= t) 
    return_value =  alpha2_array[haar_counter];  
  else   
    return_value =  alpha1_array[haar_counter];
  
  return return_value ; 
}


void imageScaler
(
  int src_height,
  int src_width,
  unsigned char Data[IMAGE_HEIGHT][IMAGE_WIDTH], 
  int dest_height,
  int dest_width,
  unsigned char IMG1_data[IMAGE_HEIGHT][IMAGE_WIDTH]
)
{
  int y;
  int j;
  int x;
  int i;
  unsigned char* t;
  unsigned char* p;
  int w1 = src_width;
  int h1 = src_height;
  int w2 = dest_width;
  int h2 = dest_height;

  int rat = 0;

  int x_ratio = (int)((w1<<16)/w2) +1; 
  int y_ratio = (int)((h1<<16)/h2) +1;


  imageScalerL1: for ( i = 0 ; i < IMAGE_HEIGHT ; i++ ){ 
#pragma HLS PIPELINE OFF
#pragma HLS UNROLL factor=2
    imageScalerL1_1: for (j=0;j < IMAGE_WIDTH ;j++){
#pragma HLS PIPELINE 
#pragma HLS UNROLL factor=2
      
      if ( j < w2 && i < h2 ) 
        IMG1_data[i][j] =  Data[(i*y_ratio)>>16][(j*x_ratio)>>16];
       
    }
  }
}

unsigned int int_sqrt 
( 
  ap_uint<32> value
)
{
  int i;
  unsigned int a = 0, b = 0, c = 0;

  for ( i = 0 ; i < (32 >> 1) ; i++ )
  {
#pragma HLS PIPELINE 
#pragma HLS UNROLL factor=1
    
    c<<= 2;   
    #define UPPERBITS(value) (value>>30)
    c += UPPERBITS(value);
    #undef UPPERBITS
    value <<= 2;
    a <<= 1;
    b = (a<<1) | 1;
    if ( c >= b )
    {
      c -= b;
      a++;
    }
  }
  return a;
}

int max
(
  int a,
   int b
)
{
 if ( a > b )
   return a;
 else 
   return b;
}

int min
(
  int a,
  int b
)
{
  if ( a < b )
    return a;
  else 
    return b;
}

// ---- file: haar_dataEWC_with_partitioning.h ----
static  int weights_array0[2913] = {
-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096,-4096};

static  int weights_array1[2913] = {
12288,12288,12288,12288,8192,8192,8192,8192,8192,12288,12288,12288,12288,12288,8192,12288,12288,12288,12288,8192,12288,12288,12288,12288,8192,12288,8192,8192,12288,8192,12288,12288,8192,8192,12288,8192,12288,8192,8192,12288,8192,8192,12288,12288,8192,12288,8192,8192,8192,8192,8192,12288,12288,12288,12288,12288,8192,8192,8192,12288,12288,8192,8192,12288,8192,12288,12288,8192,8192,8192,8192,12288,12288,12288,12288,8192,8192,12288,12288,12288,12288,12288,12288,12288,12288,12288,12288,8192,12288,8192,12288,8192,8192,8192,8192,8192,8192,12288,8192,8192,12288,12288,8192,8192,8192,8192,8192,12288,8192,8192,8192,12288,12288,12288,12288,12288,8192,8192,8192,8192,8192,8192,8192,12288,8192,8192,8192,12288,8192,8192,8192,8192,12288,12288,12288,12288,12288,8192,12288,8192,12288,12288,12288,8192,8192,8192,8192,8192,12288,12288,12288,8192,8192,12288,12288,8192,8192,12288,8192,8192,8192,12288,8192,12288,8192,12288,12288,12288,12288,12288,12288,12288,8192,8192,8192,12288,8192,8192,8192,8192,8192,8192,8192,12288,12288,8192,12288,8192,12288,8192,8192,8192,8192,12288,12288,8192,8192,12288,8192,8192,12288,12288,8192,8192,12288,12288,8192,8192,12288,12288,8192,8192,12288,12288,12288,8192,12288,8192,8192,8192,12288,12288,12288,8192,8192,12288,12288,8192,12288,12288,8192,12288,12288,12288,8192,8192,8192,8192,12288,12288,8192,8192,8192,12288,12288,8192,8192,8192,8192,8192,12288,12288,12288,12288,8192,8192,12288,8192,12288,12288,12288,8192,8192,8192,8192,12288,8192,12288,8192,8192,12288,12288,8192,12288,12288,12288,8192,12288,8192,8192,8192,8192,12288,12288,12288,12288,8192,8192,8192,12288,12288,8192,8192,8192,12288,8192,12288,12288,8192,12288,12288,12288,12288,12288,8192,8192,8192,8192,8192,12288,12288,12288,12288,12288,12288,12288,8192,8192,8192,8192,8192,12288,12288,12288,12288,12288,12288,8192,8192,8192,12288,8192,12288,12288,8192,12288,8192,8192,12288,12288,12288,12288,8192,12288,12288,12288,12288,12288,12288,8192,12288,8192,12288,8192,8192,8192,12288,12288,12288,8192,8192,8192,8192,8192,12288,12288,8192,8192,12288,12288,12288,12288,12288,8192,8192,8192,12288,8192,8192,8192,12288,12288,12288,12288,8192,12288,12288,12288,12288,12288,12288,12288,8192,12288,12288,12288,12288,12288,8192,12288,12288,12288,12288,8192,8192,12288,12288,12288,12288,12288,8192,12288,8192,8192,8192,8192,8192,12288,12288,12288,12288,8192,8192,12288,12288,12288,8192,12288,12288,12288,12288,8192,8192,12288,12288,8192,8192,12288,8192,12288,12288,12288,12288,8192,8192,8192,8192,12288,8192,12288,12288,8192,8192,8192,8192,8192,8192,8192,12288,8192,8192,8192,12288,8192,8192,12288,8192,12288,12288,12288,8192,12288,12288,8192,8192,12288,12288,12288,8192,12288,12288,8192,8192,12288,12288,12288,12288,8192,8192,8192,8192,12288,12288,12288,12288,8192,8192,12288,12288,12288,12288,12288,12288,12288,12288,8192,12288,12288,12288,8192,12288,12288,12288,12288,12288,12288,12288,8192,12288,12288,8192,8192,8192,8192,8192,8192,12288,12288,12288,8192,12288,8192,12288,12288,12288,12288,12288,8192,8192,8192,8192,12288,8192,8192,12288,12288,8192,12288,8192,8192,8192,12288,8192,8192,8192,12288,12288,12288,12288,8192,12288,12288,12288,12288,8192,8192,8192,8192,12288,12288,12288,12288,8192,12288,8192,8192,12288,12288,12288,12288,12288,12288,12288,12288,8192,12288,12288,8192,8192,12288,12288,8192,8192,12288,8192,8192,12288,12288,8192,12288,8192,8192,8192,8192,12288,12288,8192,8192,12288,8192,12288,8192,8192,12288,8192,12288,12288,12288,12288,12288,8192,12288,8192,8192,8192,8192,8192,8192,12288,8192,8192,8192,12288,8192,12288,12288,12288,8192,12288,8192,12288,12288,12288,12288,8192,12288,12288,12288,8192,12288,12288,12288,12288,12288,12288,8192,12288,12288,12288,8192,12288,12288,12288,8192,8192,8192,8192,8192,12288,8192,8192,12288,12288,8192,8192,8192,12288,12288,8192,8192,8192,8192,8192,8192,8192,12288,8192,12288,12288,12288,8192,8192,12288,12288,8192,8192,8192,12288,12288,8192,8192,8192,12288,8192,8192,8192,8192,12288,12288,8192,8192,12288,12288,8192,8192,8192,12288,8192,8192,8192,12288,8192,8192,12288,8192,8192,8192,8192,8192,12288,12288,12288,12288,12288,12288,12288,12288,12288,12288,8192,8192,8192,8192,8192,12288,8192,12288,12288,12288,8192,8192,8192,8192,8192,12288,12288,8192,8192,8192,12288,12288,8192,12288,12288,8192,8192,8192,12288,12288,12288,8192,12288,12288,8192,12288,8192,8192,8192,8192,12288,8192,8192,8192,8192,8192,12288,8192,12288,12288,12288,12288,12288,12288,8192,8192,12288,12288,12288,8192,12288,8192,8192,12288,8192,8192,12288,12288,8192,12288,8192,8192,12288,8192,12288,12288,8192,8192,8192,12288,8192,12288,12288,12288,12288,8192,8192,12288,12288,8192,12288,12288,8192,12288,8192,12288,12288,12288,12288,12288,12288,12288,12288,8192,8192,8192,12288,12288,12288,12288,8192,8192,8192,12288,12288,12288,8192,8192,12288,12288,8192,12288,8192,8192,8192,8192,8192,8192,12288,8192,12288,8192,12288,8192,8192,8192,12288,8192,8192,12288,12288,12288,12288,12288,8192,12288,12288,12288,12288,12288,12288,12288,12288,8192,8192,8192,12288,8192,8192,12288,8192,8192,12288,8192,12288,8192,8192,8192,8192,8192,12288,12288,8192,8192,8192,12288,8192,12288,12288,12288,12288,8192,12288,8192,8192,12288,12288,12288,12288,12288,12288,12288,12288,12288,8192,8192,12288,12288,12288,12288,8192,8192,12288,12288,12288,12288,8192,8192,8192,12288,8192,8192,8192,12288,8192,8192,8192,8192,8192,12288,8192,8192,8192,8192,8192,8192,8192,8192,12288,8192,8192,12288,8192,8192,8192,12288,12288,12288,8192,8192,12288,8192,8192,8192,8192,8192,12288,8192,12288,8192,12288,8192,8192,12288,12288,8192,8192,12288,12288,8192,8192,12288,12288,12288,12288,8192,8192,8192,12288,12288,8192,12288,12288,8192,8192,8192,12288,8192,8192,8192,12288,12288,8192,12288,12288,12288,8192,8192,8192,8192,8192,12288,12288,12288,12288,12288,8192,8192,12288,8192,8192,12288,12288,12288,12288,8192,12288,8192,8192,8192,12288,12288,8192,8192,8192,12288,12288,12288,8192,8192,8192,8192,12288,8192,12288,8192,12288,8192,12288,12288,8192,12288,12288,12288,12288,8192,12288,12288,12288,8192,8192,8192,8192,12288,8192,8192,8192,12288,8192,8192,8192,12288,8192,12288,12288,8192,8192,8192,12288,8192,8192,8192,8192,8192,8192,8192,12288,8192,12288,12288,8192,12288,12288,12288,12288,8192,12288,8192,8192,12288,12288,8192,8192,8192,8192,12288,12288,8192,8192,12288,12288,12288,8192,8192,8192,12288,8192,8192,8192,8192,8192,12288,8192,12288,12288,8192,12288,12288,12288,12288,12288,12288,12288,12288,12288,12288,8192,12288,12288,12288,12288,12288,8192,12288,12288,12288,12288,12288,12288,12288,12288,8192,8192,12288,12288,12288,12288,12288,8192,8192,8192,8192,8192,12288,12288,8192,12288,12288,8192,8192,12288,8192,8192,8192,12288,12288,12288,12288,12288,12288,8192,8192,8192,12288,8192,12288,12288,12288,12288,12288,8192,8192,8192,8192,12288,12288,12288,12288,12288,12288,12288,12288,8192,12288,12288,12288,12288,8192,8192,12288,8192,12288,8192,12288,8192,8192,8192,12288,8192,8192,12288,8192,8192,8192,8192,8192,12288,12288,12288,8192,12288,8192,8192,12288,8192,12288,12288,8192,12288,12288,12288,12288,8192,8192,8192,8192,8192,8192,12288,12288,12288,12288,8192,8192,12288,12288,12288,12288,12288,12288,12288,12288,12288,12288,12288,12288,12288,12288,12288,12288,8192,12288,8192,8192,8192,12288,8192,8192,8192,8192,8192,8192,8192,8192,8192,8192,8192,8192,8192,8192,12288,12288,12288,8192,12288,12288,8192,12288,12288,12288,8192,12288,12288,12288,12288,8192,8192,8192,8192,12288,8192,8192,12288,12288,12288,12288,8192,8192,8192,8192,8192,8192,12288,12288,8192,8192,12288,8192,12288,8192,12288,12288,12288,12288,8192,8192,8192,12288,8192,8192,12288,8192,12288,12288,12288,8192,12288,12288,12288,12288,8192,8192,8192,8192,8192,12288,12288,12288,8192,12288,12288,8192,8192,8192,8192,8192,12288,12288,12288,12288,8192,8192,8192,8192,8192,8192,12288,12288,12288,8192,8192,8192,12288,8192,12288,8192,12288,8192,8192,8192,8192,12288,8192,8192,8192,12288,8192,8192,8192,8192,8192,12288,8192,8192,8192,8192,8192,12288,8192,12288,12288,12288,12288,12288,12288,12288,12288,8192,8192,8192,8192,12288,12288,12288,12288,12288,12288,12288,12288,8192,12288,12288,8192,8192,12288,8192,12288,12288,12288,12288,8192,8192,8192,8192,12288,8192,12288,12288,8192,8192,8192,8192,8192,8192,8192,8192,8192,12288,12288,12288,8192,12288,8192,8192,8192,8192,8192,12288,8192,8192,8192,8192,8192,8192,8192,12288,12288,8192,8192,12288,12288,8192,12288,8192,8192,8192,8192,8192,12288,8192,8192,8192,8192,12288,8192,12288,8192,12288,8192,12288,12288,8192,8192,12288,12288,8192,12288,12288,8192,12288,12288,8192,12288,8192,12288,12288,8192,8192,12288,8192,12288,12288,8192,8192,12288,8192,8192,8192,8192,8192,8192,8192,8192,12288,8192,8192,8192,8192,12288,8192,8192,12288,12288,12288,12288,8192,8192,8192,8192,12288,8192,8192,8192,8192,12288,12288,12288,8192,8192,12288,12288,12288,8192,8192,8192,8192,12288,12288,12288,12288,12288,12288,12288,12288,12288,12288,12288,8192,8192,12288,12288,8192,8192,12288,12288,12288,8192,12288,8192,12288,8192,8192,8192,8192,12288,8192,8192,8192,12288,12288,12288,12288,8192,8192,8192,12288,8192,12288,8192,12288,8192,8192,12288,12288,12288,8192,8192,8192,12288,12288,8192,8192,8192,8192,12288,8192,8192,8192,8192,8192,8192,8192,8192,8192,8192,12288,12288,12288,8192,8192,8192,8192,8192,8192,12288,12288,12288,8192,12288,8192,8192,8192,8192,12288,12288,8192,8192,8192,8192,12288,12288,8192,8192,8192,8192,8192,8192,8192,12288,12288,12288,12288,12288,8192,8192,12288,12288,12288,12288,12288,8192,12288,12288,8192,8192,8192,12288,12288,8192,12288,8192,12288,12288,12288,8192,8192,12288,12288,8192,8192,12288,8192,8192,8192,12288,12288,8192,8192,8192,12288,12288,12288,8192,8192,8192,12288,8192,12288,12288,12288,12288,12288,12288,12288,12288,12288,12288,12288,12288,8192,12288,8192,8192,12288,8192,12288,8192,12288,8192,8192,12288,8192,12288,8192,8192,8192,12288,8192,8192,8192,8192,12288,12288,12288,12288,8192,8192,8192,8192,8192,12288,12288,8192,12288,12288,8192,12288,8192,12288,8192,8192,8192,8192,12288,8192,8192,8192,12288,12288,12288,12288,8192,12288,8192,8192,12288,8192,8192,8192,8192,12288,8192,12288,12288,8192,12288,8192,8192,12288,8192,12288,8192,8192,12288,12288,12288,8192,12288,12288,12288,12288,8192,12288,12288,8192,12288,12288,12288,8192,8192,12288,8192,8192,8192,8192,12288,8192,12288,12288,12288,12288,12288,12288,12288,12288,12288,12288,8192,12288,12288,12288,12288,12288,8192,12288,12288,12288,8192,12288,12288,12288,12288,12288,8192,8192,8192,8192,8192,8192,8192,12288,8192,12288,12288,8192,8192,8192,8192,12288,12288,12288,12288,12288,8192,8192,8192,12288,12288,12288,12288,8192,8192,8192,12288,12288,12288,12288,12288,12288,12288,12288,12288,8192,12288,8192,8192,8192,8192,8192,12288,12288,8192,8192,8192,8192,8192,12288,12288,12288,12288,8192,12288,12288,8192,12288,8192,12288,12288,12288,12288,12288,8192,8192,8192,8192,12288,12288,8192,8192,12288,8192,8192,8192,12288,12288,12288,8192,8192,12288,8192,12288,8192,12288,8192,8192,12288,8192,12288,8192,12288,8192,12288,8192,8192,12288,12288,8192,8192,8192,8192,12288,12288,12288,12288,12288,8192,8192,8192,8192,12288,8192,12288,12288,8192,8192,12288,12288,8192,8192,8192,12288,8192,8192,12288,8192,8192,8192,12288,8192,12288,8192,12288,8192,12288,12288,8192,8192,12288,8192,8192,8192,8192,8192,12288,8192,12288,8192,12288,12288,12288,12288,12288,12288,12288,8192,12288,12288,8192,8192,12288,8192,8192,8192,8192,8192,8192,12288,8192,8192,12288,12288,12288,12288,12288,8192,8192,12288,8192,12288,12288,12288,8192,8192,12288,12288,12288,12288,12288,8192,8192,8192,8192,8192,8192,8192,8192,12288,8192,12288,8192,12288,8192,8192,8192,8192,8192,12288,12288,12288,12288,8192,8192,8192,8192,12288,8192,8192,8192,12288,12288,8192,12288,12288,8192,8192,8192,8192,8192,12288,8192,8192,8192,12288,8192,8192,8192,8192,12288,8192,12288,12288,12288,12288,12288,12288,12288,12288,12288,8192,12288,12288,12288,8192,8192,8192,12288,8192,12288,8192,8192,12288,12288,8192,8192,12288,12288,12288,8192,8192,8192,12288,12288,12288,12288,8192,12288,8192,8192,8192,12288,12288,12288,12288,12288,12288,8192,8192,8192,8192,12288,12288,8192,12288,12288,12288,8192,12288,12288,8192,8192,12288,12288,8192,12288,12288,12288,12288,8192,12288,12288,8192,8192,8192,8192,12288,12288,12288,12288,8192,12288,8192,12288,12288,8192,12288,8192,8192,8192,12288,12288,12288,12288,12288,12288,8192,8192,12288,12288,12288,8192,12288,12288,12288,12288,12288,12288,8192,8192,12288,12288,12288,8192,12288,12288,12288,12288,12288,12288,8192,8192,8192,8192,12288,8192,8192,8192,8192,8192,8192,8192,12288,8192,12288,8192,8192,12288,8192,12288,12288,12288,12288,12288,12288,12288,8192,8192,8192,8192,12288,12288,8192,8192,8192,8192,8192,8192,8192,12288,8192,8192,8192,12288,8192,12288,12288,12288,12288,8192,8192,12288,8192,8192,8192,8192,12288,12288,8192,8192,12288,8192,8192,8192,12288,12288,12288,12288,8192,8192,12288,12288,12288,12288,12288,12288,12288,12288,12288,12288,8192,8192,8192,8192,8192,8192,8192,12288,8192,8192,12288,12288,8192,12288,8192,8192,12288,12288,12288,12288,8192,8192,8192,12288,8192,12288,12288,12288,12288,8192,8192,8192,8192,8192,8192,12288,12288,8192,12288,8192,8192,8192,8192,8192,8192,12288,12288,12288,8192,12288,12288,8192,8192,8192,8192,8192,12288,8192,12288,8192,8192,8192,12288,12288,8192,8192,8192,8192,8192,8192,8192,8192,12288,12288,8192,8192,8192,12288,8192,12288,12288,12288,12288,8192,8192,8192,12288,8192,8192,12288,12288,12288,12288,12288,8192,8192,12288,12288,12288,8192,12288,12288,8192,8192,8192,12288,12288,12288,8192,12288,8192,8192,8192,12288,12288,12288,8192,8192,8192,8192,8192,8192,8192,12288,8192,12288,8192,8192,8192,12288,12288,8192,8192,12288,12288,8192,8192,8192,12288,8192,8192,12288,12288,8192,12288,8192,8192,12288,12288,12288,12288,12288,12288,12288,12288,12288,12288,12288,8192,8192,8192,12288,8192,12288,8192,8192,8192,12288,8192,12288,12288,12288,12288,8192,8192,8192,8192,8192,12288,8192,12288,12288,8192,12288,8192,12288,12288,8192,8192,8192,8192,8192,12288,8192,8192,12288,8192,12288,8192,8192,12288,12288,12288,12288,12288,12288,12288,12288,12288,12288,8192,8192,12288,8192,8192,8192,12288,12288,8192,8192,8192,12288,8192,8192,12288,8192,8192,8192,12288,12288,12288,12288,12288,8192,12288,12288,8192,12288,8192,12288,8192,8192,8192,12288,8192,8192,12288,12288,12288,12288,12288,8192,8192,12288,12288,8192,8192,12288,12288,12288,12288,12288,12288,8192,8192,8192,8192,8192,8192,8192,8192,12288,8192,8192,8192,8192,12288,12288,8192,12288,8192,8192,12288,12288,12288,12288,8192,8192,8192,12288,12288,8192,12288,12288,8192,8192,8192,8192,12288,8192,12288,12288,12288,12288,12288,8192,8192,8192,12288,8192,8192,8192,12288,12288,12288,8192,8192,12288,8192,8192,8192,12288,8192,12288,8192,8192,8192,12288,8192,8192,8192,8192,8192,8192,12288,12288,8192,12288,12288,8192,12288,12288,12288,12288,12288,12288,12288,12288,8192,8192,12288,12288,12288,8192,8192,12288,12288,8192,8192,8192,12288,12288,8192,12288,8192,8192,12288,12288,8192,8192,12288,12288,8192,12288,8192,12288,8192,8192,12288,12288,12288,12288,12288,12288,12288,12288,8192,8192,8192,8192,8192,12288,12288,12288,8192,8192,12288,12288,8192,8192,12288,8192,8192,8192,12288,8192,8192,12288,12288,12288,12288,8192,8192,12288,8192,8192,12288,12288,12288,8192,12288,8192,12288,12288,12288,12288,12288,8192,8192,12288,8192,8192,8192,8192,8192,12288,12288,12288,8192,8192,8192,12288,8192,12288,8192,8192,8192,12288,12288,12288,12288,12288,8192,8192,8192,12288,8192,8192,8192,8192,8192,8192,8192,12288,12288,12288,12288,8192,12288,8192,12288,12288,8192,8192,8192,8192,8192,8192,8192,12288,8192,8192,8192,8192,8192,12288,12288,12288,12288,12288,12288,12288,12288,12288,12288,12288,8192,8192,8192,8192,8192,8192,12288,8192,12288,12288,12288,12288,12288,8192,12288,12288,12288,12288,8192,8192,12288,12288,12288,12288,8192,8192,12288,12288,12288,12288,12288,12288,12288,8192,12288,12288,12288,12288,8192,8192,12288,12288,8192,8192,8192,8192,8192,8192,8192,8192,8192,8192,12288,8192,8192,12288,12288,12288,8192,12288,8192,12288,8192,8192,8192,8192,8192,8192,8192,8192,8192,12288,12288,12288,12288,12288,12288,8192,12288,12288,12288,8192,8192,8192,8192,8192,8192,12288,8192,12288,8192,12288,12288,12288,12288,12288,12288,12288,8192,8192};

static  int weights_array2[2913] = {
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8192,0,0,0,0,0,0,0,0,0,0,0,0,8192,0,0,0,0,0,0,0,8192,0,0,0,0,0,8192,0,0,0,0,0,0,0,8192,0,0,0,0,8192,8192,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8192,0,0,0,8192,8192,0,0,0,0,0,0,0,8192,0,8192,8192,8192,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8192,0,0,0,0,0,0,0,8192,0,0,0,8192,0,0,0,0,0,0,0,0,0,0,0,8192,8192,0,0,0,0,0,0,0,0,0,8192,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8192,0,0,0,8192,8192,0,0,0,0,0,0,0,8192,0,8192,0,0,0,0,0,8192,8192,0,0,0,0,0,8192,0,0,0,8192,8192,0,0,0,0,0,8192,8192,0,0,0,0,0,8192,8192,0,0,0,0,0,8192,0,0,0,0,0,8192,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8192,0,0,8192,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8192,8192,8192,0,0,0,0,0,0,0,8192,0,0,0,0,0,0,0,0,8192,8192,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8192,8192,8192,8192,8192,0,0,8192,8192,0,0,0,0,0,8192,8192,8192,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8192,0,0,8192,8192,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8192,0,0,0,0,0,0,8192,0,8192,8192,0,0,0,0,8192,8192,8192,0,8192,8192,0,0,0,0,0,0,0,0,8192,0,0,0,0,8192,0,0,8192,0,0,0,0,0,0,0,0,8192,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8192,8192,0,0,0,8192,0,0,0,8192,0,0,0,0,0,0,0,0,0,0,0,0,8192,0,0,0,8192,0,8192,8192,0,0,0,0,8192,0,0,0,0,8192,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8192,8192,0,0,8192,8192,0,8192,8192,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8192,8192,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8192,0,0,0,8192,0,0,0,0,0,8192,8192,0,0,0,0,0,0,0,0,8192,0,0,8192,8192,8192,0,0,8192,0,0,8192,0,0,0,0,8192,0,0,8192,0,0,0,0,8192,8192,0,0,0,8192,8192,8192,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8192,0,0,0,8192,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8192,8192,0,0,0,8192,8192,8192,0,0,8192,0,0,0,0,0,0,0,0,8192,0,0,0,0,8192,0,0,8192,0,0,0,0,0,8192,0,8192,0,0,0,0,0,0,0,0,0,0,0,0,0,8192,0,0,0,0,0,0,8192,0,0,0,0,0,0,0,0,0,0,0,8192,0,0,0,0,0,0,0,0,0,0,0,0,0,8192,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8192,0,0,0,8192,0,0,0,8192,0,8192,8192,0,0,8192,8192,0,8192,0,0,0,0,0,0,0,8192,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8192,8192,0,0,0,0,0,0,0,8192,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8192,8192,0,8192,8192,8192,0,8192,0,8192,0,8192,0,8192,0,0,8192,0,0,8192,8192,0,8192,0,0,0,0,0,0,0,0,8192,8192,0,8192,8192,0,0,0,0,0,0,0,0,8192,8192,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8192,0,0,8192,8192,0,0,8192,8192,8192,0,0,8192,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8192,0,8192,8192,0,0,0,0,0,0,0,0,0,8192,8192,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8192,0,0,0,0,0,8192,8192,0,8192,0,0,0,8192,0,0,0,0,0,0,8192,8192,8192,0,8192,0,8192,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8192,8192,8192,0,8192,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8192,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8192,0,8192,8192,8192,0,0,8192,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8192,8192,8192,8192,0,0,0,0,0,0,0,0,0,0,0,0,0,8192,0,0,0,0,0,0,8192,8192,0,0,0,8192,0,0,0,0,8192,0,0,0,0,0,0,0,0,0,0,0,0,8192,0,0,0,0,0,8192,0,8192,8192,8192,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8192,0,8192,0,8192,0,8192,0,8192,8192,8192,0,8192,8192,8192,8192,8192,8192,8192,8192,0,0,0,8192,0,0,8192,0,0,0,0,0,0,0,0,0,8192,8192,0,0,8192,8192,0,0,0,0,8192,8192,0,0,0,0,0,0,0,0,0,0,0,8192,0,0,0,0,8192,8192,8192,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8192,8192,8192,0,0,0,0,8192,0,0,0,0,0,0,0,0,0,0,0,8192,8192,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8192,8192,0,0,8192,0,0,0,0,0,0,0,0,0,0,0,0,8192,0,0,8192,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8192,0,0,8192,0,0,0,0,0,0,0,8192,0,0,0,0,0,0,0,0,8192,8192,8192,0,8192,0,0,0,0,0,0,0,0,0,8192,8192,8192,8192,0,8192,8192,8192,8192,8192,0,8192,0,0,8192,8192,0,0,8192,0,8192,8192,8192,8192,0,0,0,0,8192,8192,0,8192,0,8192,0,0,0,0,8192,8192,0,0,0,0,0,0,0,0,8192,0,0,0,0,0,0,0,0,0,0,0,8192,0,0,0,0,0,8192,0,0,0,0,0,0,0,8192,0,0,0,0,0,0,0,0,8192,8192,0,0,0,0,8192,0,0,0,0,8192,8192,0,0,0,0,0,8192,0,0,0,0,0,0,0,0,0,0,0,0,8192,0,0,0,0,0,0,0,0,8192,0,8192,0,0,8192,0,8192,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8192,0,0,8192,8192,8192,0,0,0,8192,8192,0,8192,0,0,0,0,0,0,0,8192,8192,0,0,0,0,0,0,0,8192,0,0,8192,0,0,8192,8192,8192,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8192,0,0,0,0,0,0,0,0,0,0,8192,0,0,0,0,0,0,8192,0,0,0,0,0,8192,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8192,0,0,0,0,0,0,0,0,0,0,0,8192,8192,0,8192,0,8192,8192,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8192,0,0,8192,0,8192,0,0,0,0,0,0,0,0,8192,0,0,0,0,8192,0,0,0,0,8192,0,0,8192,0,0,8192,0,0,0,8192,8192,0,0,0,0,0,0,0,0,8192,0,0,8192,0,0,0,8192,8192,0,8192,8192,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8192,0,0,0,0,0,0,0,0,0,0,0,8192,0,0,0,0,0,8192,0,0,8192,8192,0,0,0,0,0,0,0,8192,8192,0,0,0,0,0,0,8192,8192,0,0,0,0,0,0,0,0,0,0,0,8192,8192,8192,0,8192,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8192,0,0,0,0,0,8192,8192,0,8192,8192,8192,0,0,0,0,8192,0,8192,0,0,0,0,8192,0,0,0,8192,0,0,0,0,0,0,0,0,0,0,8192,0,0,0,0,0,0,8192,0,0,0,0,0,0,8192,0,0,0,0,0,0,0,0,0,0,8192,8192,8192,0,0,0,8192,0,0,0,0,0,8192,0,8192,0,8192,8192,8192,0,0,0,8192,0,0,0,0,0,0,0,0,0,0,8192,0,0,8192,8192,8192,8192,0,0,0,8192,8192,0,0,0,0,0,0,0,0,0,0,0,0,0,8192,0,0,0,0,0,8192,0,0,8192,0,8192,8192,8192,0,8192,0,0,0,0,0,0,0,8192,0,0,0,0,8192,8192,8192,8192,0,0,8192,8192,0,0,0,0,0,8192,8192,8192,8192,8192,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8192,0,0,0,8192,0,0,0,0,0,0,8192,0,0,0,0,0,0,0,0,0,0,8192,8192,8192,8192,0,0,8192,0,0,0,8192,0,0,0,0,0,0,8192,0,0,0,0,8192,0,0,8192,0,0,8192,0,0,0,0,8192,0,8192,0,0,0,0,8192,8192,8192,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8192,0,0,0,0,0,0,0,8192,0,0,0,0,0,0,8192,0,0,0,0,0,0,8192,8192,0,0,0,0,0,0,0,0,0,0,8192,8192,0,0,0,0,0,0,0,8192,0,8192,0,0,8192,8192,0,0,0,0,0,0,0,8192,0,8192,8192,8192,8192,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8192,0,8192,8192,8192,0,0,0,0,0,0,8192,0,0,0,0,0,0,0,8192,8192,8192,0,8192,0,0,0,0,8192,8192,0,0,8192,8192,0,0,8192,0,8192,0,0,0,0,0,0,0,0,8192,0,0,8192,8192,0,0,0,0,8192,0,0,0,8192,0,0,0,8192,8192,0,0,8192,0,0,0,0,0,0,0,0,8192,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8192,0,0,0,0,0,0,0,0,0,0,0,0,8192,0,0,8192,8192,0,0,0,8192,0,0,8192,8192,8192,0,0,8192,0,0,0,8192,0,0,8192,0,0,0,0,0,0,0,8192,8192,0,0,8192,0,0,8192,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8192,0,0,0,0,0,8192,0,0,0,0,8192,8192,8192,8192,0,0,8192,0,0,0,0,8192,0,0,0,0,0,0,0,0,8192,8192,0,8192,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8192,8192,8192,0,8192,8192,0,8192,8192,8192,0,0,0,0,0,0,0,0,8192,0,8192,0,0,0,0,0,0,0,0,0,0,0,0,8192,0,0,0,0,0,0,0,0,0,0,0,8192,8192,8192,8192,8192,0,0,8192,0,8192,8192,0,8192,0,0,8192,0,8192,8192,0,0,0,0,0,0,0,0,0,8192,0,0,8192,8192,0,0,0,8192,0,0,0,0,0,0,0,0,0,8192,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8192,8192,0,0,8192,8192,0,8192,0,0,0,0,8192,0,0,8192,0,0,0,0,0,0,0,0,0,0,0,0,0,8192,8192,0,0,8192,8192,0,0,0,8192,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8192,8192,0,0,0,8192,0,0,0,0,0,0,8192,0,0,0,0,8192,0,0,0,0,8192,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8192,0,8192,0,0,0,0,0,0,0,0,0,8192,8192,8192,0,0,8192,0,8192,8192,8192,8192,0,0,0,0,0,0,8192,0,0,0,0,0,0,0,8192,8192,0,8192,8192,8192,8192,8192,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8192,8192,0,0,0,0,0,0,0,0,8192,0,0,0,0,0,8192,0,0,0,0,0,8192,0,0,0,0,0,0,0,8192,0,0,0,0,8192,0,0,0,0,0,8192,8192,0,0,0,0,0,0,0,8192,0,0,0,0,0,0,0,0,8192,8192,8192,8192,8192,8192,8192,8192,8192,0,0,0,0,0,0,0,0,0,0,8192,8192,0,0,8192,8192,0,8192,0,0,0,0,0,0,0,0,0,0,8192};

static  int alpha1_array[2913] = {
534,-477,-386,-223,-199,142,-432,-378,-219,318,-414,-497,-142,68,-684,-277,-90,237,296,-107,373,286,-89,-155,99,-259,-421,118,-167,-357,-129,93,-77,-103,269,-416,72,-259,-42,388,451,-80,-25,-103,43,227,-95,16,-447,-240,-13,-468,295,-400,-147,-373,-213,-80,-111,381,-246,-626,44,124,45,-501,253,-660,368,-126,-596,-216,-369,46,17,100,37,63,-193,-93,-594,108,284,-851,-311,-123,-276,-307,-112,-47,77,319,-152,72,123,68,-335,116,-443,-49,-412,190,-68,-15,-89,-268,211,52,52,-332,-335,-269,-351,-9,-255,370,-95,-147,4,-20,-294,95,67,193,57,-323,222,-355,16,-137,-90,-150,-85,178,220,49,-228,-322,-220,-191,-323,-251,164,-61,-87,281,402,-70,-280,78,66,-315,104,-24,-105,64,-240,318,-83,89,14,-262,263,55,-408,-263,-378,-61,74,-59,-309,62,-350,54,83,-72,-591,73,-69,-392,19,36,-282,3,-88,51,-104,-569,-73,-227,-285,-258,66,-146,-141,-329,446,-269,145,334,-118,-106,92,-228,75,-203,39,8,-100,22,141,-473,-123,-115,-216,90,47,-320,-208,-237,144,205,-217,-103,-391,161,150,-65,74,-101,53,112,240,2,-259,-96,-206,-270,51,-97,54,-262,-263,-53,225,267,35,-425,204,-245,50,-265,-315,-194,-99,-183,141,-114,-279,214,-65,80,-268,41,-176,63,-129,10,36,-229,-116,86,-202,-584,100,8,-277,-481,37,-260,39,-197,-29,17,-450,245,119,181,-281,-279,-67,-56,47,-237,502,54,-300,-287,-43,211,-295,-268,-279,108,-235,-408,-169,49,-162,-48,-27,-276,87,121,249,-556,-164,-377,108,6,40,-103,-510,-159,259,-262,-291,-145,78,-440,59,-311,83,-81,-28,101,0,192,-212,-152,40,8,-133,-136,51,11,-233,23,54,-69,-26,16,-237,34,50,-292,43,-121,-553,11,-8,-337,94,-65,-19,-201,435,198,-382,-546,145,173,63,3,-2,115,-243,-515,101,-63,-14,11,-125,-76,-153,-7,95,-255,36,-54,-337,126,108,-7,-202,-576,-65,-57,-73,-8,152,-122,58,-66,-153,181,-143,-182,-285,-104,-97,-179,-139,-25,216,67,39,-509,-82,152,5,-112,-228,54,3,257,-376,-208,29,33,-301,161,47,-238,9,93,50,-429,-787,54,-293,214,-71,45,246,2,-136,210,-50,-6,-347,-165,215,49,-186,-92,14,120,-290,251,-72,-163,95,-334,-523,198,44,-384,73,354,-57,-406,-305,-39,66,-22,192,31,-93,-19,200,-229,211,4,289,-147,-5,-139,-313,37,-71,-62,-219,177,-42,112,-250,-231,-202,-77,-230,-107,117,233,-376,-268,74,-329,-219,41,40,5,-42,-249,252,121,-245,-134,43,-290,66,50,-13,272,-47,-7,255,-7,0,-391,8,196,41,-250,118,65,-206,-336,51,249,-48,-174,48,-60,63,-266,131,414,764,154,-158,169,-287,-275,207,-5,173,14,-33,-96,-149,-77,151,248,233,-154,11,-239,46,-330,-11,-3,-68,-131,106,-63,-57,16,48,-242,94,246,-785,58,0,243,-25,2,165,-9,177,-103,-165,250,-26,156,-260,-105,-149,-237,30,-148,-98,301,-220,-191,235,68,-72,-157,147,83,22,88,60,-190,-231,-88,-239,-136,235,-181,-222,-58,-77,68,-302,-139,-69,-233,-112,6,202,205,-51,-11,-231,90,-50,-358,0,-125,-312,95,-75,-368,-577,96,-75,-255,12,38,-3,-36,-4,-443,-61,1,9,19,-434,161,-85,58,49,23,-446,-61,301,35,-139,-55,16,175,445,78,-54,-203,95,-3,310,-5,-271,-8,9,-20,-491,123,-50,50,-49,463,199,39,-42,-26,-9,-14,71,32,5,48,18,12,-69,13,97,39,6,41,-157,-217,-208,-93,-304,84,-130,-268,-129,-254,-24,59,-26,0,-167,72,39,-74,349,312,-209,-312,30,-299,-273,-92,125,150,-19,70,-1,210,33,-232,2,455,146,-82,49,17,-99,-6,-491,-328,-103,-186,148,234,-132,61,42,-349,-437,-80,38,190,-104,208,84,-321,353,-9,-47,-114,173,-3,86,-271,37,-62,33,-268,-387,35,73,-69,47,83,29,-283,205,-67,4,3,-78,-411,19,-1,-61,490,-64,-177,46,-7,16,2,38,99,-397,55,-12,-65,-46,139,-177,75,236,-203,84,-351,16,92,-39,34,27,-2,0,-120,-2,-88,383,-254,-147,-8,102,46,139,174,-230,-144,92,-142,-274,-183,-120,54,171,-244,208,315,-78,54,-231,57,-101,47,39,55,-378,-43,9,85,1,115,39,-333,-62,7,-57,52,175,-2,-51,121,-283,259,106,54,-296,90,-393,51,-6,43,-306,-279,71,-11,-67,154,97,33,30,-87,-43,156,-124,-1030,-100,-22,293,-5,9,144,-44,323,171,-105,-234,0,-95,-108,-42,38,352,-86,195,-177,-3,-26,273,47,-56,65,-2,-73,-9,84,-89,-368,-302,566,-478,-196,-161,218,-8,-49,527,-29,-4,-10,-170,-14,156,-146,14,44,-171,75,-72,-27,-13,115,-520,43,-5,77,-79,-460,-13,53,-51,-244,-36,-279,26,15,-343,12,-262,21,-37,168,-232,-127,-108,-122,130,-59,103,115,-217,-238,-327,149,-13,-222,-19,-63,-287,-371,137,17,292,-63,-10,150,39,43,-38,-102,71,0,105,-365,-64,11,-240,-69,-264,161,41,-64,-74,-2,28,-49,79,-1,-117,-3,-19,-68,46,-48,-37,-134,-98,-1,-148,5,-166,-86,38,-64,-28,-249,97,-266,-1410,244,2,57,42,-221,-721,-331,-208,168,1,78,65,-367,-43,-166,-13,-235,137,-139,39,-62,-130,-55,29,-3,311,-64,57,64,-83,-14,0,-78,-62,120,98,-12,54,-43,29,-11,-103,-84,-185,-40,49,210,-110,-7,28,557,-12,-83,294,-99,-429,-249,53,-42,60,-237,-188,36,2,-304,622,183,40,-208,238,-144,-202,-362,97,-104,-61,-223,39,-293,39,10,111,111,-24,-97,228,220,153,-406,43,130,-110,-80,270,-183,63,-176,-151,11,-157,-78,-351,-143,1,400,-404,-397,44,-334,-353,-181,-10,147,-126,-125,-154,60,-20,-308,59,-207,157,-75,-156,-136,-329,-43,-28,261,-200,-225,29,-207,-18,-329,121,-15,44,-51,-17,-326,31,3,158,-92,134,-43,-304,214,90,-225,-36,-74,-8,177,-165,-7,-2,217,-531,-219,98,-441,140,-9,149,-3,38,132,-5,-220,-116,33,33,-64,5,-100,21,-46,-158,-12,45,-215,-48,-203,-60,-14,67,-171,172,77,37,-47,48,115,34,-53,82,-51,40,-160,42,-64,39,145,146,-98,56,-73,-166,-74,116,-131,4,100,304,-174,-217,-282,-50,-104,-75,-334,60,74,-620,225,205,37,-208,-181,-186,43,708,29,-1,59,-79,-12,-297,-69,-138,46,160,61,-240,-19,10,43,-8,24,-101,-58,-70,-27,-12,38,-5,-205,-53,51,-46,127,299,-16,-59,-210,155,-10,-294,-2,96,-25,171,40,97,38,-174,65,-7,-90,-9,-6,27,119,-72,-5,-83,-313,-4,167,-133,-200,0,-13,4,-159,45,11,116,85,-598,-169,117,-68,-47,-6,-8,1,108,-5,-8,28,74,30,37,-137,-15,-115,310,-590,-183,18,-313,34,-7,34,-37,49,-95,207,214,-242,11,-497,-54,153,-56,161,-59,46,-178,88,-224,60,-15,-50,247,-15,-116,29,463,59,126,155,102,-217,-202,-172,9,35,-35,35,-51,-119,-241,83,70,60,-147,-156,-144,-205,-207,35,-42,369,34,-86,-29,-254,-123,9,-278,244,-265,230,-259,157,-21,16,-239,-215,155,-7,33,-289,194,76,5,-218,-15,91,0,-8,151,152,-300,-4,41,-57,70,-194,-58,49,42,328,-138,162,-127,-303,5,7,-53,0,-56,-2,114,-52,-196,-361,49,215,32,-119,132,-7,62,250,51,-65,43,-219,143,-65,1,-154,107,58,23,-68,-185,-89,29,-2,52,148,4,-84,351,0,-3,96,-703,121,-148,-2,89,364,61,-2,-4,-231,-54,50,-23,-141,47,496,-67,-140,-655,-63,41,56,79,-244,32,-15,10,-11,10,7,264,-17,-152,-16,14,-1,37,-45,-152,-276,199,-16,-4,-14,87,-67,-33,7,6,115,-50,-138,-3,17,174,-52,182,-94,-220,-69,-88,-81,-176,-53,-126,343,11,-182,257,-3,-209,138,-86,-306,-227,42,160,-72,-163,-196,116,-195,11,-12,-5,-245,-179,-72,-64,-178,117,46,-161,-263,88,-74,-113,45,-2,423,-1,0,-158,180,100,-6,120,82,-314,11,-42,86,-218,14,133,160,-157,-216,-16,-45,-7,-62,-60,100,-68,44,-277,184,-304,161,338,-86,-65,36,-298,-101,126,479,-227,-298,-171,-122,30,-19,-51,236,-68,-138,4,-3,-45,53,5,-4,-48,104,-52,-434,-7,-51,-115,60,-46,-70,-118,106,37,192,-48,90,-164,4,270,76,-55,61,-8,-1,19,20,-35,-476,-47,36,411,-207,-356,8,-141,5,113,46,-16,51,-81,222,163,44,61,138,612,40,0,-29,-269,-51,-54,28,-439,165,-2,50,-221,35,86,-640,129,-750,-153,86,-283,114,-266,8,135,-137,-128,-84,-81,27,-36,241,-139,3,-80,-1,-195,61,-24,-202,-26,-103,52,0,-1,-93,-365,-10,67,-214,-125,-48,59,-9,-456,-55,-45,-2,77,-243,8,250,-5,-14,167,6,-1,87,-1,-134,-149,5,-93,9,-37,-55,-277,-39,11,-396,42,-197,28,283,70,-206,36,50,-12,-42,-32,-8,-16,-93,30,-133,166,44,-50,-130,-17,-104,-54,-127,-52,46,3,-53,63,-488,-182,-43,48,1,43,-578,616,-69,80,-371,-4,-59,36,-56,-29,6,45,-37,-134,225,-123,-54,-18,-63,2,-45,33,-11,44,-289,-57,116,-38,-174,166,114,-22,-119,74,-309,-11,-68,-33,497,39,-182,235,-57,-185,319,-370,-200,-218,-38,140,93,-8,-157,-16,-87,-77,19,-249,47,-15,83,-75,-310,33,-169,42,-13,51,-201,73,442,4,-19,81,196,47,-60,44,-11,205,-209,38,-186,145,10,-507,128,102,-196,221,-143,10,-49,47,-12,362,337,12,-53,-319,66,58,-220,80,64,68,-138,183,-149,-190,45,-275,6,-115,-69,-125,106,41,-282,166,107,90,-74,-338,-224,66,-253,162,6,-144,0,-24,-167,-119,-271,129,-78,-285,-222,168,-58,46,-84,-30,98,-228,137,-14,-390,19,-50,-163,21,-110,102,135,-99,224,-298,279,35,34,-3,45,-135,-28,100,-65,-6,202,-122,-44,0,4,51,47,-15,-83,-159,-8,50,52,-145,191,217,42,-340,-15,195,57,-407,30,-335,0,167,18,-172,85,116,-11,68,-212,-172,-18,7,34,-152,103,-278,74,167,-501,-58,40,-99,439,-97,-791,-35,-16,-144,64,-670,15,239,35,-3,15,182,37,-95,-60,-7,47,-39,38,-42,-18,-5,-46,-116,68,-39,17,70,-787,-374,226,35,-263,19,30,172,54,114,9,-50,34,215,44,-45,-36,267,28,-201,-155,-3,-523,-107,6,-44,-56,-17,330,-297,17,-45,56,158,-118,-32,-77,-57,64,74,49,-193,21,-68,34,-103,41,79,-68,39,293,-182,106,-341,36,-12,163,-55,-206,-81,-164,-117,117,93,6,44,-246,-181,18,-191,174,-32,18,244,-72,98,0,217,-236,-139,-1,184,49,29,-13,-27,-46,42,52,239,0,0,185,256,-11,3,-241,-111,-45,148,-5,-36,249,-21,-529,112,73,-146,88,143,-37,61,110,5,46,38,-50,0,323,166,-264,-122,-53,132,-54,46,-37,-72,-114,10,101,563,-71,87,73,163,20,-114,-251,58,214,29,-9,-346,-45,32,205,41,39,-471,-206,-35,-6,-188,-116,53,102,-5,-127,45,11,44,-118,13,38,35,-73,-77,-251,12,60,120,-53,42,-144,-911,-9,-144,-7,-136,-56,36,-88,245,445,355,13,-23,9,243,-34,58,-56,329,-1012,96,-6,43,-239,33,-292,126,-79,-97,-47,-151,-39,82,-40,193,-226,61,-479,33,-6,119,102,-400,-492,34,261,-24,28,154,-48,29,-71,185,-49,39,-14,-412,-15,41,-45,1190,-43,233,56,-230,-96,-97,-46,-57,181,122,-47,10,-59,-117,85,-42,57,38,-380,-49,34,-277,-151,-125,152,-302,-156,-292,-421,-79,-177,-183,57,264,115,-218,148,-96,-67,-7,52,171,44,-214,-8,107,17,-40,-181,-41,99,4,12,-69,216,39,-237,132,35,-230,50,24,-15,62,156,232,-80,-170,15,204,48,150,-65,-3,52,-274,-148,-169,-123,147,-13,31,28,-444,34,-120,178,431,203,-259,36,129,-40,-139,-44,64,238,-8,89,17,36,-263,-50,-198,33,-39,38,-182,284,238,-50,107,-132,-11,13,-60,-226,-52,34,-44,14,40,182,-40,-88,-142,-924,132,-22,7,60,-10,117,-195,-957,-163,49,-41,5,-434,303,-104,39,125,-62,-12,111,48,-112,-52,79,-79,35,-130,122,115,33,-10,-88,1,20,297,-82,-46,0,-37,-101,-46,37,-15,87,79,-9,-45,-258,-137,123,67,9,-153,39,-37,3,-4,91,306,-158,-467,-7680,-61,-8,-39,-15,-165,278,-66,35,-53,37,7,323,-32,-175,-122,-120,65,-123,-61,194,-89,-202,120,171,63,-55,71,14,-255,-305,38,-363,-72,121,-15,-219,42,-300,67,9,-10,73,-360,-54,86,-64,10,135,64,1,-127,21,-133,-161,329,213,28,-345,-346,103,-67,150,-42,3,-4,-61,-137,192,-41,-44,59,64,33,-214,603,48,37,-11,45,-252,-41,-61,36,-266,50,-232,-7,-255,187,71,1,-51,165,-47,-74,-17,-3,-53,-91,277,54,132,-112,8,3,87,84,-64,35,-3,48,89,-9,-109,170,-125,33,-14,-147,249,45,-207,71,-34,-17,-46,-40,74,113,-49,-2,-108,-218,214,25,-47,64,-90,41,-37,-54,-182,8,-69,92,-12,33,-275,6,-66,-454,76,50,-110,-130,199,-161,-11,30,-4,22,10,-486,-15,227,-56,147,-138,-20,-51,106,-7,-30,84,-5,-112,30,234,28,-36,51,83,40,-19,29,-42,57,-49,29,-229,91,-117,60,-7,-130,-138,-227,206,3,-11,18,-50,-1391,114,-3,-38,118,-422,-9,88,31,-15,4,-70,-45,-82,32,-127,11,-10,0,-391,9,25,159,-238,-103,24,95,-59,10,-127,8,-128,9,-16,124,34,-113,7,3,3,74,-103,84,-136,-369,-202,-68,-139,5,-127,-202,204,-84,-69,-135,-144,-44,-23,-14,60,45,-109,148,8,17,-321,136,298,100,-188,-36,30,-362,113,-356,131,-14,-20,-221,133,-41,-43,-1,162,-86,-8,165,13,167,49,-238,-174,3,257,-59,-185,-56,42,-61,130,231,35,-169,205,-85,-142,-15,87,71,300,209,-47,83,50,-239,6,-54,189,-49,178,100,-18,244,-13,19,13,184,36,10,137,-11,8,-66,40,-187,21,-90,72,-215,38,-48,113,-14,-79,420,-199,-59,-92,199,302,-120,56,-9,107,-42,40,-1,-7,-58,-15,-76,56,311,3,-382,-98,-54,0,-159,-108,6,33,301,8,-81,216,94,-133,-15,202,-299,10,-91,53,-48,65,8,-253,-34,86,-46,-251,-8,298,163,-59,-56,41,-43,66,-196,-69,19,-9,-45,48,180,17,192,49,-12,-114,166,-14,-39,-156,-12,28,-204,-48,-34,124
};
static  int alpha2_array[2913] = {
-567,339,272,301,322,-479,112,113,218,-402,302,179,442,-558,116,137,238,-169,-76,347,-50,-135,292,197,-387,375,256,-408,212,108,269,-344,371,310,-117,39,-400,59,327,-77,-13,393,239,246,-757,-112,102,-677,72,59,275,25,-274,196,353,132,149,299,244,-35,70,60,-343,-230,-418,46,-97,63,-75,161,13,99,25,-322,-609,-70,-291,-324,69,181,9,-12,-89,54,277,359,189,96,323,117,-245,11,138,-381,-134,-409,39,-184,17,174,19,-55,335,312,217,76,-83,-214,-171,35,19,49,17,199,31,3,135,100,-542,252,24,-37,-148,-43,-163,64,-69,60,-323,77,135,61,132,-3,-66,-151,267,141,163,136,92,92,-128,218,292,-46,-80,267,50,-340,-179,57,-131,158,121,-175,29,-14,211,-45,-396,61,-81,-211,13,33,9,126,-146,163,16,-255,9,-266,-138,113,0,-165,205,54,-270,-219,16,162,144,-385,96,31,173,243,125,127,-320,152,77,57,-25,47,-119,-67,106,151,-117,36,-249,46,-339,-536,131,-328,-118,11,88,109,42,-120,-427,9,59,25,-48,-97,50,129,59,-81,-3,266,-213,116,-384,-98,-27,-430,61,119,45,18,-395,96,-317,13,58,314,-11,-55,-486,1,-21,16,-195,210,75,148,229,129,-180,181,68,-98,66,-150,43,-224,60,-144,98,-355,-273,50,111,-114,57,-1,-133,-386,47,0,-568,15,-303,31,181,-269,49,-64,-54,-71,62,14,50,269,-440,15,7,-123,41,10,82,-67,38,10,39,-108,47,0,79,-166,39,391,166,9,-25,-87,-4,-7,42,0,-45,-327,-388,83,38,284,-157,101,73,115,-174,15,-442,31,-207,172,215,-121,242,-80,45,63,-109,-409,96,63,-369,-348,69,-208,-191,207,220,-253,39,-180,-103,18,-184,67,37,-275,311,3,-39,180,85,19,12,-62,31,-6,-30,-68,-165,-317,260,-92,52,-5,-75,277,311,-272,43,132,63,-592,-83,18,-441,260,38,-74,-86,-600,39,-7,60,236,79,-693,-8,58,-267,196,71,-65,280,135,103,189,188,97,93,203,-84,-247,-271,34,154,-54,-375,52,26,-102,-411,-34,2,66,-183,-421,6,-26,-137,51,-258,-70,-136,53,-9,-182,4,-16,203,-175,-55,319,37,-3,276,291,-1,61,-52,-312,13,74,-171,4,6,7,151,67,-85,40,-6,-11,-114,36,-97,16,203,29,-1,104,-98,196,-57,-372,66,124,-56,37,-51,69,-48,40,-419,61,-1,-115,112,64,6,0,389,-55,5,164,147,336,74,136,-114,-70,52,17,-133,11,47,-176,-215,-349,66,16,-4,-83,51,57,-274,9,-183,-136,249,-60,117,-682,6,-555,191,2,254,-63,-156,7,-34,-133,38,0,-157,-53,122,28,-383,208,-17,12,-1,-47,24,-69,40,-60,50,5,-4,-444,-14,-197,171,79,65,105,4,-53,10,43,209,6,-87,0,64,-366,85,33,-79,181,49,-227,-70,6,-44,-51,29,-116,100,-51,52,-261,-23,-493,-17,47,56,-47,95,-68,147,258,144,79,-286,84,134,-8,30,53,-72,-179,187,39,-87,-33,-245,-119,-134,55,16,55,12,44,-56,46,14,134,143,-179,11,66,148,50,54,197,-63,-9,282,184,11,-96,286,49,-297,42,-3,-21,152,34,-8,4,136,41,-192,-167,-314,110,-305,36,138,144,-203,379,-7,8,76,-97,-135,538,-10,91,-45,-332,35,100,-184,16,-42,-42,187,52,-75,103,-44,178,0,137,-191,85,-9,4,186,-125,197,17,-47,-410,304,100,-412,138,-81,-263,-202,-214,-160,402,98,134,-72,-78,-223,-51,20,145,114,173,49,-182,29,51,93,32,147,-134,122,-398,48,-114,-54,133,7,-57,37,4,-252,5,50,97,-37,-71,154,-96,264,-57,-303,11,274,-44,-18,102,-311,-182,46,-395,42,-4,60,14,-4,-54,47,-101,-657,-3,42,84,-124,-57,48,-53,-153,-5,15,-394,95,35,-4,-313,0,-3,-317,131,-181,0,37,-119,-106,111,-243,-78,-506,-2,-8,99,150,-242,54,-7,297,-285,53,-40,46,11,-191,-428,195,-226,-630,-76,41,-95,152,141,104,-60,40,-87,24,8,-13,-5,234,-73,136,-113,-655,-283,145,32,223,53,14,-2,43,-355,0,-106,4,-50,132,180,-171,91,48,67,68,-276,-71,61,-63,1,181,-368,12,-114,88,-343,-132,-186,-6,49,-224,-61,-320,-21,-124,46,159,236,198,-278,-59,158,258,11,1,4,-73,-42,-2,-75,-7,-182,-388,-99,-5,37,-105,105,141,4,-75,-118,-132,53,367,-10,34,27,57,96,-50,149,-171,-19,298,11,-55,51,10,91,49,62,325,-551,-41,54,-50,55,-255,125,-44,-191,139,-129,-245,43,-336,3,61,39,-3,16,-11,39,13,1,-341,95,-38,65,-267,101,8,96,-53,45,-165,-253,8,0,120,146,-487,-2,-13,-314,-277,-94,60,39,-486,5,156,47,550,33,-132,316,-8,411,-1,243,495,-178,78,146,148,110,-51,281,14,-85,57,15,47,-66,182,19,232,185,53,-3,-29,-196,10,151,83,-65,-143,-134,75,64,-120,-289,-67,-4,40,-179,59,116,36,-65,-453,138,85,-298,-638,245,-65,-258,49,-256,106,100,-92,237,85,23,62,-322,43,-224,33,56,-129,117,142,4,-43,1,28,-47,210,-88,-356,0,29,-6,30,-53,136,-79,-13,-3,107,10,162,2,-16,21,-102,131,35,160,-698,-276,8,112,-61,-78,66,-501,189,67,43,-66,-73,-451,-6,263,-319,-439,52,52,51,427,-90,-46,31,-296,-1198,-37,87,78,6,55,40,-2,-176,311,-105,-4,49,-107,200,-8,16,-48,-202,150,-75,106,43,6,-106,91,220,25,-177,9,-177,-247,0,-83,185,77,-26,-55,-40,-5,-97,-69,67,142,7,16,-53,16,71,-226,40,108,40,31,210,-43,37,-7,-177,-6,37,9,205,-63,50,34,47,-89,53,-3,-116,3,8,69,44,17,30,284,117,-47,36,2,-282,0,89,-7,-37,-634,-112,180,157,-6,-275,-181,8,44,3,287,44,-46,-61,0,66,66,150,-55,39,-290,318,-48,31,2,-29,-14,-10,-276,0,-216,-203,-54,109,0,57,-98,-203,104,203,29,320,197,40,-471,-39,0,43,1,63,-469,-98,5,-3,-72,-360,204,-21,-56,-330,139,-41,136,-43,10,-264,81,-418,-51,-172,231,-327,193,57,79,-98,70,-310,-79,-52,52,9,40,302,84,106,45,-114,-28,-10,-12,-52,-290,4,57,10,-285,-37,-1014,-252,-191,77,134,-1,60,20,-171,-53,-267,0,157,-217,-130,-325,696,39,35,87,123,-514,-28,-298,36,157,-192,256,-8,-47,74,152,45,-54,154,-6,145,-69,63,-52,-194,-65,-73,8,-68,-293,76,-339,180,-115,-15,112,180,61,29,-280,19,29,42,-218,107,-166,39,-87,202,-57,-1,-15,51,-57,63,186,73,-285,170,-67,48,-281,-750,-70,-160,-94,49,-498,47,-39,28,5,252,-11,-301,-239,-383,400,-173,27,7,-43,33,-133,33,124,2,138,-5,127,-56,4,18,-2,-73,-571,104,-51,69,22,-280,-37,-108,-52,7,-55,36,-3,32,-162,-120,499,-542,126,195,101,-162,-147,-175,70,62,69,29,61,-169,107,-48,-234,100,113,0,43,-205,46,-53,56,-48,37,-60,55,-154,39,3,-23,-358,-126,-3,0,-75,51,12,38,-67,266,-301,-14,-62,43,-273,-342,116,-95,4,60,-82,-261,-44,61,-53,44,-8,257,-153,96,-183,82,-198,-15,147,32,-13,-162,-46,-543,22,4,-282,-98,-43,-98,90,-233,-5,0,88,89,10,-13,-82,2560,85,45,42,-394,-255,3,-51,277,50,17,-215,93,-70,27,-59,44,-214,-44,-37,3,-194,195,-2,56,-91,66,7,-171,-37,53,12,33,102,-182,-74,0,-2,-301,-475,99,-284,252,-177,17,-639,38,-547,200,-184,-349,186,49,-10,0,-465,53,-362,-30,66,44,-156,77,-58,53,17,133,-126,20,128,-149,153,55,156,129,105,24,60,46,10,-209,57,-50,206,5,-19,108,39,2,-232,-66,68,25,57,-67,35,-185,131,-277,37,7,64,119,33,-61,-157,8,44,-70,61,36,-61,-242,24,-220,98,7,12,-61,64,-59,-52,-10,154,229,-69,5,163,-59,8,8,42,-508,97,-235,58,138,-32,82,-155,-7,7,-11,2,-38,43,121,-89,-10,40,-51,22,-1,36,1,38,-115,71,172,23,85,35,-174,138,201,-122,-156,106,189,-34,157,37,-279,57,14,-54,158,64,10,0,-86,2,123,-44,2,81,-44,-2,121,-68,-261,146,-107,737,534,36,138,-400,-37,33,-14,147,5,95,-58,-104,-433,-117,39,8,-47,-122,-67,13,-34,-173,-187,78,-8,83,111,-1218,-15,-8,-196,-21,-6,-570,-61,32,-50,35,7,-36,-12,-17,-10,209,-48,155,112,140,118,-251,182,-55,64,-276,131,-318,52,-89,52,5,140,68,-261,-223,205,58,36,-489,-83,0,42,213,-18,-295,38,129,74,-228,-11,-5,247,-44,70,-455,-6,-180,84,-77,148,11,48,-176,39,-153,96,132,36,302,234,-14,-256,-1,-431,-39,-47,-4,-65,-79,107,237,103,-253,65,30,-263,8,0,-87,38,7,47,20,57,16,56,-111,97,102,-68,-17,40,198,-154,-158,-181,-18,21,70,-15,-15,129,78,-128,100,51,-136,-160,363,40,-42,38,108,37,68,110,177,-86,-346,-15,-10,60,-54,53,-2,11,-60,70,19,-5,-10,128,67,81,-35,-7,-3,11,81,43,-37,31,-6,42,288,9,-52,138,0,107,32,55,-105,28,-76,63,-59,39,-13,-595,-2,-171,-324,3,-6,-7,-36,96,-867,4,-45,-79,84,-46,-289,17,-4,-47,-4,3,-106,30,-50,-6,-6,16,0,125,130,-41,-289,22,-37,219,86,30,-62,-75,0,-36,-72,-72,156,-105,75,36,-175,31,-262,54,124,80,-76,-255,5,-7,-68,-96,105,33,0,-54,-2,-14,-187,42,-238,64,17,41,-5,-39,188,46,-3,-9,108,-252,54,76,-62,36,-52,102,-13,318,153,40,-116,57,-61,10,36,21,-8,13,-86,-104,-209,-83,11,56,-56,45,-223,5,13,88,-167,150,-82,-60,-411,38,3,142,-96,-109,11,11,-45,-76,-12,47,-46,-16,-15,-361,-13,113,-47,208,0,14,-51,58,-66,33,4,36,-143,-75,3,0,-10,-64,-46,37,87,-258,21,15,21,30,486,66,11,-10,-18,220,-40,-654,-181,422,-44,-20,25,68,-217,-143,248,-281,210,73,-200,52,16,-45,283,178,-64,29,-13,11,-88,29,-112,-186,-46,9,-53,71,139,-28,-42,-201,170,41,-40,-1149,3,33,-187,35,20,107,165,36,-599,21,-13,188,178,-52,-45,48,839,60,76,-34,-74,-174,-3,278,50,-145,36,-142,-58,50,-87,23,0,6,-12,-131,-305,9,126,102,176,65,79,-70,-69,-226,-139,6,54,-174,60,-54,172,-206,4,120,-15,-260,1,0,63,-240,2,-91,-417,-434,132,243,-296,-84,0,-198,190,-47,8,-327,170,-5,59,219,7,-247,132,-46,81,-15,5,-74,59,-66,15,419,-114,-60,206,-84,-363,149,99,-40,2,-8,41,139,-3,194,-189,393,52,13,75,-72,22,64,4,-64,22,-104,44,-9,-206,-44,-503,-263,31,190,-113,-44,-31,-85,37,-7,84,-213,45,17,-96,-53,116,19,-72,-141,-53,17,193,-81,-291,48,42,-5,135,-71,16,130,-371,6,30,-261,47,-212,36,122,-156,30,16,-36,16,-138,100,-138,9,586,-153,95,12,-18,-11,-204,-161,-10,-404,-12,-8,43,41,144,30,237,-41,260,8,-2,-29,-17,-172,-190,-6,-54,36,-17,-579,-38,106,-106,15,118,-338,49,19,117,-127,-394,29,-375,-28,146,24,222,14,-71,75,155,100,150,163,-37,-74,134,-228,113,45,-76,409,-136,-107,33,251,-144,-2,34,24,-10,-7,57,-7,32,65,39,0,-141,-44,10,-3,-4,35,60,-331,-47,-50,-83,-1,151,-60,187,279,43,257,-13,-240,139,103,8,-89,43,-51,-126,-4,-42,-106,181,-78,6,-42,51,1,224,-44,-155,-49,41,-196,-29,-9,47,1,31,-49,62,-99,-7680,-16,-179,15,0,-36,0,-4,-107,-52,45,7,77,-67,18,-219,-12,-115,-119,-11,73,-2,-902,375,-333,-2,21,-43,64,-62,51,-272,127,106,34,149,-805,177,77,-81,14,235,51,5,33,-49,40,-141,-11,-241,-1,-5,28,2,-21,290,195,-15,23,21,-281,-51,36,-315,3,-82,58,130,18,40,-45,14,-18,-50,-220,-290,40,-157,178,-38,44,158,108,320,36,152,-201,-364,7,-57,81,166,28,5,8,-65,232,2,-245,350,55,-226,16,-38,32,-16,28,93,70,276,52,6,14,53,-400,134,-335,-130,16,787,99,115,109,-170,71,113,-64,88,8,-15,-62,-123,184,-87,-210,48,-7,-138,-10,39,-56,155,-3,-70,-10,-14,-140,123,-84,32,138,11,106,176,-58,-55,-185,47,-118,61,8,19,-47,-7680,-12,40,-64,47,-49,58,-170,165,89,53,-45,78,256,-16,-78,-240,-6,21,-79,-216,-342,-155,-9,83,75,-384,-11,-37,-9,153,-9,14,-67,91,131,0,157,46,-493,157,113,62,-38,-46,-48,58,-132,89,-55,-73,67,-127,-197,-82,-57,131,12,1,17,-485,-365,46,-42,-71,-4,-1,650,73,167,69,-64,14,119,65,18,43,-45,611,159,-16,27,-234,381,50,0,267,69,14,-247,-89,-13,71,53,29,-57,-25,20,41,-44,32,-284,-1234,-163,628,-130,28,-362,10,85,11,0,91,112,-11,-235,51,-59,68,12,-724,-40,-510,334,-11,-52,-244,-541,-412,179,-102,113,-403,-10,-3,6,-16,-215,41,1,34,-41,141,-275,299,97,28,-47,47,243,9,-16,107,-54,-544,-380,82,48,71,68,-155,5,124,-238,87,-15,164,-101,-117,55,108,-162,-77,103,-199,41,-204,65,-181,189,-62,-33,35,229,-220,218,-75,49,-65,55,-11,48,80,42,-159,49,-3,-8,53,47,13,49,244,63,-419,-23,-91,51,-48,209,-117,36,-52,13,-56,36,458,-483,-14,-26,-12,-23,-365,82,-8,-4,279,79,-176,-1,32,100,-51,232,-50,-132,-8,32,-162,16,79,43,90,-190,106,0,-42,-133,0,15,37,33,-350,-1,-79,21,-45,36,-60,-5,-5,118,102,7,111,17,-53,92,-39,71,-93,106,-43,-167,-117,18,-257,108,67,-266,-5,400,37,0,-9,-223,152,-14,-348,65,-36,43,73,52,-39,19,20,-94,-236,20,183,-224,-151,123,86,80,45,-75,-36,142,-16,50,75,171,0,30,-129,-55,-38,102,29,21,-48,40,-273,13,-15,169,15,-63,101,-24,-117,37,404,19,120,30,-214,20,-45,32,69,-110,150,-9,-5,36,-106,53,162,-131,-45,175,-40,-62,-225,45,-42,88,221,30,-230,-277,-8,55,430,0
};
static  int tree_thresh_array[2913] = {
-129,50,89,23,61,407,11,-77,24,-86,83,87,375,148,-78,33,75,-28,-40,64,-84,-563,58,41,374,285,129,58,59,-12,134,-29,206,192,-284,-200,347,-7,473,-210,-174,1522,79,71,162,-37,7,123,-322,8,110,-184,-269,64,596,25,27,75,81,-1136,37,-154,75,-45,138,-146,-46,-267,-173,7,-529,93,-139,107,91,-23,178,234,9,53,-108,-23,-67,-279,163,770,319,0,348,36,36,-96,28,138,-13,119,-34,-44,-100,15,-50,-19,314,117,80,-119,-119,80,17,-145,-66,-90,-93,68,-54,-138,69,13,342,1056,-149,-67,-15,-26,-15,-186,-98,-317,96,-10,491,9,285,-191,-205,123,373,52,65,9,130,11,-49,87,124,-184,-293,242,27,168,-3,-124,-52,153,100,233,-66,-722,721,-30,249,-119,-186,152,-99,-244,-123,30,-8,85,-27,76,-181,93,-4,70,-141,274,973,-52,43,69,-29,43,25,53,12,-447,33,128,130,27,107,52,107,-61,-159,-23,-6,-116,271,36,46,-11,46,29,130,103,30,134,-11,-155,-159,11,-221,-34,138,-460,-42,-20,-38,-48,-95,69,-98,-151,-252,88,-15,183,234,-46,-49,92,-81,65,-37,-18,521,195,219,-162,-275,546,-856,-268,253,-104,-142,-74,61,189,63,52,201,51,-76,171,-210,-290,68,-25,-161,0,-91,7,4,160,254,8,3,-28,-97,-420,-39,163,-53,-207,102,-31,175,0,37,45,-214,-942,-67,-70,-150,-42,-56,120,98,25,-91,-28,-166,-100,10,-80,-121,-61,-248,-52,-82,-125,-84,-7,-128,77,25,-41,-5,-16,-180,-248,-134,-603,-48,594,210,12,-178,528,-373,58,134,51,60,-137,583,-25,74,102,190,-36,167,-140,-162,10,112,143,18,11,144,106,-64,-31,85,245,159,88,-112,42,101,-65,199,5,-360,75,144,-835,-68,154,9,-60,-197,-120,-189,-114,-23,-41,46,212,136,-59,-140,-330,-3,397,149,211,-100,1340,31,662,-19,-75,318,77,-325,-278,-24,130,-122,-329,15,137,33,413,-40,29,102,1143,-181,-57,564,141,76,102,234,61,36,124,-180,75,43,-188,339,-36,175,-35,-17,33,396,-125,-249,-156,-39,200,-170,-82,-4,-137,79,-1,-1,-382,-318,69,-87,-52,32,421,-153,104,2,-1182,373,493,-302,-135,-179,741,-48,18,28,-97,-275,-267,93,-77,-28,-164,-166,-50,-111,-361,-32,-171,187,-577,-242,17,-8,1127,-108,167,22,130,-169,-393,-47,75,-139,-100,200,-84,-94,264,51,-49,-108,-104,160,-24,-139,166,104,817,50,160,-126,-145,-252,-48,274,-84,-91,4,146,125,22,-25,-124,-39,-233,16,138,-141,192,-35,268,-180,70,135,-86,121,226,-137,80,-85,133,-44,-40,-15,-171,-140,41,-368,106,-15,130,79,7,-180,-183,-440,-526,-183,-180,-502,-81,-63,-200,229,-40,55,26,29,19,39,-112,-161,-125,-6,781,21,98,-108,22,222,0,62,69,124,26,580,79,-70,-25,-65,-414,-30,181,-476,19,91,-49,229,-35,27,-74,-93,52,-56,128,381,106,67,-7,-36,92,-154,-22,-97,-108,50,395,-112,-64,-8,49,-63,-17,-86,-69,-167,-33,-78,-181,-255,-4,97,87,82,-117,14,233,-384,72,935,-749,-286,62,27,-65,53,53,-163,61,-84,-91,-32,62,-129,-126,-63,144,-73,-13,64,122,12,347,-240,183,165,154,248,-81,-679,282,46,6,326,-234,30,-73,387,22,28,141,-212,-283,-22,280,-274,-86,83,-192,768,-177,81,33,111,-375,-51,60,119,35,-224,-60,102,190,72,668,53,-64,329,144,135,49,176,124,145,-59,51,41,118,2,198,132,136,26,-23,52,24,10,-69,115,42,40,106,-104,-14,37,86,-209,-255,-135,-153,508,-36,-245,25,-72,72,21,-43,855,-108,241,-47,188,-93,-33,14,202,14,-126,354,-559,-23,-73,-81,-235,-340,-220,-34,226,-275,-97,22,87,-100,-80,-218,29,-92,-337,536,58,26,-188,236,-24,-213,190,30,88,-73,-152,-1,102,38,132,-25,210,-108,-63,79,137,118,0,-201,313,97,15,-366,-61,-45,387,2254,169,101,208,-69,-498,-14,474,151,47,-82,-117,-23,-227,-60,-29,-184,263,-60,184,-4,202,119,142,-25,63,11,-219,-78,-226,230,-97,7,-154,-98,112,473,-91,54,-15,-10,13,154,-56,-11,-157,-142,95,143,-54,52,14,412,0,47,-147,-86,60,-21,96,-102,-3,-165,115,187,162,206,-70,328,400,-63,-62,-67,-107,36,-110,31,-65,85,350,97,-160,-319,-69,486,639,-188,-42,392,56,9,136,-136,11,-269,8,91,-235,27,50,-33,150,-1647,-90,-53,-52,88,48,-80,263,446,-139,-15,-44,-47,106,17,-195,1,472,65,231,-43,508,-22,48,-176,-135,-87,-50,-69,-10,-184,159,27,-67,25,187,16,0,29,-204,-102,126,189,-13,-99,49,53,242,-168,-344,182,100,-17,100,-348,89,-68,133,10,226,-435,-32,309,-380,202,-48,351,331,-138,63,224,87,32,-153,652,-282,-138,-259,30,-39,-535,235,-29,127,146,-129,-79,-29,33,-178,108,131,-295,128,-1,11,134,-59,155,11,-170,-101,41,-85,91,-152,-43,227,88,0,59,441,147,-16,85,-122,106,43,35,87,305,19,7,4,115,-133,92,-88,31,59,114,23,-40,-16,-92,-162,-71,36,-32,110,-84,-294,-110,-194,-446,55,-27,-16,-154,35,-131,239,-167,-81,-18,68,38,-80,44,155,67,-81,45,21,-45,-43,431,224,72,-127,-234,-46,125,7,46,333,219,-98,27,-132,155,63,-181,-94,79,425,-77,158,93,-128,39,-201,-161,196,210,58,-375,26,146,207,-59,-158,-165,97,35,-544,40,20,-250,-1,13,86,30,101,-145,81,61,-94,-76,1846,48,-101,-183,-59,-100,94,-102,4,63,-109,5,-2,-130,-20,127,-137,49,-142,40,244,-267,-380,-168,87,-104,-168,-72,36,-47,-30,3,-125,-77,-33,-142,77,-77,-364,28,-115,-1,-443,65,35,-103,-55,-31,293,-55,12,-208,-36,877,57,174,81,-137,260,89,-321,58,-275,534,-189,-122,-1,-91,-6,49,99,-193,-101,89,770,-318,-199,-70,-11,-404,-89,250,-100,138,156,-82,101,-99,-108,-14,438,184,181,4,292,146,-85,1741,46,-62,-62,-77,-13,381,-51,-110,-96,-58,115,208,47,-60,935,454,13,349,90,-64,1356,36,188,-154,-335,891,60,214,37,32,-106,-12,234,-25,-165,-83,-70,-99,232,1,40,-215,-56,-124,-1230,-147,-225,138,-33,-22,12,219,-513,379,157,-8,39,98,-73,-43,-29,98,-75,64,-199,27,40,60,397,197,40,-163,93,27,244,28,64,-203,214,91,168,-88,-339,34,323,-369,-119,28,-33,80,-60,103,-64,120,-34,100,-138,-8,124,16,113,32,180,-132,85,103,26,-239,130,-124,61,-200,340,97,67,-48,0,78,-41,-57,-422,-391,-169,9,439,13,119,46,-49,-52,100,188,-111,164,94,-97,317,-54,-88,-292,-22,109,-161,106,200,151,323,118,25,-269,-282,-477,-5,-182,209,-129,86,-566,213,106,-49,-99,-103,51,234,68,-93,0,-31,385,-255,71,-90,-42,-38,-118,-86,-151,43,670,388,144,52,569,48,-40,-24,-5,132,-57,4,0,-1,16,58,-226,383,109,15,-130,-92,103,-127,-108,-56,-257,-183,-83,-32,35,-111,-67,-56,119,153,-102,-261,-38,-3,-89,-73,-101,643,282,-45,-56,-126,87,381,121,0,-172,-92,-52,114,-113,-25,-83,-50,-165,121,28,66,205,8,102,-64,152,-324,-70,134,-481,493,17,-297,725,34,-53,77,87,259,-132,-96,76,127,-45,-52,-52,281,21,-158,25,717,476,-94,-210,920,38,-485,154,90,-148,-540,-170,-135,64,-161,-277,-109,163,412,-331,-87,-43,3,14,77,-104,-16,-3,-202,47,141,-33,-91,-126,179,176,111,38,386,697,-193,458,-58,139,88,89,337,346,-225,-265,-93,224,0,402,-29,205,-23,57,87,-119,1,7,35,260,-114,200,-120,508,32,124,103,41,-68,-11,173,-198,118,-164,-168,48,-87,-97,73,-178,-37,194,-58,15,14,-119,-26,-123,32,36,393,-134,-54,62,49,-312,-49,89,-11,-199,-42,-27,35,81,90,-213,80,94,-61,-204,-283,19,-138,-66,-205,233,167,-12,-133,403,-156,-188,-489,-493,289,34,93,2,141,-18,96,52,-46,-170,-382,-111,-89,-39,284,127,-203,-83,-62,-207,-84,-126,-18,-187,68,13,100,-326,182,-513,73,78,163,55,66,45,160,-39,114,-96,110,1,-168,27,196,-12,-35,-30,-7,-353,191,0,-66,187,-112,-113,31,-2,452,281,7,787,644,-202,212,204,-174,-153,-152,57,-1,131,-17,40,382,70,34,-57,-31,114,-77,-76,-149,132,244,40,-144,11,33,364,-123,-89,154,11,-43,531,-72,-315,-78,-209,8,104,-97,-26,-154,886,-54,291,229,165,258,42,256,-161,-22,441,69,127,-94,-45,-19,-71,77,29,77,127,85,46,-233,295,-81,-68,-163,110,-16,93,-282,176,35,59,-47,-449,185,-110,73,206,-122,155,760,-16,41,-47,-26,43,-83,9,-6,35,-99,304,69,-100,123,49,355,-173,-10,-232,96,-85,29,1399,25,133,0,2,223,-41,-77,-21,-44,-204,49,-9,12,16,-30,212,75,716,221,-1312,-110,317,97,47,133,-181,-239,79,-183,-247,47,114,267,39,10,130,135,194,-80,-224,-92,438,-149,57,85,201,148,168,64,-66,-12,-564,-39,-101,-571,-336,15,-27,-65,-208,68,65,14,-352,135,-16,-98,35,-113,-796,-445,-79,12,242,-222,-161,337,-30,30,28,-63,-11,-289,-47,2,-151,-133,-306,169,-118,189,1041,9,-339,-46,-528,157,417,-78,-248,101,109,61,107,-153,-21,72,-139,-65,80,-424,-78,-52,-66,-522,78,133,38,20,169,-312,-298,244,83,-328,-73,46,-104,-3,-59,35,224,-443,94,11,-8,-92,340,-27,313,22,-42,113,-95,-227,-166,-30,69,-151,-80,-96,-177,-90,67,-134,292,3,-34,-70,-76,-37,75,-206,-96,-111,26,95,53,-27,-92,-261,-204,27,-228,1308,331,-61,191,24,-140,-143,12,-57,-27,-216,-8,75,51,52,-73,7,-60,-61,59,-44,-37,18,96,130,-75,80,1685,-170,-42,50,-35,66,-42,-50,-206,202,-168,4,-205,-35,-205,418,-58,42,-48,295,-77,-19,-238,4,-202,-487,-74,-32,212,273,-56,-72,-172,-55,-45,-503,195,130,17,-251,-11,-280,424,64,-40,-36,-261,159,-163,206,189,254,-265,112,1,-17,193,51,188,813,68,8,91,-56,-31,-54,200,83,-68,-693,-464,-318,-63,-270,34,145,-159,-40,-94,12,53,60,-246,212,101,-49,-404,481,-77,-116,53,-477,-15,127,103,-115,149,-296,-170,195,269,56,-113,-65,303,-3,73,-10,-37,201,-125,410,13,145,1,103,-21,6,-66,-121,-6,-221,-271,114,118,-83,50,177,762,130,57,-25,-22,68,106,-109,-69,24,-11,-179,211,33,-216,215,-51,47,-97,-252,-7,144,-75,-157,408,345,164,241,612,2,-136,38,176,-276,-1276,121,43,-118,-23,116,-118,102,49,-174,42,-283,-19,-57,-62,-41,-208,125,-45,-25,321,-41,127,164,66,-186,-74,-57,-158,129,-44,49,289,2176,-60,-9,204,-195,-374,155,-63,-63,-235,-24,-286,-102,70,-181,180,65,-379,290,236,-67,98,51,-222,-54,25,118,-90,21,352,-35,27,-26,36,13,169,-27,125,-30,364,29,-74,-105,447,-46,-235,420,110,-55,-1317,837,-288,154,-287,258,149,16,-201,-293,-155,-12,79,46,-137,376,15,52,-586,-396,-36,65,288,-155,2113,-134,-148,27,-66,34,-563,724,32,449,-124,-94,-12,-136,54,60,-54,-66,-118,-415,154,-1169,629,0,-84,153,234,20,-223,103,99,147,-409,345,65,138,-253,286,-114,-52,88,411,106,116,158,-190,-175,15,173,80,3,-17,69,147,-290,-258,121,155,-136,-129,4,-293,-332,18,-172,-268,74,-211,-193,71,-103,-166,-154,-54,0,-46,152,13,-92,95,-57,30,-47,215,215,-48,392,-65,142,142,66,-181,-22,-269,-300,67,-37,24,-3,841,-69,-78,-106,-89,-98,193,-188,108,-199,-76,51,-4,-201,-71,-60,-938,-520,42,28,1188,-975,255,19,-113,-69,-203,-306,131,-386,-63,-16,12,-41,-158,141,-19,2,144,-96,-7,-68,2705,449,55,-93,-335,-215,-103,-179,-74,96,140,105,-108,249,592,218,46,-9,-121,111,-14,-51,-363,-78,-68,52,-55,77,-26,-99,-121,20,-23,68,156,-233,-220,-10,1217,-364,-230,151,-34,-9,-293,21,-25,63,106,-49,-277,-60,102,77,-87,38,940,-155,-55,148,27,395,-146,44,324,134,-113,-16,30,459,-486,-170,-114,-512,969,-120,154,295,40,213,-179,-157,-404,-499,-490,126,44,232,4,-115,-655,20,192,99,287,40,-230,449,85,143,163,-19,9,103,-131,308,-75,-52,-108,90,600,14,38,-35,-160,101,-143,-75,-55,25,-75,58,-133,-10,-3,194,-28,-176,84,-91,204,253,-171,-13,99,-70,-16,-58,-37,-506,-336,268,-129,-326,-77,-20,-50,5,121,115,124,-70,-344,30,231,-21,-61,224,-80,-275,-58,122,212,168,-526,9,31,186,-322,32,-55,118,-112,-298,-57,177,120,-130,155,-91,241,127,153,-85,-104,-29,-208,-84,43,130,-97,-24,97,114,59,445,-57,16,-20,-348,8,1490,904,-66,-197,71,-140,-18,528,124,180,12,-107,-114,48,6,-14,-129,-131,636,360,-6,38,152,328,-3,-20,489,-18,-121,109,181,-99,80,22,-950,-104,-26,16,-146,-58,-517,281,351,63,332,75,-353,296,-320,396,-163,-39,1,49,-85,237,0,-70,125,-3,360,-159,328,161,84,-274,191,321,271,123,70,82,135,-60,-42,-117,-19,1318,-69,-30,-122,-46,19,20,792,22,-279,-143,20,390,-257,-697,43,-170,520,338,349,227,18,53,237,-93,197,105,28,-141,120,-9,-392,68,106,1,-27,77,0,-312,205,-11,66,154,-50,237,19,187,87,642,-42,9,-95,-28,-140,-86,8,-17,-58,-33,-38,-155,19,-18,21,-39,184,58,670,10,-15,-103,-79,59,211,-155,-121,-160,-119,-342,1720,245,-77,-24,-238,-50,190,4,-363,-94,176,0,36,-72,25,93,-88,252,-319,46,-104,-155,40,-56,34,-292,40,450,144,-457,-465,68,-32,-135,51,-172,103,-99,-50,-466,-347,-100,-36,45,-120,26,57,-54,1164,-971,-457,523,-257,71,5,112,-178,45,85,-91,133,50,34,153,-57,233,20,-100,-46,141,99,-32,143,18,-340,-57,5,-68,-314,-969,-411,5,90,-460,67,278,65,19,27,19,10,11,-123,58,-247,-81,127,74,4,-150,49,306,-961,577,25,-234,-226,-88,105,-53,9,36,-36,16,102,-24,17,-138,182,-167,161,-288,146,-175,-86,-644,32,96,305,-2,-66,-135,199,9,185,438,-165,130,-235,55,292,-61,-41,15,66,-164,110,214,-78,-15,310,-90
};

// ---- file: haar_dataRcc_with_partitioning.h ----
static  int stages_array[25] = {
9,16,27,32,52,53,62,72,83,91,99,115,127,135,136,137,159,155,169,196,197,181,199,211,200
};
static  int rectangles_array0[2913] = {
6,6,3,8,3,6,5,11,4,6,6,1,0,9,5,5,13,7,10,2,18,0,9,7,5,0,5,9,9,6,3,5,18,1,0,5,2,8,2,0,20,0,18,0,12,0,12,8,5,1,17,0,6,6,0,4,2,19,1,0,1,14,3,6,8,15,1,4,0,3,1,5,3,14,1,11,5,6,9,9,7,10,8,3,6,0,4,11,0,11,4,11,9,9,1,10,6,7,0,6,1,6,2,20,0,2,0,12,5,11,0,12,6,8,0,10,3,2,2,3,5,9,4,4,6,3,0,6,6,3,1,8,0,12,0,19,0,6,7,9,0,4,7,18,0,18,0,16,2,9,2,14,5,15,0,8,7,0,1,14,7,10,4,10,1,10,5,8,6,7,0,1,5,12,6,7,0,2,2,14,8,14,8,17,6,13,3,9,0,0,6,7,10,1,5,9,20,2,5,0,5,0,6,0,1,2,2,0,9,7,11,6,18,3,18,1,11,0,13,7,11,8,13,2,3,0,9,4,7,0,7,7,3,0,3,4,13,9,5,1,10,0,1,4,0,2,9,5,17,1,14,3,15,9,17,3,7,1,10,0,15,3,12,6,14,1,13,7,12,6,6,7,7,8,7,0,15,0,15,7,15,0,8,0,3,0,9,10,7,5,14,2,0,4,9,0,18,0,8,8,11,7,12,6,15,5,9,7,14,2,5,9,12,9,3,6,12,1,12,1,10,3,10,0,6,6,5,4,11,7,3,2,3,8,16,7,18,0,18,3,18,0,5,6,10,8,15,3,15,2,8,8,15,4,13,7,18,1,14,1,4,1,10,0,15,3,15,3,15,0,4,2,14,6,17,1,16,7,12,4,10,2,15,0,6,1,6,0,8,9,6,0,16,0,14,1,5,4,16,0,10,9,9,3,6,8,0,14,5,9,0,3,3,20,0,8,6,9,1,9,7,13,7,14,2,18,6,18,7,18,0,9,0,17,1,14,6,3,9,12,6,6,1,10,5,5,0,0,1,6,4,1,5,0,3,2,6,14,0,14,0,0,0,5,3,6,0,13,7,9,1,13,5,16,4,0,5,12,2,15,0,12,11,9,8,12,3,6,7,12,10,16,4,2,5,10,8,6,6,0,1,3,3,0,10,8,5,0,14,9,14,1,15,0,17,2,3,9,18,0,4,2,14,0,18,5,21,6,8,7,21,10,15,0,11,7,12,6,14,6,3,3,0,10,11,6,16,3,16,0,10,0,13,7,5,0,6,3,8,2,15,3,17,1,19,1,4,6,15,0,15,3,8,6,5,10,10,0,15,0,12,9,12,6,15,0,11,6,10,0,3,3,0,0,12,2,7,0,3,6,5,11,0,18,3,9,0,13,0,13,4,13,5,7,6,14,4,11,0,13,2,10,8,14,6,8,7,8,5,3,0,5,0,3,1,5,1,1,3,6,6,14,1,11,10,11,7,12,2,14,6,14,0,5,1,13,7,12,0,7,7,8,1,13,5,14,4,12,9,11,5,8,1,9,3,12,8,2,0,14,2,2,6,5,1,7,3,9,2,18,3,20,2,1,0,19,0,18,0,7,0,10,8,4,2,7,3,16,5,10,4,2,6,1,12,0,15,5,8,1,17,8,17,7,15,2,10,0,20,1,15,0,16,2,10,1,11,3,3,10,3,0,12,8,10,9,4,0,9,8,13,5,0,1,19,0,16,0,12,7,9,0,1,1,13,0,12,4,15,1,3,2,13,1,3,7,12,0,13,0,15,0,13,5,0,2,0,1,15,0,6,8,10,8,12,6,13,1,15,6,13,5,6,0,11,9,10,8,3,10,4,9,5,2,13,8,12,2,7,3,11,0,3,1,11,9,9,1,6,1,8,2,11,7,11,5,11,5,4,2,7,9,2,8,3,8,0,6,0,20,0,0,0,14,0,1,5,4,8,6,2,11,2,5,9,8,6,10,0,18,2,3,2,13,6,9,7,18,9,6,0,13,0,13,5,11,4,6,0,12,0,12,5,5,5,3,7,13,2,19,1,5,0,2,5,1,3,8,6,10,1,8,3,5,4,6,7,0,0,3,2,7,5,10,9,18,4,10,9,11,7,4,2,13,7,3,1,8,3,5,8,9,0,6,0,13,5,1,9,9,5,4,0,16,9,8,8,10,7,5,2,18,1,6,9,10,6,8,1,9,6,17,2,7,1,1,9,3,16,0,16,0,8,5,4,0,6,0,20,8,6,0,6,0,20,0,15,0,13,5,5,3,6,6,10,1,11,5,12,5,13,0,8,1,2,2,17,1,7,0,15,1,9,0,16,4,7,9,12,8,15,3,15,1,15,6,10,6,11,6,11,9,3,2,3,3,4,0,10,0,5,8,11,5,5,10,10,7,1,0,12,2,12,1,12,0,5,6,14,5,9,1,8,3,12,0,8,4,12,9,9,1,8,3,7,10,10,3,12,3,10,5,7,6,12,2,0,0,0,5,1,9,2,5,4,2,7,0,2,3,6,9,15,8,3,2,19,1,14,4,14,6,14,4,0,1,20,0,8,7,16,5,11,10,10,7,14,5,12,6,11,1,15,9,10,3,16,7,15,0,13,2,5,1,5,1,14,4,14,4,18,1,2,0,12,3,16,3,9,9,15,7,17,3,3,0,2,0,13,5,5,5,18,0,3,2,2,5,6,6,13,5,6,0,18,0,12,6,0,3,9,5,4,10,8,2,8,0,18,0,9,1,2,7,8,4,10,2,15,3,15,4,15,0,15,0,10,1,7,10,8,3,7,0,10,7,5,5,6,3,16,0,0,0,10,10,4,0,9,3,6,11,5,4,2,7,1,13,5,11,6,3,0,10,6,6,0,18,0,11,0,2,1,18,0,17,0,0,0,10,7,15,3,15,0,15,0,5,0,9,3,9,5,9,8,10,5,9,7,11,9,6,1,16,0,8,0,3,0,6,0,14,1,13,4,12,2,16,3,14,8,9,0,4,5,15,0,8,1,14,4,16,3,18,1,11,0,15,7,22,0,18,0,3,6,7,2,4,9,4,3,18,2,4,7,7,6,12,0,8,2,13,5,9,5,3,2,11,3,9,1,15,1,9,6,10,7,10,4,0,3,19,0,17,1,18,0,3,2,9,5,10,8,7,9,5,8,8,6,14,6,8,2,2,0,0,7,6,14,4,2,6,9,7,6,5,18,0,18,2,5,11,15,7,7,10,10,2,14,8,14,3,14,1,3,1,18,0,5,6,14,4,15,0,0,3,3,0,1,0,2,2,0,10,10,6,11,9,2,1,13,6,10,6,14,6,9,8,17,1,14,7,3,1,14,0,12,0,10,1,15,6,6,8,14,0,10,6,7,9,10,8,7,4,17,3,10,2,3,4,15,7,15,1,11,5,10,4,0,4,10,0,6,1,18,4,6,1,1,2,12,0,10,7,9,4,6,5,10,8,9,3,4,6,8,0,11,2,8,0,0,2,4,10,7,9,17,0,16,1,12,3,12,3,12,8,10,6,13,1,7,2,0,9,0,9,2,13,4,20,8,0,0,3,3,13,5,13,2,9,8,12,8,8,11,9,0,9,1,12,6,13,1,9,2,15,0,9,2,15,4,17,0,15,0,9,3,16,0,13,0,0,5,8,4,10,8,11,4,14,2,4,8,1,7,13,8,4,3,14,8,3,4,3,9,9,7,12,6,18,3,18,0,13,5,11,3,16,5,7,1,2,3,17,5,13,0,15,1,12,1,3,6,5,9,11,4,6,5,11,5,1,7,6,6,11,5,6,0,2,0,9,9,12,0,1,3,2,5,10,8,5,6,7,5,4,0,9,9,6,9,10,5,14,5,14,0,16,4,8,0,13,0,0,6,10,1,0,2,2,1,10,7,9,7,3,7,3,8,3,6,1,5,8,3,0,2,4,9,9,14,7,14,4,17,1,14,0,9,3,14,4,7,7,14,10,14,5,4,9,3,4,16,4,6,10,9,6,5,3,6,0,6,0,4,0,15,0,6,3,12,6,6,9,10,7,14,2,11,1,15,1,10,4,7,10,13,3,13,5,10,7,15,5,8,7,12,6,7,6,5,3,3,0,14,0,1,1,7,9,10,2,8,0,5,2,14,3,9,4,0,7,11,0,14,2,11,7,6,4,14,4,13,8,17,4,15,3,12,0,16,2,15,0,18,0,16,5,12,0,5,0,8,5,10,6,6,3,12,0,0,5,10,9,8,0,16,3,6,0,14,0,2,4,12,0,6,1,11,3,15,6,9,4,7,5,11,7,8,0,10,0,20,0,12,1,5,1,6,5,11,1,11,0,3,1,0,1,11,4,12,4,13,1,9,0,6,6,10,6,13,2,11,1,1,0,13,5,18,0,11,0,12,1,7,8,6,2,14,3,15,5,11,7,11,9,4,9,17,1,7,6,9,1,19,0,3,1,2,4,6,4,15,3,8,3,15,3,5,1,14,0,15,3,9,1,13,1,6,8,0,0,4,1,14,1,10,6,10,7,14,6,8,3,5,0,9,4,10,8,7,8,11,7,4,0,7,1,11,6,7,7,9,0,7,1,9,0,1,1,9,3,9,9,16,2,13,1,14,3,13,7,4,9,7,0,15,1,14,4,15,3,0,7,1,1,6,1,15,3,4,0,6,4,6,0,3,4,20,0,11,6,11,1,11,1,11,0,3,7,17,5,16,0,6,0,3,2,10,10,11,9,5,6,10,0,6,4,14,0,1,8,13,10,7,8,7,2,11,7,13,0,12,8,12,6,14,0,14,0,4,1,4,0,3,9,0,6,2,18,0,11,9,7,1,18,5,18,0,9,2,10,5,9,7,10,4,6,0,3,9,6,2,19,0,5,5,1,8,6,9,2,5,8,9,14,2,10,1,11,4,6,5,9,7,7,2,5,7,0,0,16,5,5,0,11,0,4,2,3,2,6,0,3,0,5,1,19,3,19,7,9,0,15,1,9,7,9,7,9,7,9,10,5,0,9,2,15,1,6,0,6,0,13,2,13,5,11,7,10,3,14,4,4,5,7,2,10,3,16,0,0,4,10,7,13,3,16,2,3,4,4,3,8,2,14,7,4,0,10,5,0,0,3,9,0,6,8,2,12,5,14,5,6,7,11,7,13,0,1,6,10,3,0,0,3,7,10,8,12,6,16,2,10,8,14,0,11,3,10,0,19,4,4,0,6,19,0,18,0,5,10,9,0,7,1,8,0,13,10,13,7,4,0,0,6,7,0,13,3,12,2,9,6,14,5,10,6,14,4,14,0,13,2,6,0,19,1,15,3,11,7,14,3,20,7,7,2,15,7,13,5,3,5,9,3,19,0,20,0,7,4,10,0,7,0,13,1,7,0,6,8,7,1,16,5,7,4,6,9,15,6,12,7,6,10,10,3,4,2,13,7,1,0,0,3,3,3,13,2,10,6,2,2,10,8,13,3,3,2,14,3,5,2,17,2,0,7,15,5,11,6,11,5,15,4,12,6,5,9,12,4,4,5,14,9,9,9,1,2,12,6,12,8,7,0,4,2,15,0,6,6,8,1,6,7,10,3,15,1,15,10,15,6,15,6,16,2,2,6,9,2,16,0,15,8,15,0,12,3,13,0,10,7,4,0,6,3,9,5,5,3,5,6,0,2,8,18,0,4,6,4,4,7,0,13,5,3,0,14,0,14,0,6,0,14,6,15,8,4,5,7,10,5,1,18,0,13,0,12,7,14,0,14,2,14,1,3,5,5,8,9,6,5,8,6,3,13,3,12,7,13,7,11,7,5,8,4,0,0,0,9,3,12,8,10,5,2,6,8,9,15,1,11,5,6,1,2,7,10,3,7,7,9,1,13,3,8,6,4,0,3,2,16,4,16,1,15,3,18,0,4,2,17,1,8,0,11,0,19,2,3,4,7,3,8,4,10,3,15,0,6,9,12,8,16,8,6,0,17,0,9,1,7,7,7,3,9,3,6,1,16,0,0,3,4,0,20,1,18,0,8,4,7,6,7,9,8,8,8,4,7,0,12,4,8,9,14,7,4,10,12,0,16,5,10,2,2,7,3,2,15,2,10,4,15,0,18,0,15,3,12,0,11,9,12,3,5,0,8,6,14,9,6,6,1,12,3,9,4,11,3,5,4,9,8,16,3,6,8,0,0,5,0,2,9,9,9,5,2,6,5,18,0,10,6,3,5,17,0,9,5,11,0,6,4,9,5,6,7,11,1,18,0,0,0,6,0,19,4,19,1,3,0,12,7,12,2,14,0,15,0,14,0,5,0,3,5,4,3,4,4,16,6,13,3,12,5,10,6,6,0,12,0,12,9,6,0,2,0,6,0,0,4,12,6,15,3,6,5,12,0,11,10,9,1,6,1,7,0,10,9,10,8,9,1,0,6,8,5,4,4,8,1,10,1,0,1,5,0,9,1,8,8,5,9,6,2,10,7,14,8,9,3,5,4,6,9,12,6,9,5,5,9,11,2,15,3,3,5,16,0,13,1,15,5,6,2,14,10,13,3,13,3,11,0,0,6,18,0,15,1,15,0,3,0,15,0,12,3,16,0,9};

static  int rectangles_array1[2913] = {
4,4,9,18,5,5,8,14,0,6,4,8,2,9,6,0,11,5,8,5,0,6,6,18,7,3,8,6,5,6,21,6,1,1,8,6,12,1,13,1,2,5,4,3,1,6,1,1,5,10,13,4,4,5,1,10,17,3,3,1,7,7,12,6,7,15,17,4,1,0,5,8,14,15,15,6,5,0,0,6,0,6,6,8,0,0,7,6,20,6,13,6,6,12,22,7,7,6,14,18,1,16,4,4,4,16,12,0,10,8,8,0,0,14,16,8,19,10,9,0,6,5,5,14,13,16,0,6,1,2,8,9,12,16,16,1,2,8,5,17,7,1,5,1,1,0,0,7,10,9,15,7,6,8,8,6,7,14,10,12,0,0,3,0,1,0,0,18,3,3,10,10,11,11,11,10,13,4,0,0,0,1,1,6,14,14,18,4,17,2,8,5,5,4,0,15,0,0,22,0,6,1,5,1,2,8,12,12,7,1,2,4,1,15,5,5,0,4,0,0,6,7,17,18,18,20,15,4,6,14,9,6,6,10,16,6,0,0,7,20,5,2,1,0,0,21,7,7,8,15,15,0,6,1,2,14,6,2,4,17,7,1,13,13,6,12,1,0,2,2,18,6,7,3,4,1,2,3,3,0,8,8,14,14,10,0,1,6,9,0,0,0,11,9,8,12,12,12,7,7,0,0,3,3,2,10,14,13,5,17,18,0,4,4,3,1,16,3,5,2,14,21,14,2,4,6,8,14,6,6,7,3,12,6,6,9,6,6,2,18,2,2,10,0,0,0,12,6,12,5,8,6,12,12,1,1,9,21,13,13,6,0,7,4,0,0,12,12,12,12,14,13,15,0,1,1,14,3,1,0,6,10,15,1,9,0,15,15,7,12,8,14,10,3,17,13,0,3,5,7,6,8,15,1,8,5,2,7,7,6,1,1,18,4,16,7,7,2,20,12,2,0,0,15,8,3,5,4,6,4,4,4,22,14,14,11,11,9,12,0,0,17,17,6,6,4,0,0,15,8,12,2,20,0,13,10,3,5,7,0,0,1,17,15,15,16,13,0,4,5,4,0,0,7,7,5,13,0,7,2,2,2,6,5,6,0,3,7,7,7,6,14,0,2,4,3,4,0,6,0,10,21,6,5,2,7,7,17,18,6,18,18,9,9,3,17,15,17,3,3,0,0,0,0,3,11,0,0,8,12,0,6,0,2,7,6,1,4,3,1,0,0,13,5,1,2,10,4,10,10,14,7,1,1,5,9,16,12,14,13,5,5,5,5,1,1,15,9,2,2,0,0,17,5,2,2,7,7,0,0,6,7,6,6,3,0,9,7,6,0,14,14,12,2,16,16,0,0,8,5,13,14,6,0,1,6,0,11,20,11,12,11,11,4,15,0,0,2,0,18,7,14,2,3,6,8,4,8,2,16,0,2,11,3,16,17,13,9,7,8,2,17,18,3,6,0,0,10,11,5,6,5,3,21,10,4,8,9,6,6,5,4,4,10,10,2,2,4,4,4,4,18,18,2,2,5,8,7,5,14,14,11,9,6,19,5,5,4,6,10,7,2,18,9,2,0,3,2,5,0,3,14,9,11,5,6,6,5,5,10,10,0,3,1,7,12,6,7,18,2,3,2,0,0,5,22,10,1,0,3,15,13,8,8,2,5,8,8,6,0,9,0,5,5,5,4,16,16,9,13,10,9,0,11,5,5,6,6,5,6,13,5,2,15,17,13,10,6,14,12,10,0,11,2,4,0,17,6,10,16,16,16,11,11,3,4,0,16,15,15,17,8,6,8,8,5,6,7,5,9,8,8,11,0,2,0,0,3,10,0,3,4,0,5,0,4,10,10,11,10,12,21,20,15,17,12,6,13,16,5,1,19,1,2,10,11,9,10,7,0,6,0,2,17,0,0,17,7,3,2,2,1,16,13,15,5,13,2,14,12,13,8,12,16,1,2,6,7,0,8,12,21,0,6,4,7,8,8,14,11,12,0,10,2,0,6,6,11,11,16,6,16,7,10,4,18,0,3,0,1,1,16,3,16,3,9,4,7,7,4,12,3,6,6,3,3,6,1,17,18,5,6,2,7,0,8,7,5,9,14,14,8,11,0,0,1,11,18,9,10,6,14,7,4,16,13,8,16,0,5,5,6,7,10,12,10,0,4,10,6,11,8,11,9,12,4,4,9,5,9,0,9,9,4,3,1,6,18,8,19,8,8,12,7,1,12,0,0,3,6,11,8,17,14,3,3,0,0,11,11,11,20,6,0,3,5,12,0,0,5,12,13,1,0,2,2,10,10,6,12,14,1,11,15,14,3,6,6,1,1,15,15,1,3,0,3,5,0,1,7,3,3,7,7,13,5,1,1,15,2,5,15,12,12,0,2,7,9,5,5,17,18,17,17,17,0,0,14,13,20,9,10,8,10,10,15,5,13,17,12,9,9,7,4,8,7,15,8,17,17,1,7,5,4,16,16,0,6,4,0,1,6,9,2,2,3,1,9,10,0,4,1,8,0,22,15,0,7,14,14,5,5,5,5,2,2,0,4,16,0,12,21,5,5,6,5,14,5,8,6,13,10,13,0,1,4,3,13,13,13,16,16,16,16,0,1,2,15,2,2,2,2,0,12,2,10,3,7,11,8,0,0,3,18,18,3,7,3,17,5,6,16,2,2,4,13,1,12,7,5,11,11,4,2,0,0,0,0,2,13,7,8,14,0,15,9,4,10,5,18,18,20,8,8,5,5,6,0,4,4,12,0,12,12,15,15,0,0,6,12,4,22,7,0,1,16,7,10,2,9,2,2,3,13,14,2,4,1,6,21,5,6,6,3,10,15,4,0,0,0,7,0,10,2,5,0,0,2,2,0,0,2,10,7,0,3,7,6,2,6,0,0,0,17,17,14,15,15,14,8,7,8,0,8,5,6,7,8,8,10,5,12,9,14,9,18,6,6,16,16,11,6,7,6,7,10,12,14,12,13,0,1,16,17,2,0,0,2,1,8,8,5,5,4,7,15,2,1,1,1,1,11,11,6,10,9,18,21,12,6,6,4,12,14,7,13,7,12,2,0,9,10,10,15,16,2,5,0,16,12,15,10,9,11,7,15,8,4,6,6,7,8,8,3,3,2,2,3,3,3,3,11,11,8,6,18,4,1,11,12,12,0,12,20,4,2,8,7,0,11,0,7,17,10,5,11,4,0,4,4,18,0,4,4,11,6,0,9,15,7,15,12,12,12,7,7,4,4,11,16,15,15,1,21,20,1,17,16,16,16,10,18,5,2,7,6,0,7,1,18,2,7,1,0,3,15,10,3,0,0,0,4,17,20,3,3,6,6,9,18,0,1,0,10,16,16,12,16,6,6,9,9,4,8,3,3,1,5,6,10,4,2,4,4,8,8,13,13,13,2,2,2,0,2,5,3,21,10,10,8,8,8,15,13,8,13,15,4,15,15,11,6,2,2,1,7,6,11,16,0,11,9,5,2,3,15,0,0,1,0,2,2,2,4,1,1,5,4,5,5,5,0,8,6,3,18,8,2,5,4,6,1,4,6,17,6,6,5,2,2,6,3,3,3,1,2,2,14,8,0,0,6,5,7,16,17,8,13,17,17,0,2,3,17,17,18,15,13,14,18,13,14,2,9,3,2,4,5,5,6,4,4,7,9,0,3,1,22,10,0,0,2,13,21,1,7,0,1,1,2,5,2,2,11,7,9,9,4,6,21,21,5,10,0,2,0,12,13,0,1,13,21,3,10,3,2,1,0,1,18,15,10,9,11,7,2,2,4,5,7,4,0,1,0,0,1,0,5,0,14,14,18,0,4,2,1,8,15,10,17,4,0,6,9,9,11,2,0,15,18,17,11,11,9,16,16,1,2,15,11,18,14,7,8,1,14,7,12,0,0,0,0,8,8,21,0,0,6,6,0,0,16,0,0,1,1,13,0,5,10,7,10,6,2,13,6,13,20,4,6,0,13,16,0,6,5,15,7,6,6,0,0,18,15,3,3,14,14,15,17,0,0,16,0,7,8,9,0,1,4,1,2,1,0,17,14,15,21,15,15,6,3,1,4,1,2,2,2,7,3,6,1,8,0,16,16,19,16,8,15,18,18,3,5,5,6,2,6,2,8,5,8,0,12,12,7,14,6,6,13,10,10,9,3,0,12,0,0,2,2,0,0,6,6,1,1,0,10,9,9,7,15,10,4,2,0,9,2,0,15,14,1,0,3,2,4,16,16,18,0,3,12,3,3,8,15,13,6,9,0,3,3,5,4,7,0,0,0,1,2,13,13,2,9,6,8,7,12,10,6,12,15,14,8,10,10,9,12,12,12,12,12,10,15,10,1,4,5,10,12,0,10,2,20,10,17,0,0,2,2,7,1,14,13,6,2,6,19,15,5,6,6,0,0,5,5,1,13,1,17,13,18,14,1,4,0,5,5,1,1,0,4,6,18,18,15,7,7,9,13,15,15,13,13,5,18,19,19,19,14,0,1,9,15,0,10,10,8,5,5,4,4,7,6,4,0,1,1,14,3,3,2,2,7,22,16,3,10,16,0,5,8,1,6,3,13,12,5,5,6,1,19,14,6,0,0,1,8,7,12,1,1,7,10,7,3,0,0,5,5,0,0,2,1,0,17,18,17,15,15,14,10,18,12,10,10,2,6,14,14,1,21,1,16,1,0,1,1,7,14,1,0,1,1,0,14,7,11,5,6,1,1,9,4,16,0,5,3,12,11,10,9,2,6,8,1,1,14,16,16,4,19,8,1,8,8,5,6,12,12,6,6,0,1,6,6,17,22,12,12,12,14,6,7,3,1,1,2,2,12,2,6,6,0,0,6,1,7,7,20,6,2,3,4,1,0,2,2,15,17,6,0,4,6,12,14,14,18,3,3,6,5,4,16,8,6,5,1,1,10,2,0,1,6,1,4,0,16,16,0,3,7,9,14,14,21,21,4,7,4,15,13,6,16,5,8,8,8,8,8,6,8,5,5,1,10,17,16,10,4,18,18,16,15,15,1,1,5,5,0,4,0,0,5,6,2,2,0,4,0,0,7,7,8,0,10,0,1,1,6,12,9,10,18,16,14,14,10,13,13,0,8,5,0,11,5,18,8,7,0,0,2,8,9,7,2,0,14,12,12,6,0,8,6,11,3,12,16,6,10,10,12,12,15,15,20,20,17,2,1,15,2,12,7,1,8,3,6,0,0,15,7,6,21,3,7,2,10,9,5,9,11,13,0,18,4,8,3,15,18,14,15,6,6,6,14,8,6,9,9,15,20,18,18,16,16,2,2,0,20,6,9,6,6,4,6,0,1,0,0,12,12,5,6,5,16,8,8,4,4,7,19,11,1,2,13,0,11,1,10,19,10,1,1,4,4,6,9,5,2,0,0,7,2,0,6,8,18,14,15,0,0,4,0,0,2,6,1,0,0,2,0,2,11,8,8,8,11,9,4,17,21,4,15,8,12,17,16,1,1,13,1,4,8,7,7,6,6,9,1,6,5,6,4,8,10,5,4,4,7,6,5,7,7,2,1,13,13,15,15,0,6,7,9,6,7,12,14,17,12,17,3,17,1,17,5,7,4,1,5,0,11,7,7,17,6,15,15,10,10,15,1,0,0,1,21,9,4,1,9,1,0,0,6,1,12,17,1,0,6,0,7,12,9,1,11,11,10,2,16,16,13,16,16,18,13,2,8,13,20,8,7,6,20,20,1,1,3,2,9,3,0,9,4,4,13,13,15,13,0,2,1,1,6,2,11,1,0,3,1,7,0,0,9,15,7,9,17,3,1,15,0,3,1,0,6,0,0,11,7,6,14,14,0,0,1,12,8,6,5,9,8,12,19,0,4,16,7,7,6,17,17,4,0,0,0,4,12,9,5,5,7,1,0,6,8,6,12,4,1,1,10,4,13,13,15,14,14,8,10,10,7,10,1,15,6,1,6,18,0,13,6,6,6,7,8,8,8,2,10,10,7,7,9,2,2,1,2,3,8,8,18,6,6,3,6,8,2,14,2,3,6,2,17,7,11,1,0,0,7,2,1,0,0,0,15,18,8,6,2,7,6,2,9,4,8,8,0,0,0,0,2,2,6,0,1,4,5,13,14,2,1,1,4,5,1,12,12,18,13,3,9,3,2,6,6,9,9,6,6,16,20,10,6,1,13,15,12,11,6,0,0,3,3,5,5,2,2,0,0,11,11,6,16,16,6,7,6,1,9,5,11,8,8,6,5,7,0,0,6,6,6,21,19,18,18,16,16,0,0,14,14,14,14,18,18,5,3,0,0,12,3,4,4,14,14,6,11,5,4,8,8,6,14,6,6,14,5,5,0,3,3,12,10,8,14,10,10,12,8,11,11,2,2,12,10,9,8,7,0,0,5,6,0,1,0,3,14,9,2,4,4,5,7,5,5,4,14,17,16,17,20,14,6,4,3,8,6,6,5,5,5,2,1,2,0,9,0,0,0,1,9,8,9,9,0,1,1,20,0,8,8,13,13,8,8,11,11,12,1,11,10,8,8,14,18,16,20,12,12,17,6,17,18,15,13,17,17,17,17,2,13,1};

static  int rectangles_array2[2913] = {
12,12,18,9,4,12,12,4,7,12,12,19,24,6,14,14,9,6,6,4,6,24,6,10,14,24,15,5,6,3,18,13,6,6,24,14,21,4,20,6,4,22,6,6,4,19,4,4,14,18,4,6,12,12,24,18,12,4,4,24,8,3,16,12,6,9,18,16,4,18,20,14,7,9,9,8,14,12,6,6,6,6,6,18,12,24,16,6,24,4,15,4,4,6,18,4,8,10,10,18,22,18,6,4,4,20,8,6,6,12,12,6,6,9,9,6,12,20,18,18,14,10,12,18,8,18,6,12,4,19,22,11,15,12,12,5,24,12,9,6,22,17,6,6,6,6,6,8,19,6,17,3,8,9,9,10,3,24,18,6,10,9,16,9,20,9,9,10,6,12,18,22,8,6,6,11,24,22,20,2,2,2,2,3,9,9,18,8,18,12,14,6,6,9,18,5,4,18,19,4,19,6,14,20,22,7,22,22,6,9,4,12,6,18,6,16,6,24,4,4,6,6,9,14,18,15,15,16,10,15,10,6,18,18,18,14,2,2,15,21,5,24,22,15,24,18,10,10,6,20,10,16,7,6,6,12,10,6,5,24,5,6,6,6,3,13,4,9,6,6,12,6,12,8,10,6,2,6,2,2,9,9,9,9,18,24,8,4,10,3,6,6,24,13,6,16,6,6,10,6,6,6,6,6,9,6,6,5,3,18,19,6,3,3,18,6,9,20,6,22,5,18,6,24,12,12,14,8,5,3,18,20,19,6,6,6,6,6,6,15,6,6,18,12,6,6,9,13,9,6,9,3,9,10,4,4,6,18,10,22,16,18,8,6,6,6,6,6,9,9,19,19,10,10,6,6,6,9,4,14,6,18,9,21,17,11,13,9,15,6,18,24,3,24,10,18,18,16,3,18,6,6,6,18,12,6,24,5,5,6,6,19,12,4,10,10,10,9,21,9,9,4,4,9,18,6,11,6,9,6,6,9,19,6,6,4,4,18,6,6,6,18,18,11,14,15,22,24,18,12,7,22,14,24,18,22,11,6,24,10,10,24,18,16,16,18,21,6,6,9,2,6,6,6,4,24,10,6,6,9,6,10,2,15,6,6,9,14,8,7,4,6,6,21,5,4,5,11,12,24,23,18,21,6,4,8,15,10,9,6,9,9,9,9,6,18,21,6,6,6,16,10,10,10,6,12,3,6,9,8,3,4,9,24,6,6,6,12,2,12,18,18,24,4,6,6,8,16,8,8,11,24,4,4,16,6,18,6,9,8,3,18,6,6,4,4,18,12,9,9,6,6,9,3,14,3,14,14,9,9,6,6,6,6,8,9,8,10,4,6,18,8,24,3,10,10,10,24,15,12,14,4,6,6,18,14,6,6,24,6,10,6,6,11,10,6,6,4,20,10,6,10,4,10,12,8,4,9,14,19,10,16,24,18,18,18,9,23,18,12,3,10,10,6,4,6,6,9,6,3,9,3,6,18,18,8,9,9,5,14,3,15,15,6,6,6,6,6,6,8,8,10,21,12,12,12,6,20,12,8,8,20,12,16,9,12,14,9,19,6,18,4,20,22,4,4,6,6,10,12,24,4,4,17,18,14,14,3,3,14,9,18,12,8,7,22,4,7,9,22,6,8,6,6,9,18,12,4,4,6,9,8,6,6,4,19,9,12,18,4,18,4,4,4,6,4,18,20,6,8,3,14,24,18,5,5,8,8,12,6,6,12,23,19,11,8,10,9,9,9,20,9,9,8,21,10,12,23,8,18,9,9,6,6,24,18,24,18,9,9,18,6,6,5,6,6,8,21,3,11,10,12,18,22,6,6,6,6,18,3,16,6,16,18,6,8,10,10,12,8,9,24,18,9,10,4,9,6,12,20,9,9,4,8,9,12,9,6,5,21,10,6,18,8,18,9,18,12,6,4,4,24,9,9,19,22,6,20,6,16,8,6,16,16,4,8,12,6,8,6,6,21,16,7,4,6,6,4,6,12,23,6,12,10,6,9,9,18,18,12,21,12,6,19,14,18,4,11,9,4,4,18,11,20,13,22,14,10,10,6,9,8,16,14,9,18,9,24,10,18,6,11,12,4,4,6,15,6,6,6,6,16,20,4,4,18,6,9,15,19,7,9,8,18,12,9,14,22,6,10,10,16,6,8,6,8,4,8,10,14,20,4,12,12,6,8,8,9,16,6,3,5,5,10,23,21,6,12,8,24,8,8,8,5,19,24,13,24,4,6,12,12,18,9,4,4,9,9,6,6,19,18,16,9,4,15,8,6,6,12,11,21,8,6,21,19,6,6,14,9,8,22,9,18,7,16,12,4,4,4,6,6,3,6,3,12,4,3,3,10,3,6,19,18,18,6,20,20,6,24,18,6,8,8,14,4,5,8,22,6,9,19,9,18,9,24,14,9,6,13,6,21,9,9,10,24,9,6,9,6,14,14,9,6,10,4,6,6,9,9,9,4,12,9,10,10,24,9,24,11,22,6,20,14,16,19,10,4,21,6,14,6,9,4,19,20,4,8,6,6,4,4,6,6,24,6,4,4,9,6,7,14,6,4,6,6,10,14,12,12,6,20,9,6,5,16,8,6,9,9,9,9,18,18,18,19,6,15,6,6,6,22,21,18,6,18,8,18,6,6,2,2,7,9,21,7,22,24,9,12,14,14,6,6,20,9,21,14,12,9,6,6,18,6,6,6,6,6,24,18,10,12,19,4,9,15,12,6,6,16,14,20,20,6,12,12,6,6,6,6,9,15,9,9,9,9,8,4,10,4,10,18,11,12,12,9,15,12,12,12,8,8,24,8,4,4,15,24,5,18,3,4,9,20,18,10,4,6,6,6,9,18,20,4,6,18,18,6,6,6,20,20,18,6,22,6,6,24,6,6,6,6,6,9,18,9,23,18,9,8,15,8,6,8,6,4,12,8,8,6,6,12,18,8,22,12,20,20,10,18,19,6,22,7,11,10,9,6,6,6,6,6,9,18,13,8,8,8,6,6,6,5,5,6,6,12,24,2,2,2,2,6,6,18,7,12,18,20,6,18,18,6,9,18,6,12,12,6,4,9,12,6,6,9,12,20,12,3,15,6,12,8,8,9,12,6,9,8,6,24,6,5,5,6,6,6,6,18,9,10,10,6,6,10,6,18,6,9,6,4,4,12,10,22,2,24,10,8,6,5,20,12,6,10,12,6,4,6,4,4,19,2,2,2,10,4,6,16,6,6,6,12,9,9,18,22,6,6,16,9,6,6,6,24,24,6,18,18,22,9,21,12,24,4,6,6,6,6,20,12,4,12,4,3,10,12,6,4,6,6,6,4,18,22,10,10,12,12,5,21,9,12,12,8,10,10,12,10,12,4,6,6,11,6,4,4,8,16,18,16,8,9,8,8,8,8,5,7,24,8,8,24,12,12,6,8,18,18,22,12,12,12,6,9,7,9,18,4,6,6,12,14,17,12,9,24,9,18,9,9,24,20,16,4,10,6,7,7,6,19,9,9,10,18,4,4,8,12,6,12,10,21,9,6,6,12,20,10,5,4,8,24,4,18,16,6,14,8,20,9,6,4,4,8,2,9,19,9,18,6,6,4,18,14,18,9,12,7,20,9,15,6,6,9,9,12,6,8,24,6,8,24,12,9,16,4,5,9,9,6,20,17,7,23,6,4,6,18,9,2,2,18,15,18,4,10,10,6,6,6,18,6,6,11,10,10,10,6,10,16,16,22,8,6,6,6,7,8,6,3,8,19,4,18,5,4,16,18,10,12,12,22,9,12,10,8,8,18,10,21,22,6,3,12,12,22,18,22,6,6,6,18,6,12,12,18,6,6,6,18,6,6,10,5,5,9,23,8,6,9,18,11,11,24,8,14,21,24,8,21,12,4,4,6,9,19,10,18,6,17,12,6,16,5,18,6,20,15,6,6,6,9,6,6,6,6,6,6,6,9,3,14,12,4,6,4,6,14,16,6,21,6,5,16,14,4,12,12,14,18,18,24,18,9,19,24,9,9,18,18,3,8,18,3,4,10,6,10,5,12,9,8,5,14,10,4,6,18,6,6,4,6,9,14,15,8,6,6,12,12,16,18,18,24,9,24,22,9,10,6,12,12,16,10,18,9,10,18,15,15,24,6,6,6,10,18,10,10,14,9,6,6,8,4,3,16,6,6,12,12,6,6,9,9,6,6,4,12,12,12,14,20,8,13,6,6,12,15,12,18,24,3,4,4,12,17,5,5,18,12,6,6,21,6,12,16,18,15,9,15,3,3,10,16,12,9,6,6,10,18,14,14,3,5,12,20,19,9,14,14,9,18,6,18,20,20,24,20,9,9,8,8,4,20,6,21,13,12,10,5,6,18,9,21,22,18,6,6,6,6,6,4,9,9,15,3,12,20,6,18,4,4,6,6,6,6,16,6,6,18,10,10,9,6,5,8,19,12,21,16,18,10,4,18,12,6,6,6,18,12,10,10,6,6,8,12,10,10,18,4,24,6,20,19,10,21,8,10,4,6,4,4,9,16,16,24,9,14,7,8,12,4,3,9,20,24,12,8,6,10,14,10,9,24,12,22,12,9,23,19,6,18,6,4,6,6,4,8,7,18,4,4,20,6,10,4,8,8,6,6,6,6,24,10,23,19,18,9,6,6,20,6,18,9,18,18,18,10,4,4,4,12,4,10,4,3,4,6,19,9,7,14,8,8,18,9,18,6,6,4,4,4,18,6,8,18,14,15,10,4,22,6,6,4,10,8,12,12,6,6,4,19,6,8,6,6,6,24,10,10,19,19,16,24,6,6,18,18,6,6,6,4,6,10,6,6,6,6,6,15,20,4,12,6,9,6,12,18,18,18,6,12,18,4,19,15,14,22,6,18,3,20,5,12,6,8,8,12,6,3,14,12,4,15,6,10,18,15,8,24,6,8,10,18,24,6,8,18,18,18,20,14,12,21,21,18,18,4,18,4,10,11,4,9,4,8,8,12,9,12,9,12,4,14,11,6,11,9,18,12,18,18,9,9,9,6,6,6,6,6,4,6,6,18,6,15,15,4,6,8,8,24,14,8,10,8,4,6,6,18,16,16,8,16,12,9,9,16,19,9,3,24,5,19,6,24,9,10,20,7,7,2,10,12,3,12,6,9,22,22,9,4,18,24,24,18,4,10,6,6,6,6,6,6,6,10,10,9,14,10,10,3,9,5,24,12,4,9,6,6,19,4,6,18,10,18,9,24,8,4,8,10,18,19,24,8,10,6,7,12,6,15,6,7,6,6,6,4,6,6,9,18,9,9,18,18,4,4,2,16,4,10,6,7,4,6,10,18,2,2,6,6,18,9,9,10,5,5,4,4,10,14,12,24,14,6,4,14,16,21,15,6,16,16,3,3,10,6,12,5,9,11,4,9,13,4,6,10,20,9,4,4,22,9,24,16,18,6,9,9,4,7,20,19,6,6,4,9,18,2,8,18,15,12,6,20,24,9,4,4,8,6,3,12,5,5,6,6,14,3,6,4,16,7,8,6,9,3,22,18,6,9,4,4,10,3,18,18,9,9,18,6,10,18,18,9,6,18,9,10,9,3,9,11,9,11,8,20,21,12,6,8,8,8,9,8,9,9,9,9,10,6,6,10,16,19,18,9,6,6,14,8,7,12,8,22,6,6,6,17,12,18,10,10,24,6,6,19,6,10,10,9,18,18,9,9,6,4,8,18,4,12,4,18,18,6,6,4,6,12,4,6,12,8,8,9,9,18,9,18,6,9,9,14,6,12,18,6,16,3,6,4,4,5,9,18,5,17,18,24,18,6,14,3,6,6,6,21,12,9,6,8,8,8,8,12,18,20,9,8,16,10,10,15,18,10,18,10,10,18,18,18,6,8,8,8,18,9,18,6,6,18,12,6,2,10,20,12,3,3,3,18,10,14,14,9,8,4,5,9,9,12,5,3,6,7,4,14,19,6,15,10,8,12,9,14,14,13,6,17,17,8,8,24,15,18,18,3,3,6,6,11,12,12,9,12,6,9,6,9,16,10,7,11,12,8,4,3,3,18,4,3,18,3,3,5,18,20,9,19,19,9,18,14,6,9,9,6,6,6,6,12,12,4,6,3,18,16,10,9,9,10,3,12,12,8,6,12,12,6,7,18,19,12,6,6,5,5,14,3,24,20,18,6,20,6,6,6,18,15,18,3,6,6,8,8,20,13,7,7,10,10,3,18,18,9,15,12,12,6,13,22,6,6,24,10,18,10,3,12,4,4,18,9,12,9,10,10,10,10,9,9,10,10,18,18,18,7,19,16,16,12,2,2,8,8,3,12,8,12,18,18,3,18,3,3,18,18,22,21,18,18,24,16,6,8,6,6,18,10,9,9,3,3,6,6,16,9,16,18,6,6,4,6,6,18,24,9,8,13,16,14,9,16,13,13,24,10,18,18,9,22,8,8,18,5,12,18,4,6,2,2,10,18,17,12,16,5,6,6,6,13,19,6,4,6,6,6,18,4,8,8,10,10,4,4,16,16,7,3,9,17,8,8,10,22,24,12,6,6,9,22,9,18,19,18,9,9,9,9,3,24,6};

static  int rectangles_array3[2913] = {
9,7,9,6,19,16,6,10,6,6,7,12,3,15,10,9,6,10,10,9,11,13,9,6,12,3,6,14,10,12,3,6,15,15,15,12,12,10,10,13,13,19,9,11,9,3,9,9,14,2,11,9,9,6,5,6,6,13,13,23,12,14,6,6,12,6,3,12,20,2,14,12,9,6,6,10,14,5,9,9,9,9,9,4,9,6,12,6,3,9,4,9,9,12,2,10,10,6,4,2,3,3,15,10,10,6,9,9,6,6,6,9,9,6,6,10,3,2,12,24,10,12,12,3,8,6,6,18,14,2,13,4,10,6,6,12,4,4,6,6,15,9,10,8,7,22,22,16,6,12,6,14,10,11,11,18,14,8,14,6,16,6,4,6,4,6,6,6,9,6,3,3,8,6,6,6,4,12,17,24,24,22,22,18,6,4,3,18,3,4,6,6,16,16,9,8,9,3,2,9,18,9,12,2,3,9,4,4,11,6,10,12,15,3,9,6,9,14,13,13,9,9,6,6,4,4,9,4,6,10,14,9,3,3,4,6,18,18,10,4,18,6,8,9,19,3,4,4,16,4,6,9,15,13,14,10,6,14,12,5,12,12,6,6,16,6,9,6,9,9,6,9,3,21,12,9,20,9,21,23,4,4,6,6,4,19,12,10,12,19,10,12,2,4,9,4,9,9,4,9,9,9,15,15,4,7,10,8,16,3,3,9,18,18,9,14,6,16,12,16,10,3,10,4,9,5,12,10,14,16,8,2,6,9,14,12,18,18,9,6,9,9,2,6,9,9,6,6,6,15,6,14,6,4,19,19,9,3,9,4,6,22,14,20,9,9,12,12,6,6,3,3,6,12,12,12,9,12,12,8,9,3,6,23,4,18,6,6,4,9,3,4,12,3,6,3,9,9,12,4,9,10,9,21,7,9,4,12,12,9,17,9,6,19,7,12,12,6,4,6,6,14,14,6,5,11,14,9,6,9,9,4,2,9,9,9,9,7,10,9,9,3,3,12,6,4,2,24,4,9,12,6,3,16,4,2,8,6,6,10,10,4,3,6,6,3,10,24,11,6,20,24,24,14,12,14,6,9,14,15,9,14,18,6,10,9,7,3,6,12,18,9,13,3,12,10,8,9,5,5,6,3,6,12,15,10,12,6,6,16,6,6,6,6,9,3,6,6,9,9,10,16,5,5,10,6,18,9,7,10,18,9,6,3,9,10,12,12,21,8,8,3,4,9,9,22,14,15,14,14,6,9,16,16,8,9,3,9,6,10,18,3,11,11,9,9,9,4,6,6,17,17,4,18,12,12,15,15,6,6,14,9,15,15,9,21,12,12,18,9,3,10,4,20,8,8,9,3,4,6,6,10,7,6,3,18,6,6,3,7,6,6,7,12,4,9,9,15,3,6,11,9,9,4,6,10,16,4,9,8,8,18,11,5,3,3,6,10,3,3,22,6,6,12,9,9,9,6,9,19,6,19,9,3,4,10,6,8,12,6,19,20,20,6,6,14,14,7,9,10,10,6,6,6,6,6,9,6,6,10,10,13,5,6,4,5,12,6,3,9,2,18,3,3,18,23,19,9,6,12,6,10,15,6,8,6,6,18,18,4,4,9,8,5,8,4,15,8,4,4,17,18,12,9,12,2,6,11,10,17,6,9,12,12,15,3,7,9,3,12,14,9,18,18,10,11,3,3,12,8,12,14,10,2,12,12,18,18,12,9,11,12,3,3,4,5,4,9,6,6,8,18,10,5,6,14,4,4,10,3,4,4,6,6,6,3,4,3,6,6,3,10,9,8,8,11,9,6,12,12,8,3,4,22,8,9,9,14,8,14,20,10,4,4,9,5,4,4,5,10,8,3,4,6,4,12,6,9,4,3,9,4,18,12,8,5,6,9,12,6,6,15,2,6,2,6,3,5,9,9,9,4,6,6,3,12,6,3,10,6,9,14,6,8,12,10,6,9,12,9,6,3,6,6,14,9,14,16,10,5,3,12,5,4,12,6,6,13,13,6,3,6,14,2,4,4,9,4,6,23,23,3,4,3,4,15,3,4,4,9,6,10,6,6,6,2,6,3,6,3,16,6,22,10,18,9,10,9,10,10,10,9,3,13,13,7,9,6,6,2,16,6,12,3,6,4,14,6,9,10,10,6,9,14,12,12,9,16,6,14,2,16,10,4,7,16,16,6,12,8,18,14,14,6,18,3,9,6,16,4,16,16,10,8,2,9,8,3,11,9,8,6,3,6,9,9,19,19,8,8,3,4,6,6,14,12,5,9,9,8,6,3,12,12,2,3,14,14,14,6,9,4,6,3,9,4,5,9,10,10,9,9,19,9,19,4,9,19,12,5,18,12,3,3,4,9,4,4,6,8,3,6,5,5,6,15,12,14,6,6,4,3,4,3,4,3,4,6,9,4,12,3,6,7,8,3,6,9,4,6,10,10,17,20,4,9,9,16,4,4,6,10,6,8,8,8,4,6,6,4,4,18,4,14,6,3,4,15,3,6,9,9,9,21,2,3,13,8,9,9,10,10,6,6,21,13,21,20,6,9,9,3,9,10,9,9,4,14,6,12,10,8,6,9,14,6,9,10,6,6,6,6,3,3,3,2,11,6,11,11,9,4,12,3,9,3,9,3,9,9,18,18,9,6,3,9,3,16,4,8,6,6,9,9,10,8,15,8,4,6,6,6,2,11,15,13,9,9,4,4,4,3,3,20,6,4,7,9,9,6,6,4,6,9,8,8,9,16,12,12,6,22,6,6,6,6,10,16,6,10,6,2,6,10,6,4,16,13,6,9,6,6,11,10,10,21,9,6,16,3,12,9,8,2,3,6,18,9,9,9,6,2,4,12,12,22,22,11,11,9,3,2,2,9,9,9,9,6,10,9,9,9,9,6,3,6,6,3,6,10,6,10,12,10,9,18,4,10,10,14,19,6,6,10,8,6,18,12,8,3,3,9,4,12,9,8,7,9,12,6,9,23,6,3,14,12,12,7,9,12,12,15,15,9,15,8,4,19,19,20,20,12,12,14,8,12,5,3,12,3,3,9,6,4,14,6,9,6,10,6,6,9,9,6,6,3,6,24,4,12,8,14,14,10,6,9,7,10,9,12,14,8,8,6,6,9,9,6,6,8,8,12,11,4,7,3,9,7,6,11,11,18,5,3,20,4,4,10,14,8,9,8,6,4,9,8,17,6,17,17,3,18,18,18,8,9,9,8,9,9,9,6,6,6,3,6,6,6,6,4,9,9,23,3,4,23,3,3,4,6,3,6,4,15,12,9,9,9,3,6,13,4,13,18,5,8,9,9,14,14,16,10,6,4,5,5,16,16,15,2,6,4,12,12,8,8,5,8,6,18,14,14,12,16,21,21,18,8,12,12,20,6,20,20,14,14,8,9,10,11,16,6,9,12,9,10,3,2,3,9,6,6,9,6,12,6,4,16,9,9,10,6,8,21,9,3,10,3,4,6,6,6,12,15,4,8,10,10,12,8,4,4,6,2,9,9,10,13,6,3,6,5,9,9,7,6,6,4,18,9,14,6,9,3,6,9,6,10,3,6,9,11,11,10,18,6,3,6,5,9,9,15,3,6,3,6,6,8,3,6,4,6,9,6,6,6,9,10,4,6,10,6,8,6,4,10,8,12,12,9,12,16,6,2,9,9,13,2,6,24,24,10,6,3,11,4,18,16,16,6,2,6,6,6,4,7,7,6,8,3,3,14,10,12,18,9,9,10,12,12,10,2,13,3,12,15,4,3,8,6,3,4,6,5,7,10,10,6,9,6,16,22,12,18,18,4,4,6,9,9,9,3,13,4,6,3,12,9,13,2,9,9,8,8,8,6,15,12,9,4,3,6,6,6,8,6,3,3,5,3,6,10,10,12,6,2,10,12,12,9,11,13,6,12,3,6,3,10,9,9,9,6,9,9,16,16,9,9,6,6,16,12,6,20,9,9,9,4,12,9,4,9,8,16,6,15,8,4,6,10,21,21,3,6,2,2,4,4,2,3,23,6,3,23,10,12,14,9,12,10,4,10,12,24,4,10,9,3,9,9,18,11,4,8,9,10,12,12,4,10,6,9,5,22,6,8,4,6,4,9,6,6,9,6,3,6,9,3,6,6,4,12,9,12,6,9,9,8,6,7,12,12,6,14,18,12,14,14,20,20,17,17,6,6,13,13,9,7,6,6,9,3,10,9,18,9,4,12,5,3,5,18,14,9,6,4,8,8,2,5,12,12,3,12,6,9,5,6,6,11,18,18,8,8,3,13,9,9,9,2,6,6,21,12,6,3,3,6,12,18,7,4,9,4,6,6,2,8,7,7,5,5,10,2,6,3,9,5,6,8,9,6,4,3,2,3,9,9,20,20,14,9,4,4,6,18,6,4,9,14,18,18,9,9,9,6,6,11,12,3,8,6,4,12,12,8,3,6,8,8,3,14,10,3,6,9,8,8,6,6,6,6,9,9,8,6,4,4,3,10,6,9,6,8,6,14,8,4,9,10,13,13,6,6,14,4,6,4,9,10,5,13,19,6,2,4,5,14,6,24,14,8,6,3,5,4,6,6,6,12,21,3,9,12,9,9,22,12,9,4,22,22,4,7,4,15,12,12,16,16,16,16,3,4,8,3,2,6,9,9,6,14,3,7,5,5,9,10,9,9,20,3,20,8,20,19,20,9,4,6,6,8,6,6,4,6,8,9,9,18,20,20,6,9,6,8,12,7,6,10,3,10,12,18,16,12,14,6,6,6,10,3,8,22,8,8,9,4,6,6,3,3,9,5,15,9,3,2,9,9,9,10,16,10,13,13,9,11,11,6,3,9,14,9,6,9,20,3,3,3,9,15,3,18,3,4,5,14,9,3,18,3,12,5,12,10,10,6,9,20,6,13,15,4,14,6,3,8,18,3,13,10,9,3,3,11,10,3,3,10,21,3,6,4,4,3,3,18,3,18,6,9,10,6,18,10,10,5,7,5,7,5,18,12,4,10,6,6,2,13,3,3,6,6,6,16,16,10,10,24,20,9,9,5,9,8,8,9,12,18,18,6,3,15,14,10,9,8,8,12,4,15,10,6,5,4,6,12,6,6,23,6,12,18,12,8,4,6,3,20,20,18,12,8,14,16,9,4,4,6,6,9,7,6,10,21,10,8,9,12,12,12,12,9,9,4,4,6,4,4,4,19,8,12,3,4,10,6,22,22,3,15,9,3,15,3,6,14,10,9,10,10,4,2,6,16,4,9,9,6,9,8,16,12,9,9,9,18,12,12,6,4,6,6,3,3,22,22,24,4,18,14,9,9,20,9,14,6,24,24,7,7,19,6,6,8,15,15,20,20,4,4,3,3,20,9,19,3,20,9,5,6,20,20,12,12,8,6,4,15,6,10,12,4,6,18,9,6,3,6,19,19,2,6,18,8,6,10,6,6,15,10,4,3,9,9,9,9,5,20,6,2,6,6,9,4,6,4,22,22,9,9,18,6,8,8,12,12,8,14,12,18,18,20,12,14,6,18,14,2,12,7,12,12,22,20,4,4,6,6,24,12,4,6,3,8,12,3,7,6,7,19,7,9,7,6,5,19,6,14,9,5,5,5,7,10,9,9,7,7,8,12,12,12,8,3,4,6,15,6,9,20,9,5,14,4,6,7,6,18,6,4,6,12,3,6,6,3,9,6,6,6,3,3,6,6,9,12,8,3,12,3,9,3,3,20,20,18,12,6,18,9,6,20,20,6,6,3,6,3,7,6,6,6,13,6,15,7,6,12,9,24,24,12,6,6,12,6,14,2,3,9,12,12,9,10,9,7,5,8,18,10,10,10,10,5,2,6,7,16,8,4,8,4,9,8,4,12,12,7,3,3,10,24,15,24,9,6,6,9,9,4,20,23,18,6,6,5,19,18,18,3,9,7,7,6,10,10,16,6,6,9,8,12,9,6,22,3,3,24,6,14,10,5,6,14,14,4,12,6,6,9,9,10,8,8,4,18,19,16,16,6,5,5,6,5,7,6,9,6,20,12,12,6,8,10,9,22,22,4,15,12,13,24,24,8,2,3,6,10,3,4,8,4,16,16,16,14,14,22,22,20,20,9,16,12,6,8,6,6,6,8,12,9,6,5,8,6,6,6,18,3,2,6,9,9,15,15,6,14,5,3,2,10,3,11,8,9,2,6,3,18,10,10,9,9,3,4,14,14,6,6,18,3,3,10,4,6,9,12,6,13,6,6,3,6,3,6,19,16,18,18,3,4,6,4,8,8,12,12,6,6,6,6,2,3,12,9,15,4,12,15,19,19,10,10,18,6,10,10,10,10,18,3,18,18,3,3,3,10,17,17,11,6,8,7,14,14,2,6,4,6,18,18,10,9,6,6,6,3,9,6,18,9,9,9,3,4,10,9,9,9,6,6,9,9,6,9,3,3,6,4,6,15,3,10,3,6,18,6,18,18,6,12,22,6,6,18,9,9,12,4,3,8,15,14,14,14,4,20,12,12,8,8,15,15,12,12,9,21,4,9,15,15,8,6,4,3,12,12,6,10,6,2,3,3,6,6,6,6,20,8,22};

static  int rectangles_array4[2913] = {
6,10,3,8,5,6,5,11,4,6,10,1,8,9,5,5,16,9,12,4,20,8,11,7,5,8,5,9,11,6,9,5,18,4,8,5,2,10,2,2,20,11,20,2,12,0,12,10,12,1,17,0,6,10,8,4,2,19,3,8,1,14,3,6,8,15,1,4,2,3,1,5,3,14,1,15,5,10,9,11,9,12,10,9,6,8,4,11,8,11,9,11,11,9,1,10,6,7,0,6,1,6,5,20,2,12,4,14,8,17,0,14,8,8,0,12,9,2,2,3,5,14,4,4,6,3,3,10,8,3,12,8,5,16,4,19,8,6,10,9,0,4,9,18,3,18,3,16,2,9,2,14,5,18,3,8,7,8,10,14,7,13,12,13,1,13,8,8,8,7,0,1,9,12,9,7,0,13,12,14,9,14,9,18,6,13,3,13,0,6,6,10,10,4,5,9,20,2,5,2,5,2,13,0,1,2,13,0,11,10,11,6,18,3,18,1,13,0,13,9,13,10,13,2,12,5,14,4,7,5,12,9,3,0,12,4,13,10,10,8,10,0,12,4,8,11,9,10,20,1,14,3,15,11,17,3,7,4,10,8,15,3,12,6,14,1,13,10,12,9,6,9,7,8,7,0,15,0,15,8,15,0,8,0,9,8,9,12,12,6,16,2,0,4,9,0,18,0,8,10,13,9,14,8,15,8,9,7,14,2,5,11,13,10,9,8,12,1,15,1,10,3,12,8,6,10,5,4,11,7,9,2,3,10,16,9,21,0,18,3,18,0,5,6,12,10,15,3,15,5,11,8,15,9,13,9,18,1,14,1,12,1,14,0,17,5,18,3,15,0,4,2,14,6,20,1,16,7,12,4,12,8,15,7,6,1,6,0,13,9,12,8,16,0,14,7,5,4,16,6,12,11,11,12,6,10,8,14,5,11,3,3,3,20,5,13,6,12,8,9,10,13,9,14,8,20,6,18,7,18,0,9,0,17,1,14,8,9,9,14,8,6,1,10,5,5,0,8,10,6,4,12,12,12,3,2,6,14,0,19,0,12,0,13,3,6,0,15,9,12,1,15,7,19,6,8,5,14,2,18,2,17,12,14,10,14,6,6,11,12,10,16,6,9,5,10,8,6,10,8,1,9,3,2,10,8,10,0,14,9,14,1,15,0,19,2,3,9,18,0,12,2,14,5,18,5,22,8,11,7,22,12,15,0,13,9,14,6,14,6,3,3,12,12,13,8,20,3,20,0,10,8,13,9,13,0,6,3,8,2,15,3,19,3,19,3,4,6,15,0,17,5,8,6,5,10,10,0,15,0,14,11,14,8,15,3,11,6,12,0,3,3,12,1,17,2,7,8,3,10,5,11,3,18,3,9,3,13,8,13,4,13,8,7,6,16,6,11,0,13,5,10,10,14,6,12,7,8,5,3,5,5,8,3,1,5,1,1,3,6,7,14,1,13,12,13,9,15,5,15,6,15,0,5,7,17,10,15,0,14,8,13,6,13,8,17,4,12,11,11,9,8,1,9,9,18,8,2,0,18,2,2,12,13,1,11,3,12,2,18,3,22,2,1,0,19,3,20,0,13,0,10,8,4,2,14,3,17,6,10,4,2,10,5,12,0,15,5,8,1,19,8,20,9,15,2,16,2,20,3,15,0,16,2,10,1,14,3,3,10,3,2,12,10,12,11,4,0,9,8,13,5,12,1,19,0,20,0,18,9,11,0,1,1,13,4,12,4,15,1,13,5,16,5,10,7,12,0,17,0,15,0,13,8,12,2,12,1,15,0,6,10,12,8,12,8,13,1,15,6,18,11,12,0,11,11,12,8,9,10,4,11,5,8,15,12,12,7,11,3,14,8,9,1,11,9,12,1,6,1,8,2,11,7,14,9,14,7,4,9,7,11,2,8,3,11,0,10,2,20,2,12,0,14,0,12,8,4,10,14,2,14,2,5,9,12,6,12,0,18,5,10,2,13,6,11,7,18,11,10,0,15,4,13,7,14,7,12,6,16,0,16,5,5,5,9,9,13,5,19,3,5,0,2,5,1,10,8,11,12,4,12,3,5,4,6,10,0,0,3,2,7,5,10,9,18,9,12,11,13,9,4,2,13,9,9,1,8,3,5,8,9,0,6,4,13,5,12,11,14,5,12,0,20,9,12,10,14,7,12,2,18,1,6,12,14,6,11,1,9,7,17,2,7,1,8,11,3,20,8,20,0,8,5,4,8,6,0,20,10,12,0,6,0,20,2,18,3,13,8,5,9,6,9,10,1,11,7,14,5,13,0,12,1,2,2,20,1,14,0,15,1,9,0,16,12,7,11,12,10,15,3,16,3,16,12,10,7,11,11,12,11,3,2,12,5,14,0,10,8,5,11,11,9,5,10,10,7,12,0,12,2,12,1,12,0,5,6,14,5,9,8,11,6,17,8,8,4,12,9,16,1,11,3,7,12,12,3,12,3,13,5,11,9,17,2,12,0,12,5,12,9,2,5,4,2,7,0,2,6,6,11,15,8,3,2,19,1,14,4,14,8,14,4,8,3,20,2,8,9,16,12,11,12,12,10,14,5,18,6,13,1,15,9,10,3,16,9,15,0,13,2,5,1,5,1,16,9,16,6,18,1,9,0,14,3,16,3,11,11,15,8,17,3,3,0,2,0,13,5,12,5,18,0,13,5,9,12,6,9,13,8,6,2,20,2,14,8,8,12,9,11,4,10,8,7,12,0,18,0,16,1,12,9,12,8,12,4,15,3,15,4,15,0,15,0,14,3,7,10,8,12,7,0,16,7,10,11,12,3,16,0,0,0,10,10,4,8,9,9,6,11,8,4,8,7,1,15,7,13,9,3,0,10,6,15,0,20,2,13,0,2,1,18,0,17,0,0,2,12,9,17,5,15,0,15,0,5,0,13,8,13,8,13,10,12,11,13,7,14,12,12,1,20,0,14,0,13,0,6,0,14,1,13,4,17,5,16,3,14,10,11,0,4,5,19,0,8,3,17,4,16,3,18,1,17,0,15,8,22,1,20,2,3,6,7,11,4,9,4,3,18,2,13,7,13,10,12,0,11,2,13,5,9,5,3,6,12,8,9,1,19,1,9,6,12,10,14,4,8,6,19,0,17,1,18,0,3,2,14,5,10,11,7,12,5,10,11,9,14,8,12,7,2,1,8,7,6,17,4,2,6,9,7,10,8,18,3,18,4,5,11,15,7,12,12,12,2,14,10,14,3,14,1,3,1,18,0,5,6,14,4,17,8,8,5,3,0,12,0,9,2,0,10,10,8,13,11,2,1,13,12,10,7,14,10,11,10,20,1,17,9,12,12,14,5,16,4,10,1,15,12,12,8,19,0,14,6,13,9,13,8,7,4,17,3,14,2,3,4,19,10,19,1,15,5,10,4,0,8,14,0,6,1,18,4,6,1,1,2,18,0,12,7,9,7,12,7,12,10,15,3,4,6,8,12,11,2,8,0,0,2,12,10,7,9,17,0,19,1,12,3,12,12,12,10,14,10,13,7,7,9,0,11,3,15,2,13,4,20,8,12,2,3,3,13,5,17,2,12,10,12,10,12,12,12,0,9,7,14,8,13,1,9,2,15,0,9,2,15,4,17,0,15,0,15,3,20,8,13,0,0,5,11,4,10,8,11,4,14,2,4,8,1,9,13,10,4,6,14,9,9,9,9,11,9,12,14,8,18,3,18,0,13,10,11,8,16,5,7,9,13,3,20,7,15,0,19,1,12,1,3,8,5,9,11,4,6,5,17,11,1,10,10,11,11,9,15,0,2,0,9,9,18,0,12,3,2,5,12,10,5,9,7,9,4,0,11,11,6,11,12,5,14,5,14,0,16,4,8,0,13,0,12,6,10,1,0,6,9,1,10,7,9,10,3,7,3,10,3,10,4,5,8,9,3,2,9,11,11,16,7,16,6,19,3,14,0,9,6,14,4,7,9,14,12,14,5,4,11,3,4,16,4,13,10,15,12,12,3,12,8,6,0,4,0,15,0,6,3,13,6,6,10,10,7,17,2,11,1,15,1,10,11,7,10,15,3,15,7,12,9,15,5,8,7,12,9,7,10,13,9,9,0,14,0,12,1,7,11,16,2,8,0,5,2,14,3,9,4,12,9,13,0,14,2,11,7,13,7,17,4,13,10,18,12,17,5,16,4,18,4,15,0,20,2,16,9,12,0,5,0,12,5,10,8,6,3,16,6,8,6,10,11,14,0,16,3,6,4,17,2,2,4,18,8,6,6,14,8,15,6,14,4,7,8,13,9,8,0,17,0,21,0,12,1,5,1,6,5,14,1,11,0,13,1,0,1,14,7,12,8,13,11,9,7,6,10,10,6,15,8,11,8,1,0,15,7,20,2,14,2,12,1,7,8,12,2,14,3,17,5,13,9,13,12,12,11,20,1,7,6,9,1,19,4,3,1,9,4,6,4,15,9,12,6,15,3,14,1,14,0,15,3,9,1,13,1,6,8,0,0,14,1,14,8,10,11,10,9,14,8,11,3,13,0,12,11,10,8,11,10,12,10,4,0,11,1,11,6,14,7,12,12,11,1,9,0,1,1,9,9,11,11,18,4,15,1,14,3,15,7,14,12,7,0,19,1,16,6,17,5,0,7,1,1,6,1,15,3,4,0,6,7,12,6,9,4,20,2,13,12,13,1,13,2,13,2,3,7,17,5,16,0,15,0,9,4,12,10,13,9,14,8,10,0,13,9,14,0,1,10,16,10,12,8,13,2,11,7,13,0,12,8,12,6,14,0,14,0,4,1,4,8,3,11,0,6,2,18,0,11,9,7,3,18,7,18,3,9,2,10,5,11,10,12,4,6,9,9,11,10,2,21,0,5,12,1,10,6,9,2,5,12,9,18,2,16,1,12,4,10,5,14,7,7,2,5,7,0,2,20,5,5,0,13,0,4,2,12,12,6,0,10,7,11,7,21,3,21,7,9,0,15,1,13,7,13,10,13,10,13,10,5,0,11,2,15,1,10,0,6,0,13,2,13,8,13,9,12,3,16,6,10,7,12,7,10,3,16,4,0,11,10,12,17,5,16,5,3,4,4,3,16,6,14,7,4,0,10,6,0,0,3,9,12,6,8,2,12,5,14,10,12,7,17,9,13,0,12,9,10,9,0,8,9,9,15,10,15,6,19,2,12,10,14,5,11,3,10,5,20,7,4,8,6,19,3,20,2,5,10,11,0,7,1,11,0,17,12,17,7,13,0,8,6,7,0,13,3,12,2,9,6,14,5,12,6,17,4,14,0,13,2,6,0,21,1,15,11,13,7,14,3,22,7,12,11,15,8,13,8,9,8,12,3,19,0,22,0,7,11,10,0,14,2,13,8,15,7,11,11,15,1,16,5,12,4,6,9,15,6,12,7,6,10,12,3,4,2,13,9,1,0,0,3,3,5,16,5,10,6,12,2,12,10,13,6,9,2,14,3,10,2,17,2,0,7,17,5,11,8,11,5,15,4,15,6,12,9,12,4,4,5,14,9,12,10,12,2,12,9,12,8,7,1,13,2,15,0,15,6,8,1,6,10,12,3,18,1,18,11,18,6,18,6,16,12,9,6,11,6,16,4,18,8,18,3,15,6,18,0,13,7,4,0,15,3,9,8,5,3,5,10,4,2,8,18,3,4,6,13,4,12,8,13,8,3,0,14,0,14,0,6,0,14,8,15,8,10,7,7,12,11,7,21,0,15,0,18,7,16,0,18,2,14,1,9,5,5,11,12,9,12,10,12,9,13,3,12,9,13,9,11,7,5,8,4,0,0,0,11,3,12,10,12,7,9,10,11,9,19,1,15,5,6,10,12,10,14,3,7,7,14,7,18,9,13,6,10,0,3,4,16,8,16,7,15,3,18,0,13,2,17,1,8,0,15,1,20,3,9,9,7,10,11,4,10,3,15,0,6,9,12,10,16,10,6,0,17,5,14,1,7,10,14,3,9,3,6,1,16,0,12,8,10,0,21,2,20,2,8,8,11,9,7,12,11,8,11,4,12,0,12,4,12,11,15,8,13,10,12,9,17,6,10,2,2,7,3,2,15,8,10,7,18,3,20,2,17,5,16,4,11,12,12,3,13,0,8,9,19,9,6,10,5,12,3,15,4,11,9,5,4,11,10,16,3,13,8,8,10,5,2,2,11,9,9,5,2,6,6,20,2,10,10,3,5,17,0,9,10,11,0,6,4,9,5,6,7,11,12,18,0,0,0,6,0,20,4,21,1,3,0,18,7,17,2,19,0,15,0,14,0,5,0,12,5,4,3,4,10,16,7,17,3,12,5,14,6,15,0,12,0,12,9,6,0,2,7,12,6,8,4,12,10,18,3,6,5,12,0,12,11,11,1,14,1,7,0,12,12,12,10,9,1,0,6,12,5,4,4,8,1,10,1,12,1,5,0,9,1,8,8,5,9,6,2,12,10,14,8,9,12,5,4,14,9,14,8,11,5,5,9,11,2,18,3,12,5,20,0,18,1,15,5,6,2,14,10,13,3,13,3,16,0,0,12,21,0,15,1,15,0,3,0,15,0,12,3,17,0,12};

static  int rectangles_array5[2913] = {
7,4,12,20,5,13,11,19,3,8,4,12,2,14,11,3,11,5,8,5,0,6,6,20,13,3,11,13,5,12,21,8,1,1,8,6,16,1,13,1,2,5,4,3,1,7,1,1,5,11,13,7,7,5,1,12,17,3,3,1,11,14,12,8,13,17,18,10,1,1,5,12,17,17,17,6,5,0,3,6,0,6,6,8,3,0,11,6,20,6,13,6,6,18,23,12,12,8,16,19,2,17,4,4,4,16,12,0,10,8,8,0,0,16,18,8,19,11,9,0,6,5,5,15,17,19,0,6,1,3,8,11,12,16,16,5,2,10,5,20,12,4,5,1,1,0,0,7,12,13,17,14,6,8,8,15,14,14,10,15,0,0,3,0,1,0,0,20,3,5,11,11,11,11,11,12,13,4,0,0,0,1,1,6,16,16,19,4,18,2,11,5,13,4,3,19,0,1,23,0,12,1,5,2,3,11,12,12,7,1,7,10,6,16,8,5,0,4,0,0,6,7,19,18,18,20,15,6,8,14,9,6,7,11,16,6,0,0,7,20,14,2,1,3,0,21,7,7,8,15,17,3,11,1,2,14,8,2,8,17,11,1,16,16,14,14,1,0,2,2,20,6,7,10,8,4,2,6,3,0,10,10,16,16,10,0,7,6,9,0,0,0,12,11,11,14,15,15,7,7,0,0,3,3,4,10,19,17,13,18,19,0,4,4,3,1,19,3,5,2,19,22,14,2,7,6,12,14,13,14,7,4,14,6,6,9,6,6,5,20,5,5,11,2,0,0,14,8,14,5,8,13,14,12,1,1,12,22,16,13,6,0,7,4,0,0,12,12,14,14,15,14,17,0,1,1,17,9,7,4,6,10,17,1,11,6,17,17,7,15,8,14,16,4,19,13,3,6,11,7,6,8,15,1,8,5,2,11,11,6,1,4,18,4,16,7,7,2,20,14,2,0,0,17,8,3,12,7,8,7,7,6,23,17,17,11,11,9,17,0,0,18,18,12,6,6,1,0,15,11,16,2,20,0,13,11,7,8,9,0,0,1,18,15,15,17,18,0,4,5,14,0,0,7,7,5,15,0,7,2,2,2,6,5,6,0,3,7,7,13,6,17,0,2,8,8,8,3,6,0,12,21,8,5,7,12,7,19,20,14,20,20,11,11,3,18,17,20,6,6,0,0,0,0,3,11,0,0,8,12,0,6,2,3,7,6,1,10,3,5,4,1,13,5,1,2,10,9,10,10,17,7,1,1,5,12,17,15,16,13,11,6,5,5,1,1,15,11,4,4,0,0,19,11,8,8,12,12,2,2,6,7,6,6,3,0,13,7,6,3,15,14,12,2,16,16,3,0,10,5,16,19,6,0,2,12,0,11,20,11,14,11,11,8,17,0,0,7,1,20,7,17,2,3,6,8,12,10,5,20,0,2,11,3,17,18,15,14,8,8,2,19,20,3,6,0,0,10,11,5,8,5,6,22,10,4,8,9,10,6,5,4,4,10,10,2,2,4,4,4,4,20,20,2,2,5,11,9,5,14,14,11,9,6,21,5,5,4,7,13,8,2,19,10,2,0,3,2,7,0,3,19,14,14,5,6,6,5,5,12,12,3,3,1,11,14,11,11,20,4,3,11,0,0,11,23,10,1,0,3,17,16,12,12,7,6,8,11,7,6,9,0,5,5,5,4,17,17,13,17,16,9,0,12,9,9,6,6,5,6,13,5,3,16,19,13,10,9,16,14,10,0,11,2,4,0,19,8,10,17,18,18,11,11,3,5,0,17,17,17,18,8,6,12,12,5,9,9,11,13,8,8,11,11,6,0,0,3,10,7,13,4,2,5,0,4,10,10,11,10,12,21,20,17,19,18,6,16,18,6,4,21,7,2,10,11,9,10,11,0,8,0,3,20,1,0,18,7,3,2,2,1,18,15,16,5,13,3,14,12,16,8,12,20,7,2,6,7,0,11,12,21,3,9,11,7,8,16,14,11,13,0,10,4,0,6,6,11,11,16,7,16,14,11,6,18,0,5,0,1,1,17,5,17,5,9,4,7,7,4,12,3,6,9,5,4,6,2,19,19,5,8,13,12,6,11,7,5,9,14,14,11,12,0,0,1,14,20,11,11,14,16,11,5,16,15,8,16,0,5,5,6,10,10,18,10,0,4,12,6,12,16,11,11,12,4,4,9,5,9,0,16,16,7,9,1,6,18,8,19,8,8,17,11,2,12,4,1,3,6,11,8,18,16,3,3,0,0,11,11,12,20,8,0,10,11,12,0,0,5,14,14,1,0,3,3,10,10,6,14,17,1,13,16,17,3,6,6,1,1,18,18,1,3,0,3,5,0,7,7,3,3,8,8,13,5,1,1,15,2,6,15,12,12,2,7,11,9,5,8,19,19,19,18,19,1,2,16,16,22,13,10,8,10,10,15,7,16,19,15,9,9,7,4,8,7,15,8,19,19,1,12,5,4,16,16,0,8,4,2,1,15,11,9,5,4,3,14,11,0,7,1,11,7,23,16,0,11,17,17,5,5,8,8,2,2,0,4,18,0,15,21,5,5,6,5,16,5,8,6,13,10,15,3,8,6,6,13,15,15,18,18,17,17,1,2,2,15,2,2,5,2,0,13,2,11,6,8,11,8,0,0,6,20,19,6,8,3,19,5,6,16,5,5,4,13,1,12,7,5,11,11,5,2,0,0,0,0,2,13,7,8,15,10,17,9,4,13,8,18,18,20,8,8,5,5,6,0,8,8,14,11,14,14,17,17,0,0,8,17,6,22,9,0,1,18,7,10,2,12,5,5,3,13,19,9,7,1,14,21,11,6,6,4,10,17,4,0,0,0,7,1,10,8,5,0,0,2,2,0,1,3,11,10,3,6,10,8,2,6,0,0,0,19,18,16,17,16,16,8,7,8,0,8,5,6,7,8,8,10,5,12,9,14,9,18,6,6,16,17,12,9,7,10,10,10,12,17,16,16,0,1,18,18,9,0,0,2,1,8,8,10,10,7,12,15,2,1,1,1,1,11,11,13,14,13,18,22,12,7,7,7,14,14,7,13,7,12,7,0,12,13,13,17,19,3,5,0,16,18,15,10,9,16,9,15,8,4,9,6,7,12,12,6,6,5,5,5,5,3,3,11,11,8,6,19,4,1,11,12,12,0,12,21,4,2,10,7,0,15,3,7,20,12,5,11,4,0,4,4,19,9,13,13,11,6,0,9,18,7,18,14,14,14,8,9,7,7,14,18,18,18,1,21,20,1,18,17,16,18,10,18,7,7,13,6,0,7,2,18,2,7,1,0,3,15,10,3,0,0,0,4,17,20,3,3,6,6,14,19,2,1,0,10,16,16,12,16,6,6,9,9,10,8,10,10,1,5,10,14,4,2,4,4,8,8,17,16,18,2,2,2,3,2,8,3,22,11,11,11,8,8,15,15,14,13,15,4,15,15,11,8,6,9,4,7,11,12,18,2,13,12,5,7,5,19,5,5,1,4,4,4,4,4,1,1,5,4,5,5,7,0,11,6,3,18,8,4,11,4,13,1,4,7,19,9,6,5,3,2,6,3,3,3,1,2,3,16,8,0,0,11,6,9,17,19,8,17,18,19,2,5,6,19,19,18,18,13,14,18,13,17,2,9,5,7,8,9,9,9,8,12,10,10,0,3,1,23,10,0,0,2,13,21,1,7,0,1,1,5,6,5,5,13,7,9,9,4,6,21,21,5,10,0,2,0,15,13,0,7,13,22,3,11,7,7,3,1,1,18,15,10,9,11,7,2,2,4,8,9,4,11,7,0,0,1,2,7,3,14,14,19,0,4,2,2,12,15,10,18,4,0,6,13,13,13,7,6,18,20,18,13,13,9,20,18,2,2,15,11,18,19,12,12,1,15,7,12,0,3,0,0,11,14,21,0,1,6,6,0,0,18,0,0,1,1,16,3,5,10,15,10,8,2,16,6,16,22,10,6,2,16,20,0,6,10,15,7,6,6,0,0,19,17,4,4,16,16,16,18,0,3,17,0,12,12,9,3,7,4,3,2,5,0,19,19,15,22,15,15,6,3,3,8,4,2,2,2,7,3,6,1,8,0,18,20,19,18,8,15,18,18,6,7,6,9,5,7,4,10,5,8,0,12,14,10,17,6,6,13,10,10,9,3,0,12,0,0,2,2,0,0,8,8,1,1,0,10,11,11,10,16,10,7,8,0,11,6,0,15,14,1,0,3,2,6,20,20,19,0,3,12,4,3,8,15,13,6,9,0,9,9,5,4,7,0,0,0,4,3,13,13,2,13,8,9,8,14,14,12,12,17,17,8,10,10,9,12,12,12,12,12,10,15,10,1,7,5,12,16,0,10,4,20,11,18,0,0,2,2,7,1,16,15,8,8,6,19,18,5,6,6,0,0,5,5,1,13,1,18,17,20,16,1,8,0,6,5,1,5,1,11,11,18,18,15,11,11,9,15,17,17,16,16,5,18,21,21,20,19,2,4,9,19,2,10,10,8,5,5,4,4,7,6,4,0,1,1,17,3,3,2,2,7,22,16,3,10,19,0,5,8,1,6,3,13,14,7,7,10,8,19,14,6,0,0,1,14,10,12,1,1,7,10,7,8,0,0,5,5,0,0,3,3,4,18,19,19,18,18,17,10,19,12,10,10,2,6,14,14,1,21,1,16,1,0,1,1,9,16,4,4,4,4,0,16,7,11,5,6,1,1,9,4,16,0,5,3,14,16,11,9,2,6,8,1,1,16,19,19,4,20,12,12,12,12,8,8,14,14,7,7,3,1,11,6,18,23,15,15,15,19,14,12,3,1,1,2,2,14,3,6,6,0,0,6,1,7,7,20,6,2,4,4,2,2,2,2,15,18,12,1,8,6,12,14,14,18,6,3,6,5,9,16,8,8,6,5,10,11,2,0,4,7,2,4,0,17,17,0,3,7,9,14,14,21,21,4,8,4,17,16,11,18,5,8,8,8,8,8,6,8,11,11,3,10,19,18,11,4,19,19,18,17,17,1,1,5,5,0,4,0,0,5,6,2,2,0,4,0,0,9,7,8,0,10,0,1,1,10,14,14,10,18,16,16,16,14,15,15,0,10,9,9,11,5,20,10,8,10,10,11,8,9,14,2,0,16,12,12,6,0,8,8,11,3,12,16,6,10,10,12,12,15,15,20,20,19,4,3,15,2,12,11,1,10,3,6,0,0,16,12,6,22,8,8,2,17,9,5,9,11,13,1,18,12,10,6,18,18,17,19,14,10,9,17,8,6,9,9,17,20,20,20,17,17,2,2,0,20,6,9,9,9,4,9,0,1,0,0,12,12,5,6,5,16,13,13,4,4,7,19,11,2,2,13,0,11,1,10,19,10,1,1,10,10,6,12,7,7,2,5,13,4,2,6,8,20,15,17,0,0,5,2,9,6,8,1,0,0,7,5,2,12,8,8,8,11,9,14,20,22,4,17,11,12,19,18,1,1,16,1,10,8,11,11,6,6,9,8,10,5,12,14,14,10,5,4,4,8,10,5,13,13,13,1,13,13,17,17,0,10,9,9,7,7,12,15,17,14,17,3,17,4,17,8,7,4,1,5,0,11,7,7,17,6,15,15,10,10,15,1,0,0,1,22,9,6,6,9,4,0,3,6,1,14,20,1,0,12,0,7,14,9,1,11,11,11,5,18,18,15,17,17,20,15,2,8,17,20,8,7,6,20,20,1,1,3,6,9,3,0,9,4,4,15,15,15,15,1,2,1,1,6,2,11,1,0,6,7,7,0,0,13,17,9,13,19,3,2,16,0,9,7,0,6,0,0,11,7,6,14,14,0,0,1,12,8,6,5,9,8,12,19,0,4,16,7,7,6,18,18,4,0,0,0,4,14,9,8,8,7,1,0,15,10,6,12,4,1,1,10,4,13,13,15,14,19,16,12,12,10,14,7,15,9,1,6,19,0,13,6,6,6,7,8,8,10,2,13,13,10,10,9,2,2,1,2,3,8,8,20,6,6,3,6,8,2,17,2,3,6,6,19,7,11,1,0,0,7,7,7,0,0,0,19,19,9,8,7,8,8,2,9,4,8,8,0,0,0,0,2,2,6,0,7,4,5,15,16,2,1,7,7,5,1,16,14,18,16,12,9,4,2,6,6,14,14,6,13,16,20,11,6,2,13,19,15,12,8,1,0,3,3,5,5,3,4,7,7,11,11,12,17,17,11,9,6,4,9,7,11,11,11,7,7,8,2,0,6,6,6,22,21,18,20,16,16,0,0,16,16,16,16,19,19,5,6,5,2,12,3,4,4,14,14,12,11,5,4,8,8,12,15,12,12,15,6,6,0,3,3,12,13,12,14,10,10,13,10,13,13,2,2,12,13,9,10,9,1,0,5,6,0,4,3,4,16,9,5,7,7,7,9,8,8,4,17,18,17,19,20,17,11,5,8,8,6,6,5,14,14,2,1,13,2,9,9,0,0,1,11,9,13,14,0,1,1,20,0,8,8,13,13,13,13,15,15,15,8,13,13,13,13,14,18,16,20,12,12,19,6,19,19,16,14,19,19,19,19,2,17,1};

static  int rectangles_array6[2913] = {
12,4,18,9,2,12,12,4,7,12,4,19,8,6,14,14,3,2,2,2,2,8,2,10,14,8,15,5,2,3,6,13,3,3,8,7,21,2,10,2,2,11,2,2,2,19,2,2,7,18,2,6,12,4,8,18,6,2,2,8,8,3,8,12,6,9,18,16,2,18,10,14,7,9,9,4,7,4,6,2,2,2,2,6,12,8,16,3,8,2,5,2,2,6,18,4,8,10,10,18,22,18,3,2,2,10,4,2,3,6,6,2,2,9,9,2,6,20,9,9,7,5,6,18,8,18,3,4,2,19,11,11,5,4,4,5,8,12,3,6,22,17,2,3,3,3,3,4,19,6,17,3,4,3,3,10,3,8,9,6,5,3,8,3,10,3,3,10,2,12,18,22,4,3,3,11,12,11,10,1,1,1,1,1,9,9,18,4,18,6,14,3,6,3,18,5,2,18,19,2,19,2,7,20,22,7,11,11,2,3,4,12,6,18,6,8,2,12,2,2,2,2,9,7,9,5,5,16,10,5,5,2,18,18,9,7,1,1,5,7,5,12,11,15,8,9,5,5,3,10,10,16,7,2,3,6,10,3,5,8,5,3,6,6,3,13,2,3,3,3,12,2,6,8,10,6,1,6,1,1,9,9,9,9,6,8,8,2,5,1,2,3,24,13,6,16,6,6,5,2,2,2,2,2,9,3,6,5,3,18,19,2,1,1,6,2,9,10,3,11,5,18,2,8,12,4,14,4,5,3,6,20,19,2,3,2,3,3,6,15,6,6,18,12,2,2,9,13,9,3,3,3,9,5,2,2,6,18,10,11,8,9,4,3,2,2,3,3,9,9,19,19,10,5,3,3,6,9,4,14,2,6,9,7,17,11,13,9,5,6,6,8,3,24,10,6,18,16,3,6,2,2,2,9,6,2,8,5,5,2,3,19,6,2,5,5,5,3,7,9,3,2,2,9,6,2,11,6,9,6,6,9,19,6,6,2,2,6,6,2,2,18,18,11,7,15,22,8,9,12,7,11,7,12,9,22,11,6,24,5,5,12,18,8,8,18,21,2,2,3,2,2,2,3,2,8,10,2,3,3,2,5,1,5,2,2,3,7,4,7,2,6,2,7,5,4,5,11,4,8,23,6,21,2,4,8,5,10,9,6,9,9,9,9,2,18,21,6,6,6,8,5,5,5,3,6,1,2,3,4,1,2,9,24,2,2,2,12,1,12,18,18,12,2,2,2,4,16,4,4,11,8,2,2,8,6,18,6,9,4,3,18,2,2,2,2,9,12,9,9,2,2,9,3,14,3,14,14,9,9,2,2,2,2,4,3,8,5,2,6,18,4,12,1,5,5,10,8,15,4,14,4,3,3,18,14,3,3,8,3,10,3,3,11,10,2,2,4,20,10,3,10,2,5,6,4,4,9,14,19,5,8,8,9,18,18,9,23,18,6,1,10,10,2,2,2,2,3,3,1,9,1,6,18,6,4,3,3,5,7,1,5,5,3,3,3,3,3,2,4,4,10,21,6,6,6,6,20,6,4,4,10,6,8,9,4,7,3,19,6,18,2,20,22,2,2,3,2,10,6,12,4,4,17,9,7,7,1,1,14,9,18,4,4,7,22,4,7,9,22,2,8,3,2,9,18,6,2,2,2,9,8,6,6,4,19,3,12,18,4,9,2,2,2,2,2,18,20,6,8,3,7,12,18,5,5,4,4,6,2,2,6,23,19,11,4,5,9,9,9,10,3,3,4,7,5,12,23,4,18,9,9,3,3,12,18,12,18,9,9,18,2,2,5,6,2,8,21,3,11,5,6,6,22,6,2,2,3,6,3,16,2,16,6,2,4,5,5,4,4,3,8,6,9,10,4,3,6,12,20,9,9,4,4,3,4,3,2,5,7,10,2,18,8,18,3,18,4,2,2,2,12,9,9,19,11,3,20,2,8,8,3,8,16,4,4,6,2,4,6,3,7,16,7,4,2,3,4,2,4,23,2,4,10,2,3,3,6,6,4,21,4,6,19,14,6,2,11,3,2,2,18,11,20,13,11,7,5,5,2,3,4,8,14,9,18,3,24,10,18,3,11,12,4,4,6,5,2,2,2,2,16,20,2,2,6,6,9,15,19,7,9,8,18,4,9,7,11,2,5,5,8,6,4,6,4,2,4,10,7,20,4,6,12,3,4,4,3,8,3,1,5,5,10,23,7,2,6,4,8,4,4,8,5,19,8,13,24,2,2,6,6,18,9,2,2,3,3,3,3,19,6,16,3,4,15,4,2,2,6,11,21,4,3,21,19,3,3,7,9,8,11,9,18,7,8,6,2,2,2,6,6,1,2,1,6,2,1,3,5,1,2,19,18,9,2,10,10,3,8,18,3,4,4,14,4,5,4,11,6,9,19,9,18,9,24,14,9,6,13,6,7,3,3,5,8,9,6,9,6,7,7,3,3,5,2,2,3,9,9,3,4,4,3,5,5,12,9,12,11,11,6,20,14,16,19,10,4,21,3,14,2,9,4,19,20,2,8,6,6,2,2,6,6,8,2,2,2,9,2,7,7,3,2,2,3,10,7,6,6,2,10,9,6,5,16,8,2,9,9,9,9,18,18,18,19,2,5,2,2,6,11,7,18,2,18,8,18,2,2,1,1,7,9,21,7,22,12,9,6,7,7,6,6,10,3,7,7,6,3,3,3,18,2,2,2,2,2,8,9,5,6,19,4,9,5,4,6,6,8,7,10,10,2,4,4,2,2,6,6,9,15,9,9,9,9,4,2,10,4,10,9,11,6,6,9,5,6,6,12,8,8,12,4,4,4,15,8,5,6,3,2,3,20,6,10,2,2,2,2,3,18,10,4,3,9,9,2,2,2,20,20,18,6,22,6,6,24,2,2,2,2,2,9,18,9,23,18,9,4,5,4,3,4,2,2,6,4,4,3,3,6,9,4,11,6,10,10,5,18,19,6,11,7,11,5,3,6,6,6,2,2,9,18,13,4,4,4,2,3,3,5,5,6,6,6,12,1,1,1,1,2,2,18,7,12,9,20,3,18,18,6,9,9,3,6,4,3,4,3,12,6,6,9,12,20,4,1,5,6,6,4,4,9,12,2,3,4,6,8,3,5,5,6,6,6,6,18,9,5,5,3,3,5,3,18,2,3,3,2,2,4,5,22,1,8,10,4,3,5,20,6,6,10,4,3,2,3,2,2,19,2,2,2,5,2,2,8,6,2,6,12,9,9,18,22,6,6,16,9,6,6,2,8,8,2,18,18,11,9,7,6,24,4,6,2,2,2,20,6,2,6,2,1,5,4,2,2,3,3,3,2,9,11,5,5,4,4,5,21,9,6,6,4,5,5,4,5,6,2,3,3,11,3,4,4,4,8,18,16,4,3,4,4,4,4,5,7,24,4,4,12,12,6,6,4,18,18,22,12,6,6,2,9,7,3,6,2,2,2,6,14,17,12,9,12,9,18,9,9,24,20,8,4,10,6,7,7,3,19,9,9,10,9,2,2,4,4,3,6,10,7,9,2,3,6,10,10,5,2,8,12,2,18,16,6,7,4,20,3,2,2,2,4,1,3,19,9,6,2,2,4,18,14,18,9,6,7,20,9,15,6,6,9,9,6,6,4,8,3,4,24,6,3,16,4,5,9,9,6,20,17,7,23,2,2,2,18,3,1,1,6,5,6,2,5,5,2,2,6,18,6,6,11,5,5,5,3,5,8,8,11,4,3,2,2,7,4,3,3,4,19,2,18,5,4,16,18,5,6,6,11,3,4,5,4,4,9,10,21,11,6,3,6,6,11,18,22,6,2,2,18,3,6,4,18,6,2,2,18,2,2,5,5,5,9,23,8,6,9,18,11,11,12,8,14,21,12,4,7,6,4,4,6,3,19,5,9,2,17,4,3,16,5,6,3,20,5,2,2,2,9,2,2,2,2,6,6,3,3,3,7,12,2,6,2,6,14,16,2,21,6,5,8,7,4,6,6,7,9,6,8,18,9,19,24,9,9,18,18,1,8,18,1,4,10,3,10,5,6,9,4,5,7,10,4,2,18,2,2,2,2,9,14,15,4,3,3,6,4,8,6,6,12,9,24,11,9,5,2,6,6,16,10,18,9,10,18,15,15,12,2,2,3,10,18,10,5,7,3,3,3,4,2,1,8,2,2,4,4,2,2,9,9,2,2,2,4,12,12,14,20,4,13,6,2,12,15,4,6,8,1,2,2,6,17,5,5,18,4,3,2,21,3,6,8,9,5,3,5,3,3,5,8,6,3,2,2,10,18,7,7,1,5,12,20,19,9,14,14,3,18,6,9,10,10,12,10,3,3,4,4,2,10,3,7,13,4,10,5,2,6,9,7,22,18,2,2,2,2,3,2,9,9,15,3,6,10,6,9,2,2,2,2,2,3,8,2,3,18,10,10,9,3,5,4,19,6,7,16,18,10,4,6,4,3,6,6,9,12,10,10,6,6,4,6,10,10,18,4,24,6,10,19,10,7,4,5,2,2,2,2,3,8,8,12,3,7,7,4,4,2,1,3,10,12,4,4,6,5,7,5,3,12,4,11,12,9,23,19,6,6,2,2,2,2,2,8,7,9,2,2,10,3,5,4,4,4,2,2,2,2,24,10,23,19,18,9,6,6,20,3,18,3,6,6,6,5,2,2,2,6,2,5,2,1,2,2,19,9,7,14,8,8,9,9,6,2,2,2,2,2,9,2,4,9,7,5,10,4,22,2,3,2,5,4,6,12,6,6,2,19,6,8,6,6,6,24,10,10,19,19,16,8,6,2,18,18,6,6,6,4,6,10,2,3,2,3,3,15,20,2,6,2,3,2,6,9,9,6,2,4,18,2,19,15,7,11,2,18,3,20,5,4,3,4,4,6,6,1,7,4,4,5,3,10,18,15,8,24,2,4,10,18,24,2,4,18,18,9,10,7,6,7,7,6,6,2,18,2,10,11,4,9,2,4,4,4,3,4,3,4,4,14,11,2,11,9,18,4,18,18,9,9,9,3,3,2,2,2,2,2,2,6,2,5,5,2,3,4,4,24,7,4,5,4,2,3,3,18,16,16,4,8,4,9,9,16,19,9,1,24,5,19,3,12,9,10,20,7,7,2,5,6,3,6,2,9,11,11,3,2,6,24,8,6,2,5,2,3,3,3,3,2,2,5,5,9,14,10,5,1,3,5,8,12,2,3,2,2,19,4,2,18,10,18,3,24,4,2,4,5,9,19,8,8,10,6,7,6,6,15,6,7,6,6,2,2,3,3,9,9,9,9,18,18,2,2,1,8,2,5,6,7,2,6,5,9,1,1,3,3,6,3,3,5,5,5,2,2,5,7,6,24,7,2,2,7,8,7,5,3,8,8,3,3,5,6,12,5,9,11,4,9,13,2,2,10,20,9,2,2,22,9,24,16,18,2,3,3,4,7,10,19,2,2,2,3,6,2,8,18,5,12,6,10,24,9,2,2,8,2,3,6,5,5,3,3,7,3,6,2,16,7,8,3,3,1,11,18,6,3,4,4,10,1,9,9,9,9,9,6,10,9,18,3,2,18,3,10,3,1,3,11,3,11,4,10,7,6,2,4,4,4,3,4,3,3,3,3,5,3,3,5,8,19,9,9,6,3,14,4,7,4,4,22,6,3,3,17,6,9,10,5,8,3,3,19,6,10,10,9,18,18,9,9,2,2,8,6,2,6,2,6,6,3,3,2,6,6,2,2,6,4,4,9,9,6,9,18,3,3,3,7,2,6,6,3,16,3,2,2,2,5,9,18,5,17,9,24,18,2,14,3,2,2,2,7,4,3,3,4,4,4,4,6,9,10,3,4,8,5,5,5,6,5,6,5,5,6,18,18,2,4,4,4,6,9,9,6,6,9,6,3,2,10,10,4,1,1,1,6,5,7,7,3,4,4,5,9,9,12,5,3,2,7,2,7,19,3,5,5,4,6,3,7,7,13,3,17,17,8,8,12,5,6,9,1,1,2,2,11,4,4,3,6,3,3,6,3,8,5,7,11,6,4,2,1,1,9,4,3,9,1,1,5,18,20,9,19,19,9,6,7,3,3,3,2,2,2,2,4,4,2,3,3,9,8,10,9,3,5,3,12,4,4,6,12,6,6,7,6,19,6,2,2,5,5,7,3,8,10,18,2,20,2,6,6,18,15,18,1,2,2,4,4,20,13,7,7,5,5,3,18,18,9,15,6,12,3,13,11,6,6,24,10,18,10,1,6,2,2,18,9,6,9,5,5,5,5,9,9,10,10,18,18,9,7,19,16,8,6,1,1,4,4,3,6,4,6,9,9,3,18,3,3,18,18,22,7,6,6,8,16,6,4,3,3,18,10,9,9,1,1,2,6,8,9,16,18,2,3,2,2,6,18,24,9,4,13,16,14,9,16,13,13,12,10,18,18,9,11,8,8,18,5,6,9,2,3,2,2,5,9,17,12,8,5,2,2,2,13,19,6,4,3,3,3,9,2,4,4,5,5,4,4,16,16,7,3,9,17,8,8,5,11,12,6,3,3,9,11,9,18,19,18,9,9,9,9,1,24,3};

static  int rectangles_array7[2913] = {
3,7,3,2,19,8,3,5,3,2,7,4,3,5,5,3,6,10,10,9,11,13,9,2,6,3,3,7,10,6,3,2,15,15,15,6,4,10,10,13,13,19,9,11,9,1,9,9,7,1,11,3,3,6,5,2,3,13,13,23,4,7,3,2,6,2,1,6,20,1,7,4,3,2,2,5,7,5,3,9,9,9,9,4,3,6,4,6,3,9,4,9,9,6,1,5,5,2,2,1,1,1,15,10,10,3,9,9,6,3,3,9,9,2,2,10,3,1,6,24,5,6,6,1,4,3,6,18,14,1,13,2,10,6,6,4,4,2,6,3,5,3,10,8,7,22,22,16,2,4,2,7,5,11,11,9,7,8,14,3,8,6,4,6,2,6,6,2,9,2,1,1,8,6,6,2,2,6,17,24,24,22,22,18,2,2,1,9,1,4,3,6,8,16,3,4,9,1,1,9,6,9,6,1,1,3,2,2,11,6,5,6,5,1,3,3,9,7,13,13,9,9,2,3,2,4,9,2,2,10,7,9,1,1,2,3,18,18,10,4,9,3,4,3,19,3,4,4,8,2,2,3,5,13,14,5,2,14,4,5,4,6,3,3,8,2,9,6,9,9,2,9,3,7,4,3,20,3,21,23,2,2,2,2,4,19,6,10,6,19,10,6,1,2,3,2,3,3,4,9,9,9,15,15,2,7,5,4,8,1,1,9,18,18,9,14,3,8,6,8,5,1,10,4,3,5,4,5,7,8,8,1,2,9,14,12,9,9,3,2,3,3,1,2,9,9,2,2,2,15,6,7,2,4,19,19,3,1,3,2,3,11,7,10,9,9,6,6,2,2,1,1,2,6,6,6,3,6,6,4,9,3,2,23,2,6,2,2,4,3,3,4,6,1,2,3,3,3,6,4,9,10,9,21,7,9,4,4,4,9,17,3,3,19,7,6,6,6,4,2,6,14,14,2,5,11,7,3,2,3,3,2,1,3,3,9,9,7,5,9,9,1,1,6,3,2,1,24,4,3,4,3,3,8,2,1,4,3,2,5,5,2,1,3,3,1,5,24,11,6,10,24,24,7,12,14,2,9,7,15,9,7,18,6,10,9,7,3,6,6,9,3,13,3,4,5,4,3,5,5,2,3,2,12,5,5,12,2,2,8,2,2,2,2,9,1,2,3,3,3,5,8,5,5,10,3,18,9,7,5,18,9,2,1,9,10,12,6,21,4,4,1,2,9,9,22,7,5,7,7,3,9,16,16,4,3,1,3,2,5,6,1,11,11,9,9,9,2,2,2,17,17,2,6,6,6,5,5,2,2,14,9,15,15,9,21,4,6,9,3,1,5,2,20,4,4,3,3,2,6,3,5,7,6,1,6,6,6,3,7,2,6,7,4,2,9,9,5,1,2,11,3,9,4,3,5,8,2,3,4,8,18,11,5,1,1,2,5,1,3,22,2,2,12,9,9,9,6,9,19,2,19,3,1,4,5,6,8,4,3,19,20,20,6,6,7,7,7,9,10,10,2,2,6,6,3,3,2,3,5,5,13,5,3,2,5,6,6,1,3,1,9,1,1,9,23,19,9,2,6,3,5,5,3,4,3,3,18,18,2,2,3,8,5,4,2,5,4,2,2,17,9,6,9,6,1,3,11,10,17,2,3,4,4,5,1,7,3,1,6,14,9,18,18,10,11,1,1,4,4,6,7,5,1,4,4,9,9,6,9,11,6,1,1,2,5,4,3,2,2,4,18,10,5,6,7,2,2,5,1,2,2,6,6,3,1,2,1,2,2,1,10,9,4,4,11,3,2,6,4,4,3,4,11,4,9,9,7,8,7,10,10,2,4,9,5,4,4,5,5,8,3,4,2,2,6,6,3,2,1,3,2,6,6,8,5,6,9,4,6,2,15,1,3,1,6,1,5,9,9,9,2,2,2,1,6,6,1,10,3,3,7,3,4,6,5,3,9,6,3,6,3,3,3,7,9,7,8,10,5,1,12,5,2,12,6,6,13,13,6,1,6,7,1,2,4,9,2,6,23,23,1,2,1,2,15,3,4,4,9,6,5,3,3,2,1,6,1,2,1,8,2,11,5,6,3,10,9,10,10,10,3,1,13,13,7,3,2,2,1,8,2,4,1,6,2,7,3,9,5,5,3,3,7,6,6,9,8,2,7,1,8,5,2,7,8,8,6,6,8,18,7,7,3,6,3,9,3,8,4,8,8,5,4,1,9,4,1,11,9,4,3,1,2,9,9,19,19,8,8,1,4,2,6,7,6,5,9,9,4,2,1,6,6,1,1,7,7,7,2,3,2,2,1,3,4,5,9,10,10,3,3,19,9,19,4,9,19,6,5,18,12,1,1,2,9,2,2,6,8,1,6,5,5,2,5,4,7,3,3,2,1,2,1,2,1,2,2,3,2,4,3,6,7,4,3,2,3,2,3,5,5,17,10,4,9,9,8,2,2,6,5,6,8,4,4,2,2,3,2,2,9,2,7,3,1,2,5,1,6,3,9,3,7,1,1,13,4,3,3,10,10,3,3,21,13,21,20,2,9,3,3,9,10,9,9,2,7,3,6,10,4,2,3,7,2,3,10,2,2,2,2,1,1,1,1,11,6,11,11,3,2,12,1,9,1,3,1,9,9,18,18,3,2,1,3,1,8,2,4,3,3,3,3,5,8,15,8,4,6,6,6,1,11,15,13,9,9,4,4,4,3,1,10,2,4,7,3,3,3,3,2,3,9,8,8,9,16,4,4,2,11,2,2,2,2,5,16,2,5,2,2,2,5,3,2,16,13,3,3,3,3,11,5,5,7,3,6,8,3,6,9,8,1,3,2,9,9,9,9,6,1,2,6,6,11,11,11,11,9,1,1,1,3,3,3,3,2,10,9,9,9,9,2,1,2,2,1,2,5,6,5,12,5,9,9,4,5,5,7,19,3,3,5,4,3,9,6,4,1,1,3,2,4,3,4,7,3,4,3,9,23,2,1,7,6,6,7,9,6,6,5,5,3,5,4,2,19,19,20,20,12,12,7,4,4,5,1,6,1,1,3,2,2,7,3,9,6,5,6,3,3,3,2,3,1,6,24,4,6,4,7,7,5,2,9,7,5,3,12,14,4,4,3,3,3,3,2,2,4,4,12,11,4,7,1,9,7,6,11,11,18,5,1,20,4,2,5,7,4,3,4,3,2,9,8,17,6,17,17,1,9,9,9,4,9,9,4,3,9,3,2,2,2,1,2,3,3,3,2,3,3,23,3,4,23,1,1,2,2,3,3,2,5,6,9,9,9,1,3,13,4,13,18,5,8,9,9,7,7,8,10,3,4,5,5,16,16,5,1,2,4,6,6,4,4,5,4,3,9,7,7,6,8,7,7,9,4,4,4,10,6,10,10,7,7,4,3,5,11,8,3,3,6,3,5,1,1,1,3,3,3,9,2,6,6,4,16,9,9,5,2,4,7,3,3,5,1,2,2,2,3,6,5,2,4,5,5,6,4,2,2,2,2,9,9,5,13,6,3,2,5,3,9,7,3,3,2,6,9,7,3,9,1,2,3,3,5,1,6,9,11,11,5,18,6,1,2,5,9,9,5,1,2,1,2,3,4,1,2,2,3,3,2,2,3,3,5,4,6,5,3,4,6,2,5,4,4,4,3,4,8,3,1,9,9,13,1,6,24,24,10,6,3,11,4,18,16,16,3,1,3,3,2,4,7,7,6,4,3,3,7,5,6,18,9,3,5,6,6,5,1,13,1,4,5,2,1,4,3,3,4,6,5,7,10,10,3,3,2,8,11,6,9,9,2,2,2,3,9,9,1,13,4,6,1,4,9,13,1,9,9,4,4,4,2,5,6,3,2,1,2,2,3,4,2,1,3,5,3,3,5,5,4,6,1,5,12,12,3,11,13,3,6,3,6,1,10,9,9,9,2,9,9,16,16,3,3,6,6,8,6,2,20,3,9,3,2,6,9,2,3,4,8,3,5,4,4,3,5,21,21,1,2,1,1,2,2,1,1,23,3,1,23,5,4,7,3,6,5,2,5,4,24,2,5,9,1,9,9,9,11,2,4,3,5,12,12,4,10,3,9,5,11,2,4,2,2,4,9,3,3,3,2,1,3,3,1,2,2,2,12,9,6,2,3,3,4,3,7,6,6,6,14,18,12,14,14,20,20,17,17,2,2,13,13,9,7,2,2,3,1,5,3,6,9,2,4,5,3,5,18,14,9,3,2,4,4,1,5,6,12,1,6,3,9,5,6,6,11,6,6,4,4,3,13,9,9,3,1,3,3,21,4,2,1,1,2,4,6,7,2,3,2,3,3,2,4,7,7,5,5,10,2,6,3,3,5,2,4,9,6,2,3,1,1,9,9,20,20,7,9,2,2,2,6,3,2,3,7,9,9,9,9,9,6,3,11,6,1,4,2,2,6,4,8,1,3,8,4,1,7,5,3,6,9,4,4,3,2,2,2,3,3,8,3,2,2,1,5,2,3,3,4,2,14,8,4,9,10,13,13,6,3,7,2,6,4,3,5,5,13,19,6,2,2,5,7,3,12,7,4,6,3,5,2,2,2,2,4,7,3,9,12,9,9,11,6,3,2,11,11,2,7,4,5,6,6,16,16,16,16,1,2,4,1,1,2,3,3,3,7,1,7,5,5,9,5,9,9,10,3,10,4,10,19,10,9,2,2,3,4,3,3,2,2,8,9,9,9,10,10,3,9,6,4,6,7,2,5,1,10,6,9,8,6,7,2,3,3,10,1,4,11,4,4,3,2,2,2,1,1,3,5,5,9,1,1,3,3,3,5,8,5,13,13,9,11,11,2,1,9,7,9,6,9,10,3,3,3,9,15,1,9,1,2,5,14,9,1,6,1,4,5,6,5,5,3,3,20,3,13,5,4,7,2,1,4,9,1,13,5,3,1,1,11,5,1,1,5,21,3,3,4,4,3,3,9,1,9,2,3,5,2,9,5,5,5,7,5,7,5,6,6,2,10,2,2,1,13,1,1,2,2,2,16,16,10,10,24,10,9,9,5,9,8,8,9,6,18,18,2,3,15,14,5,9,8,8,4,2,5,5,3,5,2,2,4,2,2,23,2,4,9,6,4,2,2,1,10,10,9,12,4,7,8,9,2,2,3,6,9,7,2,10,21,10,4,9,6,6,6,6,9,9,4,4,2,2,2,4,19,8,4,3,2,10,6,22,22,1,5,9,1,5,1,6,7,5,9,5,5,2,1,6,8,2,3,3,3,3,4,8,4,3,3,9,9,6,6,2,2,2,2,1,1,11,11,24,4,9,7,3,3,10,3,7,6,24,24,7,7,19,6,6,4,5,5,10,10,4,4,3,1,10,9,19,3,10,9,5,6,10,10,6,6,4,3,2,5,2,5,6,2,2,9,9,2,1,2,19,19,1,2,9,4,2,10,6,6,5,5,2,1,9,9,9,9,5,10,3,1,6,2,3,2,2,2,11,11,3,9,6,3,4,4,6,6,4,7,4,9,6,10,6,7,6,18,7,1,4,7,6,6,11,20,2,2,2,2,12,4,2,3,1,8,12,1,7,2,7,19,7,3,7,3,5,19,6,7,9,5,5,5,7,5,9,9,7,7,4,6,6,6,8,1,2,2,5,6,3,10,3,5,14,2,3,7,6,6,3,2,2,6,3,6,6,1,3,2,2,2,1,1,2,2,9,12,4,3,12,3,9,3,3,10,10,9,4,3,9,9,3,10,10,2,2,3,2,1,7,6,6,3,13,3,15,7,3,6,9,24,24,4,2,2,4,2,7,1,1,9,6,6,9,10,9,7,5,8,9,5,5,5,5,5,2,3,7,8,4,4,4,4,9,4,4,6,6,7,1,1,10,24,15,24,9,2,3,3,3,2,10,23,9,2,3,5,19,18,18,3,9,7,7,6,5,5,8,2,2,3,4,6,9,3,22,3,1,24,6,7,5,5,6,7,7,2,6,3,3,3,3,5,8,8,2,18,19,16,16,2,5,5,6,5,7,6,3,6,10,6,4,2,4,5,9,22,22,2,5,6,13,24,24,4,1,1,2,5,1,2,8,4,16,16,16,14,14,22,22,20,20,9,16,6,3,4,2,2,6,4,6,3,6,5,4,2,3,3,9,3,1,3,9,9,5,5,3,7,5,3,1,10,1,11,4,3,1,2,1,18,10,10,9,9,1,2,7,7,6,6,6,1,1,5,2,3,3,6,2,13,3,3,1,2,1,2,19,8,9,9,1,2,3,2,4,4,6,6,2,2,2,2,1,1,6,3,5,2,12,15,19,19,5,5,6,3,5,5,5,5,6,1,6,6,1,1,1,10,17,17,11,3,4,7,7,7,1,2,2,2,18,18,10,3,3,2,2,1,9,6,9,9,3,3,1,2,5,3,3,3,2,2,3,3,3,3,1,1,2,2,3,5,1,5,3,3,9,6,9,9,6,12,11,2,3,9,9,9,12,2,1,4,5,7,7,7,2,10,6,6,4,4,5,5,4,4,3,7,2,3,5,5,4,3,4,3,6,6,2,5,2,1,1,1,2,2,2,2,20,4,11};

static  int rectangles_array8[2913] = {
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,12,0,0,0,0,0,0,0,0,0,0,0,0,5,0,0,0,0,0,0,0,8,0,0,0,0,0,11,0,0,0,0,0,0,0,11,0,0,0,0,11,12,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,11,6,0,0,0,0,0,0,0,11,0,12,9,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,9,0,0,0,0,0,0,0,12,0,0,0,11,0,0,0,0,0,0,0,0,0,0,0,12,2,0,0,0,0,0,0,0,0,0,9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6,0,0,0,2,11,0,0,0,0,0,0,0,9,0,12,0,0,0,0,0,9,3,0,0,0,0,0,7,0,0,0,3,11,0,0,0,0,0,12,1,0,0,0,0,0,17,11,0,0,0,0,0,9,0,0,0,0,0,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,7,0,0,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,11,12,12,0,0,0,0,0,0,0,8,0,0,0,0,0,0,0,0,18,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,12,4,10,10,3,0,0,15,6,0,0,0,0,0,11,17,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,9,0,0,8,11,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,12,0,0,0,0,0,0,1,0,0,12,0,0,0,0,14,5,0,0,5,11,0,0,0,0,0,0,0,0,16,0,0,0,0,5,0,0,12,0,0,0,0,0,0,0,0,12,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,7,0,0,0,11,0,0,0,11,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16,0,16,4,0,0,0,0,5,0,0,0,0,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,11,10,0,0,7,0,0,12,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,12,8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,13,0,0,0,7,0,0,0,0,0,14,7,0,0,0,0,0,0,0,0,12,0,0,6,14,6,0,0,5,0,0,10,0,0,0,0,20,0,0,2,0,0,0,0,7,12,0,0,0,11,7,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,17,0,0,0,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,12,0,0,0,0,16,4,12,0,0,6,0,0,0,0,0,0,0,0,3,0,0,0,0,12,0,0,13,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,13,0,0,0,0,0,0,11,0,0,0,0,0,0,0,0,0,0,0,7,0,0,0,0,0,0,0,0,0,0,0,0,0,11,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,6,0,11,10,0,0,8,12,0,4,0,0,0,0,0,0,0,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8,11,0,0,0,0,0,0,0,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,12,1,0,9,10,4,0,16,0,8,0,10,0,5,0,0,7,0,0,10,10,0,9,0,0,0,0,0,0,0,0,9,16,0,16,4,0,0,0,0,0,0,0,0,6,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,11,0,0,8,4,0,0,17,4,7,0,0,12,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,4,10,0,0,0,0,0,0,0,0,0,11,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,12,0,0,0,0,0,9,8,0,6,0,0,0,6,0,0,0,0,0,0,12,7,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,12,12,12,0,11,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,12,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,12,0,11,5,12,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8,9,11,2,0,0,0,0,0,0,0,0,0,0,0,0,0,10,0,0,0,0,0,0,6,10,0,0,0,6,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,10,0,9,6,9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,9,0,9,0,9,0,10,0,9,11,11,0,6,10,16,11,8,10,3,5,0,0,0,12,0,0,12,0,0,0,0,0,0,0,0,0,15,4,0,0,14,7,0,0,0,0,11,12,0,0,0,0,0,0,0,0,0,0,0,12,0,0,0,0,4,10,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,7,15,5,0,0,0,0,10,0,0,0,0,0,0,0,0,0,0,0,9,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,10,14,0,0,12,0,0,0,0,0,0,0,0,0,0,0,0,7,0,0,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,8,0,0,0,0,0,0,0,7,0,0,0,0,0,0,0,0,17,4,14,0,3,0,0,0,0,0,0,0,0,0,6,12,14,5,0,11,7,11,10,11,0,7,0,0,10,10,0,0,15,0,15,5,11,9,0,0,0,0,10,12,0,7,0,8,0,0,0,0,12,6,0,0,0,0,0,0,0,0,9,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,16,0,0,0,0,0,0,0,10,0,0,0,0,0,0,0,0,9,12,0,0,0,0,0,0,0,0,0,12,13,0,0,0,0,0,8,0,0,0,0,0,0,0,0,0,0,0,0,6,0,0,0,0,0,0,0,0,9,0,16,0,0,4,0,11,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,10,0,0,2,7,17,0,0,0,15,4,0,5,0,0,0,0,0,0,0,10,11,0,0,0,0,0,0,0,6,0,0,11,0,0,12,6,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,7,0,0,0,0,0,12,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,11,0,0,0,0,0,0,0,0,0,0,0,12,6,0,9,0,5,12,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,14,0,0,7,0,5,0,0,0,0,0,0,0,0,10,0,0,0,0,11,0,0,0,0,5,0,0,12,0,0,1,0,0,0,10,8,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,12,6,0,14,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8,0,0,0,0,0,0,0,0,0,0,0,8,0,0,0,0,0,14,0,0,7,12,0,0,0,0,0,0,0,9,12,0,0,0,0,0,0,10,7,0,0,0,0,0,0,0,0,0,0,0,9,3,11,0,11,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,11,0,0,0,0,0,6,12,0,12,15,7,0,0,0,0,4,0,17,0,0,0,0,4,0,0,0,7,0,0,0,0,0,0,0,0,0,0,5,0,0,0,0,0,0,7,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,11,5,12,0,0,0,12,0,0,0,0,0,12,0,5,0,11,7,12,0,0,0,12,0,0,0,0,0,0,0,0,0,0,13,0,0,12,13,9,4,0,0,0,15,5,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,9,0,0,11,0,11,6,11,0,11,0,0,0,0,0,0,0,6,0,0,0,0,12,11,11,5,0,0,9,6,0,0,0,0,0,13,12,7,12,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,11,0,0,0,10,0,0,0,0,0,0,19,0,0,0,0,0,0,0,0,0,0,12,14,6,10,0,0,11,0,0,0,10,0,0,0,0,0,0,16,0,0,0,0,4,0,0,3,0,0,6,0,0,0,0,19,0,19,0,0,0,0,3,9,11,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5,0,0,0,0,0,0,0,6,0,0,0,0,0,0,13,0,0,0,0,0,0,7,8,0,0,0,0,0,0,0,0,0,0,12,0,0,0,0,0,0,0,0,6,0,11,0,0,11,1,0,0,0,0,0,0,0,10,0,12,9,16,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,13,0,13,12,4,0,0,0,0,0,0,9,0,0,0,0,0,0,0,8,14,7,0,9,0,0,0,0,19,3,0,0,11,12,0,0,20,0,7,0,0,0,0,0,0,0,0,8,0,0,20,2,0,0,0,0,7,0,0,0,7,0,0,0,7,9,0,0,7,0,0,0,0,0,0,0,0,12,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,12,0,0,15,7,0,0,0,11,0,0,12,9,5,0,0,6,0,0,0,12,0,0,1,0,0,0,0,0,0,0,4,11,0,0,6,0,0,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,12,0,0,0,0,0,12,0,0,0,0,13,3,10,12,0,0,6,0,0,0,0,7,0,0,0,0,0,0,0,0,12,4,0,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,18,3,13,0,12,9,0,6,14,6,0,0,0,0,0,0,0,0,5,0,6,0,0,0,0,0,0,0,0,0,0,0,0,9,0,0,0,0,0,0,0,0,0,0,0,12,15,5,11,9,0,0,2,0,10,11,0,12,0,0,13,0,8,11,0,0,0,0,0,0,0,0,0,12,0,0,4,8,0,0,0,10,0,0,0,0,0,0,0,0,0,8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,9,5,0,0,7,10,0,6,0,0,0,0,0,0,0,9,0,0,0,0,0,0,0,0,0,0,0,0,0,12,7,0,0,10,8,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,12,5,0,0,0,14,0,0,0,0,0,0,9,0,0,0,0,10,0,0,0,0,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,11,0,10,0,0,0,0,0,0,0,0,0,10,19,3,0,0,12,0,12,7,14,5,0,0,0,0,0,0,3,0,0,0,0,0,0,0,13,7,0,11,10,12,6,9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,15,6,0,0,0,0,0,0,0,0,6,0,0,0,0,0,10,0,0,0,0,0,8,0,0,0,0,0,0,0,0,0,0,0,0,12,0,0,0,0,0,11,10,0,0,0,0,0,0,0,6,0,0,0,0,0,0,0,0,5,15,6,3,7,16,4,13,6,0,0,0,0,0,0,0,0,0,0,11,11,0,0,18,3,0,12,0,0,0,0,0,0,0,0,0,0,9};

static  int rectangles_array9[2913] = {
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,12,0,0,0,0,0,0,0,0,0,0,0,0,12,0,0,0,0,0,0,0,20,0,0,0,0,0,15,0,0,0,0,0,0,0,12,0,0,0,0,11,12,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,19,0,0,0,11,11,0,0,0,0,0,0,0,15,0,11,11,11,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,11,0,0,0,0,0,0,0,8,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,15,10,0,0,0,0,0,0,0,0,0,13,0,0,0,0,0,0,0,0,0,0,0,0,0,0,11,0,0,0,14,14,0,0,0,0,0,0,0,8,0,11,0,0,0,0,0,21,20,0,0,0,0,0,16,0,0,0,18,9,0,0,0,0,0,5,5,0,0,0,0,0,16,17,0,0,0,0,0,19,0,0,0,0,0,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,15,0,0,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,11,11,10,0,0,0,0,0,0,0,19,0,0,0,0,0,0,0,0,15,15,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,15,9,11,14,14,0,0,18,18,0,0,0,0,0,6,7,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,21,0,0,13,13,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,9,0,0,0,0,0,0,5,0,8,15,0,0,0,0,5,5,3,0,18,18,0,0,0,0,0,0,0,0,14,0,0,0,0,14,0,0,9,0,0,0,0,0,0,0,0,15,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5,8,0,0,0,14,0,0,0,17,0,0,0,0,0,0,0,0,0,0,0,0,15,0,0,0,17,0,17,17,0,0,0,0,9,0,0,0,0,18,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,13,15,0,0,19,14,0,20,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,9,13,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,9,0,0,0,9,0,0,0,0,0,9,9,0,0,0,0,0,0,0,0,8,0,0,8,19,19,0,0,9,0,0,11,0,0,0,0,11,0,0,11,0,0,0,0,6,6,0,0,0,9,9,9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6,0,0,0,13,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16,5,0,0,0,15,15,11,0,0,11,0,0,0,0,0,0,0,0,14,0,0,0,0,7,0,0,15,0,0,0,0,0,6,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,12,0,0,0,0,0,0,10,0,0,0,0,0,0,0,0,0,0,0,15,0,0,0,0,0,0,0,0,0,0,0,0,0,8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,11,0,0,0,15,0,15,15,0,0,7,9,0,6,0,0,0,0,0,0,0,15,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8,9,0,0,0,0,0,0,0,13,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,15,19,0,10,10,9,0,17,0,16,0,12,0,13,0,0,16,0,0,12,12,0,11,0,0,0,0,0,0,0,0,21,16,0,16,16,0,0,0,0,0,0,0,0,15,11,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,9,0,0,7,6,0,0,17,17,13,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,15,0,3,3,0,0,0,0,0,0,0,0,0,16,8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,14,0,0,0,0,0,14,14,0,14,0,0,0,16,0,0,0,0,0,0,20,20,2,0,7,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,12,11,12,0,14,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,11,0,9,9,19,0,0,9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,21,21,22,11,0,0,0,0,0,0,0,0,0,0,0,0,0,5,0,0,0,0,0,0,5,4,0,0,0,5,0,0,0,0,18,0,0,0,0,0,0,0,0,0,0,0,0,13,0,0,0,0,0,12,0,11,11,11,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,13,0,13,0,13,0,15,0,13,13,17,0,15,12,19,13,21,15,12,20,0,0,0,9,0,0,14,0,0,0,0,0,0,0,0,0,6,6,0,0,14,14,0,0,0,0,19,4,0,0,0,0,0,0,0,0,0,0,0,18,0,0,0,0,16,14,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,19,17,16,0,0,0,0,9,0,0,0,0,0,0,0,0,0,0,0,7,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,12,7,0,0,11,0,0,0,0,0,0,0,0,0,0,0,0,15,0,0,13,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,18,0,0,21,0,0,0,0,0,0,0,21,0,0,0,0,0,0,0,0,7,7,8,0,20,0,0,0,0,0,0,0,0,0,6,16,20,20,0,20,9,15,16,16,0,16,0,0,10,9,0,0,14,0,14,14,15,15,0,0,0,0,10,5,0,8,0,8,0,0,0,0,11,11,0,0,0,0,0,0,0,0,16,0,0,0,0,0,0,0,0,0,0,0,11,0,0,0,0,0,7,0,0,0,0,0,0,0,10,0,0,0,0,0,0,0,0,21,11,0,0,0,0,4,0,0,0,0,9,10,0,0,0,0,0,8,0,0,0,0,0,0,0,0,0,0,0,0,11,0,0,0,0,0,0,0,0,21,0,18,0,0,18,0,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,10,0,0,12,15,6,0,0,0,18,6,0,18,0,0,0,0,0,0,0,5,21,0,0,0,0,0,0,0,7,0,0,12,0,0,9,9,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,10,0,0,0,0,0,0,0,0,0,0,12,0,0,0,0,0,0,21,0,0,0,0,0,12,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16,0,0,0,0,0,0,0,0,0,0,0,8,9,0,19,0,9,11,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16,0,0,9,0,7,0,0,0,0,0,0,0,0,15,0,0,0,0,7,0,0,0,0,9,0,0,11,0,0,21,0,0,0,21,21,0,0,0,0,0,0,0,0,7,0,0,18,0,0,0,10,9,0,16,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,15,0,0,0,0,0,0,0,0,0,0,0,5,0,0,0,0,0,9,0,0,9,11,0,0,0,0,0,0,0,9,8,0,0,0,0,0,0,16,16,0,0,0,0,0,0,0,0,0,0,0,10,13,13,0,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,14,0,0,0,0,0,9,21,0,12,15,15,0,0,0,0,4,0,7,0,0,0,0,7,0,0,0,8,0,0,0,0,0,0,0,0,0,0,12,0,0,0,0,0,0,21,0,0,0,0,0,0,12,0,0,0,0,0,0,0,0,0,0,9,11,2,0,0,0,8,0,0,0,0,0,18,0,17,0,12,12,12,0,0,0,15,0,0,0,0,0,0,0,0,0,0,12,0,0,14,12,12,9,0,0,0,6,6,0,0,0,0,0,0,0,0,0,0,0,0,0,17,0,0,0,0,0,11,0,0,11,0,11,20,11,0,11,0,0,0,0,0,0,0,2,0,0,0,0,15,11,11,12,0,0,4,11,0,0,0,0,0,8,15,16,7,8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,13,0,0,0,11,0,0,0,0,0,0,13,0,0,0,0,0,0,0,0,0,0,18,19,19,21,0,0,9,0,0,0,15,0,0,0,0,0,0,5,0,0,0,0,5,0,0,5,0,0,12,0,0,0,0,13,0,13,0,0,0,0,14,13,13,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,14,0,0,0,0,0,0,0,10,0,0,0,0,0,0,15,0,0,0,0,0,0,15,21,0,0,0,0,0,0,0,0,0,0,17,9,0,0,0,0,0,0,0,13,0,10,0,0,14,15,0,0,0,0,0,0,0,20,0,16,16,18,18,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,14,0,14,16,15,0,0,0,0,0,0,21,0,0,0,0,0,0,0,15,15,15,0,22,0,0,0,0,13,13,0,0,15,16,0,0,14,0,7,0,0,0,0,0,0,0,0,20,0,0,14,14,0,0,0,0,12,0,0,0,11,0,0,0,11,11,0,0,10,0,0,0,0,0,0,0,0,15,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,14,0,0,12,12,0,0,0,11,0,0,12,12,13,0,0,14,0,0,0,17,0,0,11,0,0,0,0,0,0,0,15,15,0,0,12,0,0,12,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,12,0,0,0,0,0,11,0,0,0,0,19,7,6,6,0,0,11,0,0,0,0,10,0,0,0,0,0,0,0,0,3,9,0,15,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,11,11,12,0,12,12,0,12,14,14,0,0,0,0,0,0,0,0,9,0,14,0,0,0,0,0,0,0,0,0,0,0,0,10,0,0,0,0,0,0,0,0,0,0,0,15,19,19,5,5,0,0,11,0,13,13,0,16,0,0,8,0,13,13,0,0,0,0,0,0,0,0,0,12,0,0,9,11,0,0,0,9,0,0,0,0,0,0,0,0,0,19,0,0,0,0,0,0,0,0,0,0,0,0,0,0,13,11,0,0,15,15,0,8,0,0,0,0,14,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,13,12,0,0,11,16,0,0,0,9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,7,9,0,0,0,5,0,0,0,0,0,0,21,0,0,0,0,5,0,0,0,0,9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,9,0,15,0,0,0,0,0,0,0,0,0,14,15,15,0,0,21,0,20,20,6,6,0,0,0,0,0,0,11,0,0,0,0,0,0,0,19,19,0,14,10,9,13,13,0,0,0,0,0,0,0,0,0,0,0,0,0,0,17,17,0,0,0,0,0,0,0,0,12,0,0,0,0,0,15,0,0,0,0,0,14,0,0,0,0,0,0,0,7,0,0,0,0,22,0,0,0,0,0,9,15,0,0,0,0,0,0,0,12,0,0,0,0,0,0,0,0,7,8,8,22,10,14,14,17,17,0,0,0,0,0,0,0,0,0,0,18,21,0,0,18,18,0,11,0,0,0,0,0,0,0,0,0,0,12};

static  int rectangles_array10[2913] = {
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,7,0,0,0,0,0,0,0,0,0,0,0,0,7,0,0,0,0,0,0,0,6,0,0,0,0,0,8,0,0,0,0,0,0,0,10,0,0,0,0,4,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,10,0,0,0,6,6,0,0,0,0,0,0,0,9,0,7,5,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,5,0,0,0,10,0,0,0,0,0,0,0,0,0,0,0,12,11,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,7,0,0,0,11,11,0,0,0,0,0,0,0,8,0,12,0,0,0,0,0,7,9,0,0,0,0,0,5,0,0,0,9,7,0,0,0,0,0,12,11,0,0,0,0,0,3,10,0,0,0,0,0,6,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,10,3,11,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,3,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,11,8,9,4,3,0,0,3,3,0,0,0,0,0,5,3,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6,0,0,5,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,7,0,0,0,0,0,0,11,0,12,9,0,0,0,0,5,5,12,0,8,8,0,0,0,0,0,0,0,0,3,0,0,0,0,3,0,0,5,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8,5,0,0,0,6,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,12,0,0,0,4,0,4,4,0,0,0,0,8,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5,2,0,0,4,12,0,5,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,7,0,0,0,0,0,3,3,0,0,0,0,0,0,0,0,6,0,0,6,4,4,0,0,8,0,0,7,0,0,0,0,2,0,0,2,0,0,0,0,6,12,0,0,0,9,7,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,7,12,0,0,0,4,4,6,0,0,6,0,0,0,0,0,0,0,0,10,0,0,0,0,5,0,0,4,0,0,0,0,0,12,0,12,0,0,0,0,0,0,0,0,0,0,0,0,0,5,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,12,0,0,0,11,0,0,0,8,0,3,8,0,0,4,6,0,4,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,8,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,7,11,0,5,5,8,0,4,0,4,0,4,0,7,0,0,6,0,0,4,4,0,8,0,0,0,0,0,0,0,0,6,4,0,4,4,0,0,0,0,0,0,0,0,6,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6,0,0,4,3,0,0,3,3,7,0,0,11,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,9,0,10,10,0,0,0,0,0,0,0,0,0,4,11,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5,0,0,0,0,0,7,7,0,3,0,0,0,3,0,0,0,0,0,0,5,5,12,0,12,0,11,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,7,6,6,0,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,11,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,12,0,6,7,7,0,0,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8,7,10,10,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,6,6,0,0,0,6,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,10,0,3,9,9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,4,0,4,0,2,0,4,4,3,0,6,9,4,11,6,10,10,5,0,0,0,11,0,0,5,0,0,0,0,0,0,0,0,0,4,4,0,0,3,3,0,0,0,0,6,12,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,9,3,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6,4,4,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,5,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,3,0,0,6,0,0,0,0,0,0,0,0,0,0,0,0,5,0,0,8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,11,0,0,6,0,0,0,0,0,0,0,6,0,0,0,0,0,0,0,0,3,3,3,0,9,0,0,0,0,0,0,0,0,0,6,4,5,5,0,5,6,2,3,3,0,3,0,0,4,8,0,0,4,0,4,4,4,4,0,0,0,0,4,12,0,6,0,4,0,0,0,0,6,6,0,0,0,0,0,0,0,0,6,0,0,0,0,0,0,0,0,0,0,0,8,0,0,0,0,0,3,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,6,10,0,0,0,0,12,0,0,0,0,7,4,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,6,0,0,0,0,0,0,0,0,6,0,4,0,0,4,0,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5,0,0,11,4,3,0,0,0,4,3,0,4,0,0,0,0,0,0,0,5,6,0,0,0,0,0,0,0,9,0,0,11,0,0,6,6,11,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5,0,0,0,0,0,0,0,0,0,0,12,0,0,0,0,0,0,6,0,0,0,0,0,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,7,0,0,0,0,0,0,0,0,0,0,0,8,7,0,6,0,7,9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,6,0,4,0,0,0,0,0,0,0,0,2,0,0,0,0,4,0,0,0,0,8,0,0,12,0,0,11,0,0,0,6,6,0,0,0,0,0,0,0,0,12,0,0,3,0,0,0,5,7,0,3,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,6,0,0,0,0,0,3,0,0,3,6,0,0,0,0,0,0,0,5,8,0,0,0,0,0,0,7,7,0,0,0,0,0,0,0,0,0,0,0,9,10,10,0,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,6,10,0,9,2,2,0,0,0,0,8,0,3,0,0,0,0,3,0,0,0,6,0,0,0,0,0,0,0,0,0,0,9,0,0,0,0,0,0,6,0,0,0,0,0,0,10,0,0,0,0,0,0,0,0,0,0,8,8,12,0,0,0,4,0,0,0,0,0,12,0,4,0,5,7,5,0,0,0,11,0,0,0,0,0,0,0,0,0,0,2,0,0,9,2,2,10,0,0,0,4,4,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,5,0,0,2,0,2,5,2,0,2,0,0,0,0,0,0,0,9,0,0,0,0,2,2,2,9,0,0,9,7,0,0,0,0,0,3,2,5,4,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6,0,0,0,6,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,3,4,4,6,0,0,7,0,0,0,3,0,0,0,0,0,0,4,0,0,0,0,4,0,0,9,0,0,6,0,0,0,0,2,0,2,0,0,0,0,2,4,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,3,0,0,0,0,0,0,4,0,0,0,0,0,0,4,8,0,0,0,0,0,0,0,0,0,0,3,12,0,0,0,0,0,0,0,6,0,6,0,0,11,11,0,0,0,0,0,0,0,5,0,3,3,3,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,4,5,9,0,0,0,0,0,0,6,0,0,0,0,0,0,0,2,3,3,0,9,0,0,0,0,2,2,0,0,2,5,0,0,2,0,5,0,0,0,0,0,0,0,0,5,0,0,2,2,0,0,0,0,7,0,0,0,8,0,0,0,8,8,0,0,5,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,10,0,0,0,0,0,0,0,0,0,0,0,0,10,0,0,2,2,0,0,0,6,0,0,3,3,7,0,0,2,0,0,0,3,0,0,11,0,0,0,0,0,0,0,9,9,0,0,9,0,0,9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6,0,0,0,0,0,4,0,0,0,0,5,3,3,5,0,0,9,0,0,0,0,4,0,0,0,0,0,0,0,0,6,9,0,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,3,2,0,6,2,0,6,4,4,0,0,0,0,0,0,0,0,7,0,6,0,0,0,0,0,0,0,0,0,0,0,0,9,0,0,0,0,0,0,0,0,0,0,0,3,4,4,4,4,0,0,10,0,4,8,0,5,0,0,5,0,5,5,0,0,0,0,0,0,0,0,0,9,0,0,9,6,0,0,0,10,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5,4,0,0,7,7,0,3,0,0,0,0,12,0,0,9,0,0,0,0,0,0,0,0,0,0,0,0,0,8,5,0,0,6,4,0,0,0,9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,9,8,0,0,0,5,0,0,0,0,0,0,6,0,0,0,0,6,0,0,0,0,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6,0,3,0,0,0,0,0,0,0,0,0,6,2,2,0,0,6,0,5,5,5,5,0,0,0,0,0,0,9,0,0,0,0,0,0,0,4,4,0,6,4,6,9,9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,3,0,0,0,0,0,0,0,0,8,0,0,0,0,0,2,0,0,0,0,0,4,0,0,0,0,0,0,0,12,0,0,0,0,11,0,0,0,0,0,9,2,0,0,0,0,0,0,0,8,0,0,0,0,0,0,0,0,3,3,3,9,2,4,4,5,5,0,0,0,0,0,0,0,0,0,0,5,11,0,0,3,3,0,11,0,0,0,0,0,0,0,0,0,0,3};

static  int rectangles_array11[2913] = {
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6,0,0,0,0,0,0,0,0,0,0,0,0,7,0,0,0,0,0,0,0,3,0,0,0,0,0,3,0,0,0,0,0,0,0,7,0,0,0,0,5,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,3,3,0,0,0,0,0,0,0,6,0,5,6,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5,0,0,0,0,0,0,0,8,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,2,6,0,0,0,0,0,0,0,0,0,9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6,0,0,0,2,2,0,0,0,0,0,0,0,3,0,7,0,0,0,0,0,3,2,0,0,0,0,0,7,0,0,0,2,3,0,0,0,0,0,3,4,0,0,0,0,0,8,2,0,0,0,0,0,5,0,0,0,0,0,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6,0,0,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8,6,8,0,0,0,0,0,0,0,5,0,0,0,0,0,0,0,0,9,9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,3,11,7,10,0,0,6,6,0,0,0,0,0,6,6,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,6,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,3,0,8,2,0,0,0,0,5,5,2,0,3,3,0,0,0,0,0,0,0,0,7,0,0,0,0,7,0,0,7,0,0,0,0,0,0,0,0,9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5,8,0,0,0,3,0,0,0,5,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,7,0,7,7,0,0,0,0,4,0,0,0,0,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6,9,0,0,5,2,0,4,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5,0,0,0,3,0,0,0,0,0,7,7,0,0,0,0,0,0,0,0,3,0,0,3,5,5,0,0,3,0,0,6,0,0,0,0,9,0,0,9,0,0,0,0,6,3,0,0,0,4,3,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,7,5,0,0,0,9,9,6,0,0,6,0,0,0,0,0,0,0,0,4,0,0,0,0,7,0,0,5,0,0,0,0,0,3,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,7,0,0,0,0,0,0,0,0,0,0,0,5,0,0,0,0,0,0,0,0,0,0,0,0,0,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,6,0,0,0,3,0,7,3,0,0,5,3,0,6,0,0,0,0,0,0,0,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5,3,0,0,0,0,0,0,0,8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,7,3,0,5,5,3,0,7,0,6,0,8,0,7,0,0,5,0,0,8,8,0,6,0,0,0,0,0,0,0,0,3,8,0,8,8,0,0,0,0,0,0,0,0,4,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,6,6,0,0,7,7,7,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,2,2,0,0,0,0,0,0,0,0,0,7,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,5,5,0,10,0,0,0,8,0,0,0,0,0,0,4,4,2,0,3,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,7,3,6,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8,0,4,3,3,0,0,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,3,2,3,0,0,0,0,0,0,0,0,0,0,0,0,0,5,0,0,0,0,0,0,5,3,0,0,0,3,0,0,0,0,5,0,0,0,0,0,0,0,0,0,0,0,0,9,0,0,0,0,0,2,0,6,11,11,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5,0,5,0,5,0,9,0,5,5,7,0,3,3,5,4,3,9,6,4,0,0,0,2,0,0,4,0,0,0,0,0,0,0,0,0,6,6,0,0,6,6,0,0,0,0,4,2,0,0,0,0,0,0,0,0,0,0,0,6,0,0,0,0,2,7,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,7,7,0,0,0,0,5,0,0,0,0,0,0,0,0,0,0,0,4,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5,7,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,3,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,7,7,8,0,3,0,0,0,0,0,0,0,0,0,6,6,4,4,0,4,3,9,7,7,0,8,0,0,9,4,0,0,10,0,10,10,7,7,0,0,0,0,8,3,0,6,0,5,0,0,0,0,3,3,0,0,0,0,0,0,0,0,5,0,0,0,0,0,0,0,0,0,0,0,6,0,0,0,0,0,6,0,0,0,0,0,0,0,5,0,0,0,0,0,0,0,0,3,3,0,0,0,0,3,0,0,0,0,3,5,0,0,0,0,0,5,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,3,0,5,0,0,5,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,7,5,6,0,0,0,5,6,0,5,0,0,0,0,0,0,0,4,3,0,0,0,0,0,0,0,3,0,0,8,0,0,9,9,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,3,0,0,0,0,0,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6,0,0,0,0,0,0,0,0,0,0,0,8,3,0,4,0,3,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,7,0,0,5,0,5,0,0,0,0,0,0,0,0,9,0,0,0,0,5,0,0,0,0,3,0,0,11,0,0,2,0,0,0,3,3,0,0,0,0,0,0,0,0,2,0,0,6,0,0,0,4,3,0,6,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,6,0,0,6,3,0,0,0,0,0,0,0,4,4,0,0,0,0,0,0,3,3,0,0,0,0,0,0,0,0,0,0,0,2,3,3,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,7,0,0,0,0,0,3,2,0,7,9,9,0,0,0,0,3,0,6,0,0,0,0,6,0,0,0,3,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,3,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,3,7,2,0,0,0,5,0,0,0,0,0,2,0,7,0,12,7,4,0,0,0,2,0,0,0,0,0,0,0,0,0,0,11,0,0,2,11,11,2,0,0,0,6,6,0,0,0,0,0,0,0,0,0,0,0,0,0,7,0,0,0,0,0,5,0,0,10,0,10,4,10,0,10,0,0,0,0,0,0,0,2,0,0,0,0,9,10,10,3,0,0,4,6,0,0,0,0,0,6,9,8,6,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,7,0,0,0,10,0,0,0,0,0,0,9,0,0,0,0,0,0,0,0,0,0,6,5,5,3,0,0,3,0,0,0,7,0,0,0,0,0,0,5,0,0,0,0,5,0,0,5,0,0,3,0,0,0,0,9,0,9,0,0,0,0,9,5,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,10,0,0,0,0,0,0,0,6,0,0,0,0,0,0,5,0,0,0,0,0,0,5,3,0,0,0,0,0,0,0,0,0,0,6,4,0,0,0,0,0,0,0,4,0,8,0,0,2,3,0,0,0,0,0,0,0,4,0,6,6,6,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5,0,5,5,2,0,0,0,0,0,0,3,0,0,0,0,0,0,0,9,6,6,0,2,0,0,0,0,11,11,0,0,9,7,0,0,10,0,7,0,0,0,0,0,0,0,0,4,0,0,10,10,0,0,0,0,10,0,0,0,10,0,0,0,10,10,0,0,4,0,0,0,0,0,0,0,0,9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,11,11,0,0,0,3,0,0,6,6,4,0,0,9,0,0,0,7,0,0,7,0,0,0,0,0,0,0,2,2,0,0,12,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,7,0,0,0,0,0,5,0,0,0,0,4,6,6,6,0,0,2,0,0,0,0,10,0,0,0,0,0,0,0,0,3,2,0,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,10,10,9,0,3,9,0,3,10,10,0,0,0,0,0,0,0,0,3,0,3,0,0,0,0,0,0,0,0,0,0,0,0,7,0,0,0,0,0,0,0,0,0,0,0,9,5,5,5,5,0,0,3,0,8,4,0,4,0,0,4,0,6,6,0,0,0,0,0,0,0,0,0,3,0,0,2,10,0,0,0,3,0,0,0,0,0,0,0,0,0,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,7,5,0,0,7,7,0,6,0,0,0,0,5,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,10,6,0,0,4,5,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,4,0,0,0,4,0,0,0,0,0,0,3,0,0,0,0,3,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,6,0,0,0,0,0,0,0,0,0,8,9,9,0,0,3,0,4,4,6,6,0,0,0,0,0,0,6,0,0,0,0,0,0,0,5,5,0,3,5,5,5,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,7,7,0,0,0,0,0,0,0,0,3,0,0,0,0,0,9,0,0,0,0,0,5,0,0,0,0,0,0,0,3,0,0,0,0,2,0,0,0,0,0,3,9,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,7,7,7,2,10,6,6,4,4,0,0,0,0,0,0,0,0,0,0,4,3,0,0,6,6,0,5,0,0,0,0,0,0,0,0,0,0,11};

static  int stages_thresh_array[25] = {
-1290,-1275,-1191,-1140,-1122,-1057,-1029,-994,-983,-933,-990,-951,-912,-947,-877,-899,-920,-868,-829,-821,-839,-849,-833,-862,-766
};

// ---- file: typedefs.h ----
/*===============================================================*/
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

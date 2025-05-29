#include "matrix_add.h"

static inline int ceil_div(int x, int y) {
    return (x + y - 1) / y;
}

void matrix_add_kernel(
  data_t localIn1[BLOCK_C][BLOCK_H][BLOCK_W],
  data_t localIn2[BLOCK_C][BLOCK_H][BLOCK_W],
  data_t localOut[BLOCK_C][BLOCK_H][BLOCK_W],
  int tile_C, int tile_H, int tile_W
)
{
  #pragma HLS inline off
  for (int c = 0; c < tile_C; c++) {
      for (int i = 0; i < tile_H; i++) {
          for (int j = 0; j < tile_W; j++) {
              localOut[c][i][j] = localIn1[c][i][j] + localIn2[c][i][j];
          }
      }
  }
}

// -----------------------------------------------------------------------------
// 3) Tiled Matrix Add
//
//    Divides the input tensors into tiles and calls matrix_add_kernel for each tile.
// -----------------------------------------------------------------------------
void matrix_add(
  int C, int H, int W,
  data_t in1[MAX_C][MAX_H][MAX_W],
  data_t in2[MAX_C][MAX_H][MAX_W],
  data_t out[MAX_C][MAX_H][MAX_W]
)
{
  #pragma HLS inline off
  int channel_tiles = ceil_div(C, BLOCK_C);
  int tile_rows = ceil_div(H, BLOCK_H);
  int tile_cols = ceil_div(W, BLOCK_W);

  for (int ct = 0; ct < channel_tiles; ct++) {
      int c_offset = ct * BLOCK_C;
      int tile_C = std::min(BLOCK_C, C - c_offset);

      // Loop over spatial tiles.
      for (int tr = 0; tr < tile_rows; tr++) {
          int h_offset = tr * BLOCK_H;
          int tile_H = std::min(BLOCK_H, H - h_offset);
          for (int tc = 0; tc < tile_cols; tc++) {
              int w_offset = tc * BLOCK_W;
              int tile_W = std::min(BLOCK_W, W - w_offset);

              data_t localIn1[BLOCK_C][BLOCK_H][BLOCK_W];
              data_t localIn2[BLOCK_C][BLOCK_H][BLOCK_W];
              data_t localOut[BLOCK_C][BLOCK_H][BLOCK_W];

              for (int c = 0; c < tile_C; c++) {
                  for (int i = 0; i < tile_H; i++) {
                      for (int j = 0; j < tile_W; j++) {
                          localIn1[c][i][j] = in1[c_offset + c][h_offset + i][w_offset + j];
                          localIn2[c][i][j] = in2[c_offset + c][h_offset + i][w_offset + j];
                      }
                  }
              }

              matrix_add_kernel(localIn1, localIn2, localOut, tile_C, tile_H, tile_W);

              for (int c = 0; c < tile_C; c++) {
                  for (int i = 0; i < tile_H; i++) {
                      for (int j = 0; j < tile_W; j++) {
                          out[c_offset + c][h_offset + i][w_offset + j] = localOut[c][i][j];
                      }
                  }
              }
          }
      }
  }
}
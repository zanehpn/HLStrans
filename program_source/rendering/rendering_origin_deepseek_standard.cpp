#include <cstdint>
#include <algorithm>

// Constants
const int MAX_X = 256;
const int MAX_Y = 256;
const int NUM_FB = MAX_X * MAX_Y / 4;
const int NUM_3D_TRI = 3192;

// Standard type aliases replacing HLS-specific types
using bit1  = uint8_t;
using bit2  = uint8_t;
using bit8  = uint8_t;
using bit16 = uint16_t;
using bit32 = uint32_t;

// Structs
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

typedef struct
{
  bit8   x;
  bit8   y;
  bit8   z;
  bit8   color;
} CandidatePixel;

typedef struct
{
  bit8   x;
  bit8   y;
  bit8   color;
} Pixel;

// Helper to extract bits [hi:lo] from 32-bit word
static inline uint8_t extract_bits_u8(uint32_t value, int hi, int lo) {
  const int width = hi - lo + 1;
  const uint32_t mask = (width >= 32) ? 0xFFFFFFFFu : ((1u << width) - 1u);
  return static_cast<uint8_t>((value >> lo) & mask);
}

// Prototypes
void projection(const Triangle_3D& in, Triangle_2D* out, bit2 angle);
bit2 rasterization1(const Triangle_2D& tri2d, bit8 max_min[5], Triangle_2D* tri2d_same, bit16 max_index[1]);
bit16 rasterization2(bit2 flag, const bit8 max_min[5], const bit16 max_index[1], const Triangle_2D& tri2d_same, CandidatePixel fragment[500]);
bit16 zculling(bit16 i, const CandidatePixel fragment[], bit16 size_fragment, Pixel pixels[]);
void coloringFB(bit16 i, bit16 size_pixels, const Pixel pixels[], bit8 frame_buffer[MAX_X][MAX_Y]);
void output_FB(bit8 frame_buffer[MAX_X][MAX_Y], bit32 output[NUM_FB]);

// Main rendering function
void rendering(bit32 input[3 * NUM_3D_TRI], bit32 output[NUM_FB])
{
  Triangle_3D triangle_3ds;
  Triangle_2D triangle_2ds;
  Triangle_2D triangle_2ds_same;

  bit16 size_fragment;
  CandidatePixel fragment[500];

  bit16 size_pixels;
  Pixel pixels[500];

  bit8 frame_buffer[MAX_X][MAX_Y] = {};
  bit2 angle = 0;

  bit8 max_min[5];
  bit16 max_index[1];
  bit2 flag;

  for (bit16 i = 0; i < NUM_3D_TRI; i++)
  {
    bit32 input_lo  = input[3 * i];
    bit32 input_mi  = input[3 * i + 1];
    bit32 input_hi  = input[3 * i + 2];

    // Extract fields as per original bit slicing
    triangle_3ds.x0 = extract_bits_u8(input_lo,  7,  0);
    triangle_3ds.y0 = extract_bits_u8(input_lo, 15,  8);
    triangle_3ds.z0 = extract_bits_u8(input_lo, 23, 16);
    triangle_3ds.x1 = extract_bits_u8(input_lo, 31, 24);
    triangle_3ds.y1 = extract_bits_u8(input_mi,  7,  0);
    triangle_3ds.z1 = extract_bits_u8(input_mi, 15,  8);
    triangle_3ds.x2 = extract_bits_u8(input_mi, 23, 16);
    triangle_3ds.y2 = extract_bits_u8(input_mi, 31, 24);
    triangle_3ds.z2 = extract_bits_u8(input_hi,  7,  0);

    projection(triangle_3ds, &triangle_2ds, angle);
    flag = rasterization1(triangle_2ds, max_min, &triangle_2ds_same, max_index);
    size_fragment = rasterization2(flag, max_min, max_index, triangle_2ds_same, fragment);
    size_pixels = zculling(i, fragment, size_fragment, pixels);
    coloringFB(i, size_pixels, pixels, frame_buffer);
  }

  output_FB(frame_buffer, output);
}

// Implementations

void projection(const Triangle_3D& in, Triangle_2D* out, bit2 angle)
{
  // Simple orthographic projection; angle not used in this simplified model.
  (void)angle;
  out->x0 = in.x0; out->y0 = in.y0;
  out->x1 = in.x1; out->y1 = in.y1;
  out->x2 = in.x2; out->y2 = in.y2;
  // Average z as representative depth
  uint16_t zsum = static_cast<uint16_t>(in.z0) + static_cast<uint16_t>(in.z1) + static_cast<uint16_t>(in.z2);
  out->z = static_cast<bit8>(zsum / 3);
}

static inline int edge_function(int x0, int y0, int x1, int y1, int x, int y) {
  return (y0 - y1) * x + (x1 - x0) * y + (x0 * y1 - x1 * y0);
}

bit2 rasterization1(const Triangle_2D& tri2d, bit8 max_min[5], Triangle_2D* tri2d_same, bit16 max_index[1])
{
  // Copy triangle through
  *tri2d_same = tri2d;
  max_index[0] = 0;

  int x0 = tri2d.x0, y0 = tri2d.y0;
  int x1 = tri2d.x1, y1 = tri2d.y1;
  int x2 = tri2d.x2, y2 = tri2d.y2;

  // Compute bounding box
  int min_x = std::min({x0, x1, x2});
  int min_y = std::min({y0, y1, y2});
  int max_x = std::max({x0, x1, x2});
  int max_y = std::max({y0, y1, y2});

  // Clamp to framebuffer bounds
  min_x = std::max(0, std::min(min_x, MAX_X - 1));
  max_x = std::max(0, std::min(max_x, MAX_X - 1));
  min_y = std::max(0, std::min(min_y, MAX_Y - 1));
  max_y = std::max(0, std::min(max_y, MAX_Y - 1));

  max_min[0] = static_cast<bit8>(min_x);
  max_min[1] = static_cast<bit8>(min_y);
  max_min[2] = static_cast<bit8>(max_x);
  max_min[3] = static_cast<bit8>(max_y);
  max_min[4] = 0; // unused placeholder

  // Determine if triangle has non-zero area
  int area2 = edge_function(x0, y0, x1, y1, x2, y2);
  return (area2 != 0) ? 1 : 0;
}

bit16 rasterization2(bit2 flag, const bit8 max_min[5], const bit16 /*max_index*/[1], const Triangle_2D& tri2d_same, CandidatePixel fragment[500])
{
  if (!flag) return 0;

  int min_x = max_min[0];
  int min_y = max_min[1];
  int max_x = max_min[2];
  int max_y = max_min[3];

  int x0 = tri2d_same.x0, y0 = tri2d_same.y0;
  int x1 = tri2d_same.x1, y1 = tri2d_same.y1;
  int x2 = tri2d_same.x2, y2 = tri2d_same.y2;

  // Precompute edge orientations (top-left rule optional; here inclusive)
  int area = edge_function(x0, y0, x1, y1, x2, y2);
  if (area == 0) return 0;

  bit16 count = 0;
  for (int y = min_y; y <= max_y; ++y) {
    for (int x = min_x; x <= max_x; ++x) {
      // Sample at pixel center approximation: (x+0.5, y+0.5) but using integer edge function suffices
      int w0 = edge_function(x1, y1, x2, y2, x, y);
      int w1 = edge_function(x2, y2, x0, y0, x, y);
      int w2 = edge_function(x0, y0, x1, y1, x, y);

      bool has_neg = (w0 < 0) || (w1 < 0) || (w2 < 0);
      bool has_pos = (w0 > 0) || (w1 > 0) || (w2 > 0);

      if (!(has_neg && has_pos)) {
        // Inside or on edge
        if (count < 500) {
          fragment[count].x = static_cast<bit8>(x);
          fragment[count].y = static_cast<bit8>(y);
          fragment[count].z = tri2d_same.z;
          fragment[count].color = static_cast<bit8>(tri2d_same.z); // simple color by depth
          ++count;
        } else {
          // Reached fragment buffer limit
          return count;
        }
      }
    }
  }
  return count;
}

bit16 zculling(bit16 /*i*/, const CandidatePixel fragment[], bit16 size_fragment, Pixel pixels[])
{
  static bool initialized = false;
  static bit8 zbuffer[MAX_X][MAX_Y];
  if (!initialized) {
    for (int y = 0; y < MAX_Y; ++y)
      for (int x = 0; x < MAX_X; ++x)
        zbuffer[x][y] = 255; // farthest depth
    initialized = true;
  }

  bit16 out_count = 0;
  for (bit16 idx = 0; idx < size_fragment; ++idx) {
    int x = fragment[idx].x;
    int y = fragment[idx].y;
    if (x < 0 || x >= MAX_X || y < 0 || y >= MAX_Y) continue;

    bit8 z = fragment[idx].z;
    if (z < zbuffer[x][y]) {
      zbuffer[x][y] = z;
      if (out_count < 500) {
        pixels[out_count].x = static_cast<bit8>(x);
        pixels[out_count].y = static_cast<bit8>(y);
        pixels[out_count].color = fragment[idx].color;
        ++out_count;
      } else {
        break;
      }
    }
  }
  return out_count;
}

void coloringFB(bit16 /*i*/, bit16 size_pixels, const Pixel pixels[], bit8 frame_buffer[MAX_X][MAX_Y])
{
  for (bit16 k = 0; k < size_pixels; ++k) {
    int x = pixels[k].x;
    int y = pixels[k].y;
    if (x >= 0 && x < MAX_X && y >= 0 && y < MAX_Y) {
      frame_buffer[x][y] = pixels[k].color;
    }
  }
}

void output_FB(bit8 frame_buffer[MAX_X][MAX_Y], bit32 output[NUM_FB])
{
  // Pack 4 pixels (bytes) into one 32-bit word in row-major order
  for (int y = 0; y < MAX_Y; ++y) {
    for (int x = 0; x < MAX_X; x += 4) {
      uint32_t p0 = frame_buffer[x + 0][y];
      uint32_t p1 = frame_buffer[x + 1][y];
      uint32_t p2 = frame_buffer[x + 2][y];
      uint32_t p3 = frame_buffer[x + 3][y];
      uint32_t word = (p3 << 24) | (p2 << 16) | (p1 << 8) | (p0);
      int idx = (y * MAX_X + x) / 4;
      output[idx] = static_cast<bit32>(word);
    }
  }
}

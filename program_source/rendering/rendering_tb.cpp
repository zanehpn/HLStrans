// contents of rendering_tb.cpp
#include <iostream>
#include <vector>
#include <cassert>

// Include the source to access all functions and types
#include "rendering.cpp"

// Helper: extract a pixel color from the packed output frame buffer
static inline uint8_t getColorFromOutput(const bit32* output, int x, int y) {
  int wordIdx = x * (MAX_Y / 4) + (y / 4);
  bit32 w = output[wordIdx];
  int lane = y % 4;
  switch (lane) {
    case 0: return (uint8_t)w(7, 0).to_uint();
    case 1: return (uint8_t)w(15, 8).to_uint();
    case 2: return (uint8_t)w(23, 16).to_uint();
    case 3: return (uint8_t)w(31, 24).to_uint();
    default: return 0;
  }
}

// Helper: pack one 3D triangle into the input array at index idx
static inline void packTriangle(std::vector<bit32>& input,
                                int idx,
                                int x0, int y0, int z0,
                                int x1, int y1, int z1,
                                int x2, int y2, int z2) {
  bit32 lo = 0, mi = 0, hi = 0;
  lo(7, 0)   = (bit8)x0;
  lo(15, 8)  = (bit8)y0;
  lo(23, 16) = (bit8)z0;
  lo(31, 24) = (bit8)x1;

  mi(7, 0)   = (bit8)y1;
  mi(15, 8)  = (bit8)z1;
  mi(23, 16) = (bit8)x2;
  mi(31, 24) = (bit8)y2;

  hi(7, 0)   = (bit8)z2;

  input[3 * idx + 0] = lo;
  input[3 * idx + 1] = mi;
  input[3 * idx + 2] = hi;
}

// Helper: check if a candidate list contains a specific pixel coordinate
static inline bool hasPixel(const CandidatePixel* frags, int n, int x, int y) {
  for (int i = 0; i < n; ++i) {
    if (frags[i].x == (bit8)x && frags[i].y == (bit8)y) return true;
  }
  return false;
}

int main() {
  std::cout << "Running rendering.cpp testbench..." << std::endl;

  // Test 1: check_clockwise with CW, CCW, and collinear cases
  {
    // CW triangle: (0,0) -> (0,2) -> (2,0)
    Triangle_2D t_cw = {0, 0, 0, 2, 2, 0, 0};
    int cw1 = check_clockwise(t_cw);
    assert(cw1 > 0);

    // CCW triangle: (0,0) -> (2,0) -> (0,2)
    Triangle_2D t_ccw = {0, 0, 2, 0, 0, 2, 0};
    int cw2 = check_clockwise(t_ccw);
    assert(cw2 < 0);

    // Collinear: (0,0), (1,1), (2,2)
    Triangle_2D t_col = {0, 0, 1, 1, 2, 2, 0};
    int cw3 = check_clockwise(t_col);
    assert(cw3 == 0);

    std::cout << "Test 1 passed: check_clockwise CW/CCW/collinear." << std::endl;
  }

  // Test 2: pixel_in_triangle correctness on a simple right triangle
  {
    // Use CW ordering for stability with the Pineda algorithm
    Triangle_2D tri = {0, 0, 0, 2, 2, 0, 0}; // CW
    // Points inside or on edge
    assert(pixel_in_triangle(0, 0, tri) != 0);
    assert(pixel_in_triangle(1, 1, tri) != 0); // on diagonal x+y=2
    // Point outside
    assert(pixel_in_triangle(1, 2, tri) == 0);

    std::cout << "Test 2 passed: pixel_in_triangle inside/outside checks." << std::endl;
  }

  // Test 3: find_min and find_max
  {
    bit8 a = 10, b = 5, c = 20;
    assert(find_min(a, b, c) == b);
    assert(find_max(a, b, c) == c);
    std::cout << "Test 3 passed: find_min/find_max." << std::endl;
  }

  // Test 4: projection mapping for angles 0, 1, 2
  {
    Triangle_3D t3d;
    t3d.x0 = 1; t3d.y0 = 2; t3d.z0 = 3;
    t3d.x1 = 4; t3d.y1 = 5; t3d.z1 = 6;
    t3d.x2 = 7; t3d.y2 = 8; t3d.z2 = 9;

    Triangle_2D t2d;
    // angle = 0: identity on x,y; z = average of z's via integer division per term
    projection(t3d, &t2d, 0);
    assert(t2d.x0 == 1 && t2d.y0 == 2);
    assert(t2d.x1 == 4 && t2d.y1 == 5);
    assert(t2d.x2 == 7 && t2d.y2 == 8);
    assert(t2d.z == (bit8)(3/3 + 6/3 + 9/3)); // 1 + 2 + 3 = 6

    // angle = 1: y <= z, z <= avg(y)
    projection(t3d, &t2d, 1);
    assert(t2d.x0 == 1 && t2d.y0 == 3);
    assert(t2d.x1 == 4 && t2d.y1 == 6);
    assert(t2d.x2 == 7 && t2d.y2 == 9);
    assert(t2d.z == (bit8)(2/3 + 5/3 + 8/3)); // 0 + 1 + 2 = 3

    // angle = 2: x <= z, y stays, z <= avg(x)
    projection(t3d, &t2d, 2);
    assert(t2d.x0 == 3 && t2d.y0 == 2);
    assert(t2d.x1 == 6 && t2d.y1 == 5);
    assert(t2d.x2 == 9 && t2d.y2 == 8);
    assert(t2d.z == (bit8)(1/3 + 4/3 + 7/3)); // 0 + 1 + 2 = 3

    std::cout << "Test 4 passed: projection for angles 0/1/2." << std::endl;
  }

  // Test 5: rasterization1 and rasterization2 on a small triangle
  {
    // 2D triangle (counterclockwise initially), will be corrected to CW inside rasterization1
    Triangle_2D ti = {10, 10, 12, 10, 10, 12, 7};
    Triangle_2D ti_same;
    bit8 max_min[5] = {0};
    bit16 max_index[1] = {0};

    bit2 flag = rasterization1(ti, max_min, &ti_same, max_index);
    assert(flag == 0); // should be valid triangle
    assert(max_min[0] == 10 && max_min[1] == 12); // x min/max
    assert(max_min[2] == 10 && max_min[3] == 12); // y min/max
    assert(max_min[4] == (bit8)(12 - 10)); // width = 2
    assert(max_index[0] == (bit16)((12 - 10) * (12 - 10))); // 4

    CandidatePixel fragments[500];
    bit16 nfrags = rasterization2(flag, max_min, max_index, ti_same, fragments);
    // Expect 3 or 4 pixels in the bounding box for a small right triangle
    assert(nfrags >= 3 && nfrags <= 4);
    // Verify that (10,10) is inside; (11,11) likely outside for this right triangle
    assert(hasPixel(fragments, nfrags, 10, 10));
    assert(!hasPixel(fragments, nfrags, 11, 11));

    std::cout << "Test 5 passed: rasterization1/2 produce expected fragments." << std::endl;
  }

  // Test 6: zculling behavior with z-buffer initialization and updates
  {
    CandidatePixel frags[2];
    Pixel outpix[10];

    // Initialize z-buffer (counter == 0), insert one fragment at (5,5) with z=100
    frags[0].x = 5; frags[0].y = 5; frags[0].z = 100; frags[0].color = 77;
    bit16 vis1 = zculling(0, frags, 1, outpix);
    assert(vis1 == 1);
    assert(outpix[0].x == 5 && outpix[0].y == 5 && outpix[0].color == 77);

    // Try to write a farther fragment at same location (z=200), should be rejected
    frags[0].z = 200; frags[0].color = 88;
    bit16 vis2 = zculling(1, frags, 1, outpix);
    assert(vis2 == 0);

    // Now a nearer fragment (z=10) should be accepted
    frags[0].z = 10; frags[0].color = 99;
    bit16 vis3 = zculling(1, frags, 1, outpix);
    assert(vis3 == 1);
    assert(outpix[0].x == 5 && outpix[0].y == 5 && outpix[0].color == 99);

    std::cout << "Test 6 passed: zculling accepts nearer and rejects farther fragments." << std::endl;
  }

  // Test 7: coloringFB initializes and updates the frame buffer
  {
    bit8 fb[MAX_X][MAX_Y];
    Pixel pxs[2];
    pxs[0].x = 30; pxs[0].y = 40; pxs[0].color = 123;
    pxs[1].x = 0;  pxs[1].y = 0;  pxs[1].color = 45;

    // First call with counter=0 clears the frame buffer, then writes two pixels
    coloringFB(0, 2, pxs, fb);
    assert(fb[30][40] == 123);
    assert(fb[0][0] == 45);
    // Check that an unrelated pixel is cleared to 0
    assert(fb[5][5] == 0);

    std::cout << "Test 7 passed: coloringFB clearing and updates." << std::endl;
  }

  // Test 8: output_FB packing correctness for known pixels
  {
    bit8 fb[MAX_X][MAX_Y];
    // Initialize a small subset manually; otherwise zero
    for (int i = 0; i < MAX_X; i++) {
      for (int j = 0; j < MAX_Y; j++) {
        fb[i][j] = 0;
      }
    }
    fb[0][0] = 11;      // maps to output[0], lane 0
    fb[0][1] = 22;      // maps to output[0], lane 1
    fb[0][2] = 33;      // maps to output[0], lane 2
    fb[0][3] = 44;      // maps to output[0], lane 3
    fb[10][21] = 99;    // some arbitrary pixel

    std::vector<bit32> out(NUM_FB);
    output_FB(fb, out.data());

    // Check first word lanes
    assert(getColorFromOutput(out.data(), 0, 0) == 11);
    assert(getColorFromOutput(out.data(), 0, 1) == 22);
    assert(getColorFromOutput(out.data(), 0, 2) == 33);
    assert(getColorFromOutput(out.data(), 0, 3) == 44);

    // Check an arbitrary pixel
    assert(getColorFromOutput(out.data(), 10, 21) == 99);

    std::cout << "Test 8 passed: output_FB packing/unpacking." << std::endl;
  }

  // Test 9: Top-level rendering end-to-end with one small triangle
  {
    std::vector<bit32> in(3 * NUM_3D_TRI);
    std::vector<bit32> out(NUM_FB);

    // Initialize all inputs to zero (degenerate triangles -> ignored)
    for (size_t i = 0; i < in.size(); ++i) in[i] = 0;

    // Insert a small triangle at index 0:
    // Triangle vertices: (10,10,10), (12,10,10), (10,12,10)
    packTriangle(in, 0, 10, 10, 10, 12, 10, 10, 10, 12, 10);

    // Run top-level rendering
    rendering(in.data(), out.data());

    // The triangle should produce color=100 on at least the vertex (10,10)
    uint8_t c00 = getColorFromOutput(out.data(), 10, 10);
    assert(c00 == 100);

    // A pixel outside the triangle, e.g., (11,11), should be 0
    uint8_t c_outside = getColorFromOutput(out.data(), 11, 11);
    assert(c_outside == 0);

    std::cout << "Test 9 passed: rendering() end-to-end basic check." << std::endl;
  }

  std::cout << "All tests passed successfully." << std::endl;
  return 0;
}
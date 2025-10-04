#include <cstdio>
#include <cstdlib>
#include <cstring>

#define SIZE 100
#define IN_END 100

// Globals and prototypes
void reset();
int uppol2(int al1, int al2, int plt, int plt1, int plt2);
int uppol1(int al1, int apl2, int plt, int plt1);
int logsch(int ih, int nbh);
int encode(int a, int b);
void decode(int code);

int xout1 = 0, xout2 = 0;
int detl = 0, dec_detl = 0;

// Tables possibly used by helper functions
static int wh_code_table[4] = { -60, -30, 0, 30 };

// Dynamic arrays (malloc variant)
const int* test_data = nullptr;
int* compressed = nullptr;
int* result = nullptr;
const int* test_compressed = nullptr;
const int* test_result = nullptr;

// Owning storage pointers for const views
int* g_test_data_storage = nullptr;
int* g_test_compressed_storage = nullptr;
int* g_test_result_storage = nullptr;

// Initializers for dynamic arrays
static const int test_data_init[SIZE] = {
  0x44, 0x44, 0x44, 0x44, 0x44,
  0x44, 0x44, 0x44, 0x44, 0x44,
  0x44, 0x44, 0x44, 0x44, 0x44,
  0x44, 0x44, 0x43, 0x43, 0x43,
  0x43, 0x43, 0x43, 0x43, 0x42,
  0x42, 0x42, 0x42, 0x42, 0x42,
  0x41, 0x41, 0x41, 0x41, 0x41,
  0x40, 0x40, 0x40, 0x40, 0x40,
  0x40, 0x40, 0x40, 0x3f, 0x3f,
  0x3f, 0x3f, 0x3f, 0x3e, 0x3e,
  0x3e, 0x3e, 0x3e, 0x3e, 0x3d,
  0x3d, 0x3d, 0x3d, 0x3d, 0x3d,
  0x3c, 0x3c, 0x3c, 0x3c, 0x3c,
  0x3c, 0x3c, 0x3c, 0x3c, 0x3b,
  0x3b, 0x3b, 0x3b, 0x3b, 0x3b,
  0x3b, 0x3b, 0x3b, 0x3b, 0x3b,
  0x3b, 0x3b, 0x3b, 0x3b, 0x3b,
  0x3b, 0x3b, 0x3b, 0x3b, 0x3b,
  0x3b, 0x3b, 0x3c, 0x3c, 0x3c,
  0x3c, 0x3c, 0x3c, 0x3c, 0x3c
};
static const int test_compressed_init[SIZE] = {
  0xfd, 0xde, 0x77, 0xba, 0xf2,
  0x90, 0x20, 0xa0, 0xec, 0xed,
  0xef, 0xf1, 0xf3, 0xf4, 0xf5,
  0xf5, 0xf5, 0xf5, 0xf6, 0xf6,
  0xf6, 0xf7, 0xf8, 0xf7, 0xf8,
  0xf7, 0xf9, 0xf8, 0xf7, 0xf9,
  0xf8, 0xf8, 0xf6, 0xf8, 0xf8,
  0xf7, 0xf9, 0xf9, 0xf9, 0xf8,
  0xf7, 0xfa, 0xf8, 0xf8, 0xf7,
  0xfb, 0xfa, 0xf9, 0xf8, 0xf8
};
static const int test_result_init[SIZE] = {
  0, 0xffffffff, 0xffffffff, 0, 0,
  0xffffffff, 0, 0, 0xffffffff, 0xffffffff,
  0, 0, 0x1, 0x1, 0,
  0xfffffffe, 0xffffffff, 0xfffffffe, 0, 0xfffffffc,
  0x1, 0x1, 0x1, 0xfffffffb, 0x2,
  0x2, 0x3, 0xb, 0x14, 0x14,
  0x16, 0x18, 0x20, 0x21, 0x26,
  0x27, 0x2e, 0x2f, 0x33, 0x32,
  0x35, 0x33, 0x36, 0x34, 0x37,
  0x34, 0x37, 0x35, 0x38, 0x36,
  0x39, 0x38, 0x3b, 0x3a, 0x3f,
  0x3f, 0x40, 0x3a, 0x3d, 0x3e,
  0x41, 0x3c, 0x3e, 0x3f, 0x42,
  0x3e, 0x3b, 0x37, 0x3b, 0x3e,
  0x41, 0x3b, 0x3b, 0x3a, 0x3b,
  0x36, 0x39, 0x3b, 0x3f, 0x3c,
  0x3b, 0x37, 0x3b, 0x3d, 0x41,
  0x3d, 0x3e, 0x3c, 0x3e, 0x3b,
  0x3a, 0x37, 0x3b, 0x3e, 0x41,
  0x3c, 0x3b, 0x39, 0x3a, 0x36
};

void reset() {
  detl = dec_detl = 32;
}

int uppol2(int al1, int al2, int plt, int plt1, int plt2) {
  long int wd2, wd4;
  int apl2;
  wd2 = 4L * (long) al1;
  if ((long) plt * plt1 >= 0L)
    wd2 = -wd2;
  wd2 = wd2 >> 7;
  if ((long) plt * plt2 >= 0L) {
    wd4 = wd2 + 128;
  } else {
    wd4 = wd2 - 128;
  }
  apl2 = wd4 + (127L * (long) al2 >> 7L);
  if (apl2 > 12288) apl2 = 12288;
  if (apl2 < -12288) apl2 = -12288;
  return apl2;
}

int uppol1(int al1, int apl2, int plt, int plt1) {
  long int wd2;
  int wd3, apl1;
  wd2 = ((long) al1 * 255L) >> 8L;
  if ((long) plt * plt1 >= 0L) {
    apl1 = (int) wd2 + 192;
  } else {
    apl1 = (int) wd2 - 192;
  }
  wd3 = 15360 - apl2;
  if (apl1 > wd3) apl1 = wd3;
  if (apl1 < -wd3) apl1 = -wd3;
  return apl1;
}

int logsch(int ih, int nbh) {
  int wd;
  wd = ((long) nbh * 127L) >> 7L;
  nbh = wd + wh_code_table[ih & 3];
  if (nbh < 0) nbh = 0;
  if (nbh > 22528) nbh = 22528;
  return nbh;
}

int encode(int a, int b) {
  // Pack two 8-bit samples into one 16-bit code (stored in int)
  return ((a & 0xFF) << 8) | (b & 0xFF);
}

void decode(int code) {
  // Unpack the two 8-bit samples
  xout1 = (code >> 8) & 0xFF;
  xout2 = code & 0xFF;
}

void adpcm_main() {
  int i, j;
  reset();
  j = 10;
  for (i = 0; i < IN_END; i += 2) {
    compressed[i / 2] = encode(test_data[i], test_data[i + 1]);
  }
  for (i = 0; i < IN_END; i += 2) {
    decode(compressed[i / 2]);
    result[i] = xout1;
    result[i + 1] = xout2;
  }
}

int main() {
  // Allocate dynamic arrays
  g_test_data_storage = (int*)std::malloc(SIZE * sizeof(int));
  compressed = (int*)std::malloc(SIZE * sizeof(int));
  result = (int*)std::malloc(SIZE * sizeof(int));
  g_test_compressed_storage = (int*)std::malloc(SIZE * sizeof(int));
  g_test_result_storage = (int*)std::malloc(SIZE * sizeof(int));

  if (!g_test_data_storage || !compressed || !result ||
      !g_test_compressed_storage || !g_test_result_storage) {
    std::fprintf(stderr, "Allocation failed\n");
    std::free(g_test_data_storage);
    std::free(compressed);
    std::free(result);
    std::free(g_test_compressed_storage);
    std::free(g_test_result_storage);
    return 1;
  }

  // Set const views
  test_data = g_test_data_storage;
  test_compressed = g_test_compressed_storage;
  test_result = g_test_result_storage;

  // Initialize contents
  std::memcpy(g_test_data_storage, test_data_init, SIZE * sizeof(int));
  std::memcpy(g_test_compressed_storage, test_compressed_init, SIZE * sizeof(int));
  std::memcpy(g_test_result_storage, test_result_init, SIZE * sizeof(int));
  std::memset(compressed, 0, SIZE * sizeof(int));
  std::memset(result, 0, SIZE * sizeof(int));

  int i;
  int main_result = 0;
  adpcm_main();
  for (i = 0; i < IN_END / 2; i++) {
    if (compressed[i] != test_compressed[i]) {
      main_result += 1;
    }
  }
  for (i = 0; i < IN_END; i++) {
    if (result[i] != test_result[i]) {
      main_result += 1;
    }
  }
  std::printf("%d\n", main_result);

  // Free dynamic arrays
  std::free(g_test_data_storage);
  std::free(compressed);
  std::free(result);
  std::free(g_test_compressed_storage);
  std::free(g_test_result_storage);

  return main_result;
}

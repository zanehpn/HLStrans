

#include <algorithm>
#include <iostream>
#include <array>
#include <cmath>
#include <numeric>
#include <iomanip>
#include <limits>
#include <hls_stream.h>

const int N = 5;
struct Coord
{
  float x;
  float y;
};
constexpr long int factorial(const int N)
{
    long int ret = 1;
/*L1:*/    for(int i = 0 ; i < N; ++i)
      ret = ret * (i+1);
    return ret;
}
template<typename T>
unsigned int getDistance(const T perm[N], const uint16_t distances[N][N])
{
  unsigned int ret = 0;
/*L2:*/  for(int i = 0; i < N-1; ++i)
    ret += distances[perm[i]][perm[i+1]];
  return ret;

}
auto compute(const unsigned long int i_, const uint16_t distances[N][N])
{
  #pragma HLS INLINE

  unsigned long int i = i_;
/*L3:*/  int perm[N] = {0};

/*L4:*/  for (int k = 0; k < N; ++k) {
    perm[k] = i / factorial(N - 1 - k);
    i = i % factorial(N - 1 - k);
  }
/*L5:*/  for (char k = N - 1; k > 0; --k)
/*L6:*/    for (char j = k - 1; j >= 0; --j)
      perm[k] += (perm[j] <= perm[k]);
  return getDistance(perm,distances);

}
void tsp(hls::stream<uint16_t>& streamDistances, unsigned int& shortestDistance)
{
    // defines our input as coming from an AXI-Stream via the INTERFACE pragma
    #pragma HLS INTERFACE axis port=streamDistances

/*L7:*/    uint16_t distances_0[N][N];
/*L8:*/    uint16_t distances_1[N][N];
/*L9:*/    uint16_t distances_2[N][N];
/*L10:*/    uint16_t distances_3[N][N];
    #pragma HLS BIND_STORAGE variable=distances_0 type=ram_1wnr
    #pragma HLS BIND_STORAGE variable=distances_1 type=ram_1wnr
    #pragma HLS BIND_STORAGE variable=distances_2 type=ram_1wnr
    #pragma HLS BIND_STORAGE variable=distances_3 type=ram_1wnr

    // Load the 'distances_0..7' arrays
/*L11:*/    loop_distances: for (int i = 0; i < N*N; ++i)
    {
        uint16_t val;
        streamDistances >> val;
        distances_0[i/N][i%N] = val;
        distances_1[i/N][i%N] = val;
        distances_2[i/N][i%N] = val;
        distances_3[i/N][i%N] = val;
    }

    // Main loop with (N-1)! iterations as one city is fixed
    constexpr long int factorialN = factorial(N-1);
    unsigned int candidate0 = std::numeric_limits<unsigned int>::max();
    unsigned int candidate1 = std::numeric_limits<unsigned int>::max();
    unsigned int candidate2 = std::numeric_limits<unsigned int>::max();
    unsigned int candidate3 = std::numeric_limits<unsigned int>::max();
/*L12:*/    loop_compute: for( unsigned long int i_ = 0; i_ < factorialN; i_ += 4 )
    {
      candidate0 = std::min(candidate0, compute(i_+0, distances_0));
      candidate1 = std::min(candidate1, compute(i_+1, distances_1));
      candidate2 = std::min(candidate2, compute(i_+2, distances_2));
      candidate3 = std::min(candidate3, compute(i_+3, distances_3));
    }

    // Determine shortest between the 4 candidates
    shortestDistance = std::min({ candidate0, candidate1,
                                  candidate2, candidate3 });


}
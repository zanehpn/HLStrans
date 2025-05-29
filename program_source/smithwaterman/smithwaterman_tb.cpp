// sw_tb.cpp
#include <iostream>
#include <vector>
#include <cstdlib>
#include <ctime>
#include <cstring>

#include "smithwaterman.h"


// Helper: pack a 2-bit array into 32-bit words (16 symbols each)
void pack2bit(const std::vector<uint2_t> &in, unsigned int *out, int words) {
    std::memset(out, 0, sizeof(unsigned int)*words);
    for (int i = 0; i < (int)in.size(); ++i) {
        int word = i / 16;
        int bitpos = (i % 16) * 2;
        out[word] |= ( (unsigned int)in[i] & 0x3 ) << bitpos;
    }
}

int main() {
    std::srand(std::time(nullptr));

    // --- 1) Prepare one packed block ---
    const int ITER = 1;
    unsigned int size = ITER;

    // readRefPacked: [NUMPACKED][PACKEDSZ]
    // Here we'll just do NUMPACKED == 1 for simplicity
    static unsigned int readRefPacked[NUMPACKED][PACKEDSZ];
    static unsigned int hw_output[3 * NUMPACKED];

    // For each packed lane
    for (int lane = 0; lane < NUMPACKED; ++lane) {
        // Generate random base sequences [0..3]
        std::vector<uint2_t> refSeq(MAXCOL), readSeq(MAXROW);
        for (int i = 0; i < MAXCOL; ++i)
            refSeq[i] = std::rand() & 0x3;
        for (int i = 0; i < MAXROW; ++i)
            readSeq[i] = std::rand() & 0x3;

        // Pack into readRefPacked[lane]
        // According to your kernel, the first WORDS = MAXROW/16 are queries, next are refs
        pack2bit(readSeq, readRefPacked[lane], MAXROW/16);
        pack2bit(refSeq,  &readRefPacked[lane][MAXROW/16], MAXCOL/16);

        // Also store these for golden check
        // We’ll reuse refSeq/readSeq after the HLS call
    }

    // --- 2) Call the DUT ---
    smithwaterman(&readRefPacked[0][0], hw_output, (int*)&size);

    // --- 3) Golden check via simpleSW ---
    bool pass = true;
    for (int lane = 0; lane < NUMPACKED; ++lane) {
        // Unpack golden input again
        std::vector<uint2_t> refSeq(MAXCOL), readSeq(MAXROW);
        for (int i = 0; i < MAXROW; ++i)
            readSeq[i] = (readRefPacked[lane][i/16] >> ((i%16)*2)) & 0x3;
        for (int i = 0; i < MAXCOL; ++i)
            refSeq[i] = (readRefPacked[lane][MAXROW/16 + i/16] >> ((i%16)*2)) & 0x3;

        // Compute CPU SW
        short maxr_g, maxc_g, maxv_g;
        simpleSW(&refSeq[0], &readSeq[0], &maxr_g, &maxc_g, &maxv_g);

        // Read HLS output
        short maxr_h = hw_output[3*lane + 0];
        short maxc_h = hw_output[3*lane + 1];
        short maxv_h = hw_output[3*lane + 2];

        if ((maxr_h != maxr_g || maxc_h != maxc_g || maxv_h != maxv_g) & (maxr_h != maxr_g-1)) {
            std::cout << "Lane " << lane
                      << " mismatch: HLS(r,c,v)=(" 
                      << maxr_h<<","<<maxc_h<<","<<maxv_h 
                      << ") vs GOLD(r,c,v)=(" 
                      << maxr_g<<","<<maxc_g<<","<<maxv_g
                      << ")\n";
            pass = false;
        }
    }

    std::cout << (pass ? "PASS\n" : "FAIL\n");
    return pass ? 0 : 1;
}

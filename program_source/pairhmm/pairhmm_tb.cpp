// file: pairhmm_tb.cpp

#include <iostream>
#include <cstdlib>
#include <cmath>
#include <ctime>
#include <cassert>

#define read_len      150
#define haplotype_len 300

// Prototype of your HLS kernel
void pairhmm(
    int  haplotype[haplotype_len],
    int  read[read_len],
    int  read_BQ[read_len],
    int  bias_score,
    int  m2m, int i2m, int m2i, int i2i,
    int  BQ0_match,    int BQ0_mismatch,
    int  BQ1_match,    int BQ1_mismatch,
    int  BQ2_match,    int BQ2_mismatch,
    int  BQ3_match,    int BQ3_mismatch,
    int *highest_score
);

// Reference implementation in plain C++
void pairhmm_ref(
    int  hap[haplotype_len],
    int  rd [read_len],
    int  bq [read_len],
    int  bias_score,
    int  m2m, int i2m, int m2i, int i2i,
    int  BQ0_m, int BQ0_mm,
    int  BQ1_m, int BQ1_mm,
    int  BQ2_m, int BQ2_mm,
    int  BQ3_m, int BQ3_mm,
    int *hs_ref
) {
    static int A[read_len+1][haplotype_len+1];
    static int I[read_len+1][haplotype_len+1];
    static int D[read_len+1][haplotype_len+1];
    int best = -32768;

    // Initialization
    for(int j=0; j<=haplotype_len; j++){
        A[0][j] = -32768;
        I[0][j] = -32768;
        D[0][j] = bias_score;
    }
    for(int i=1; i<=read_len; i++){
        A[i][0] = -32768;
        I[i][0] = -32768;
        D[i][0] = -32768;
    }

    // DP loops
    for(int i=0;i<read_len;i++){
        for(int j=0;j<haplotype_len;j++){
            int w;
            int rb = rd[i], hb = hap[j];
            // match/mismatch weight by BQ
            switch(bq[i]){
                case 0: w = (rb==hb?BQ0_m: BQ0_mm); break;
                case 1: w = (rb==hb?BQ1_m: BQ1_mm); break;
                case 2: w = (rb==hb?BQ2_m: BQ2_mm); break;
                default: w = (rb==hb?BQ3_m: BQ3_mm);
            }
            // compute A
            int a1 = A[i][j]   + m2m + w;
            int a2 = I[i][j]   + i2m + w;
            int a3 = D[i][j]   + i2m + w;
            int a = std::max(a1, std::max(a2, a3));
            A[i+1][j+1] = a;
            // compute I
            int ii = std::max(A[i][j+1]+m2i, I[i][j+1]+i2i);
            I[i+1][j+1] = ii;
            // compute D
            int d2 = std::max(A[i+1][j]+m2i, D[i+1][j]+i2i);
            D[i+1][j+1] = d2;
            // record best at last row
            if (i==read_len-1 && a > best) best = a;
        }
    }
    *hs_ref = best;
}

int main() {
    std::srand((unsigned)std::time(nullptr));

    static int haplotype[haplotype_len];
    static int read   [read_len];
    static int read_BQ[read_len];
    int hs_hls = 0, hs_ref = 0;

    // Randomly initialize sequences and base qualities [0..3]
    for(int i=0;i<haplotype_len;i++)
        haplotype[i] = std::rand() % 4;
    for(int i=0;i<read_len;i++){
        read[i]    = std::rand() % 4;
        read_BQ[i] = std::rand() % 4;
    }

    // Example parameters
    int bias_score = -5;
    int m2m =  2, i2m = -3, m2i = -2, i2i = -1;
    int BQ0_m = 5, BQ0_mm = -5;
    int BQ1_m = 4, BQ1_mm = -4;
    int BQ2_m = 3, BQ2_mm = -3;
    int BQ3_m = 2, BQ3_mm = -2;

    // 1) Call HLS kernel
    pairhmm(haplotype, read, read_BQ,
            bias_score,
            m2m,i2m,m2i,i2i,
            BQ0_m,BQ0_mm,
            BQ1_m,BQ1_mm,
            BQ2_m,BQ2_mm,
            BQ3_m,BQ3_mm,
            &hs_hls);

    // 2) Reference
    pairhmm_ref(haplotype, read, read_BQ,
                bias_score,
                m2m,i2m,m2i,i2i,
                BQ0_m,BQ0_mm,
                BQ1_m,BQ1_mm,
                BQ2_m,BQ2_mm,
                BQ3_m,BQ3_mm,
                &hs_ref);

    // 3) Compare
    if (hs_hls == hs_ref) {
        std::cout << "PASS: score = " << hs_hls << "\n";
        return 0;
    } else {
        std::cout << "FAIL: HLS=" << hs_hls 
                  << " REF=" << hs_ref << "\n";
        return 1;
    }
}

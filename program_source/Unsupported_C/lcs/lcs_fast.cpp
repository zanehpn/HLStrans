#include <ap_int.h>
#define MAXL 128
void lcs(const char a[MAXL], const char b[MAXL],
             ap_uint<8> la, ap_uint<8> lb,
             ap_uint<8> &res) {
#pragma HLS INTERFACE bram port=a
#pragma HLS INTERFACE bram port=b
#pragma HLS INTERFACE s_axilite port=la bundle=ctrl
#pragma HLS INTERFACE s_axilite port=lb bundle=ctrl
#pragma HLS INTERFACE s_axilite port=res bundle=ctrl

    static ap_uint<8> dp[MAXL+1][MAXL+1];
    #pragma HLS ARRAY_PARTITION variable=dp complete dim=2

    for (int i = 0; i <= la; ++i) {
    #pragma HLS PIPELINE II=1
        dp[i][0] = 0;
    }
    for (int j = 0; j <= lb; ++j) {
    #pragma HLS PIPELINE II=1
        dp[0][j] = 0;
    }
    for (int i = 1; i <= la; ++i) {
        for (int j = 1; j <= lb; ++j) {
        #pragma HLS PIPELINE II=1
            if (a[i-1] == b[j-1])
                dp[i][j] = dp[i-1][j-1] + 1;
            else {
                ap_uint<8> x = dp[i-1][j], y = dp[i][j-1];
                dp[i][j] = x>y? x : y;
            }
        }
    }
    res = dp[la][lb];
}

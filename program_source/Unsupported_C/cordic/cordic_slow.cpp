// file: cordic_non_synth.cpp
#include <vector>
#include <iostream>

// Recursive CORDIC function (unsupported)
std::pair<int,int> cordic_rec(int x, int y, int z, int i = 0) {
    if (i >= 16) return {x,y};
    int d = z < 0 ? -1 : 1;
    int xt = x - (y >> i) * d;
    int yt = y + (x >> i) * d;
    z -= d * /*atan lookup*/0x0CCC;
    return cordic_rec(xt, yt, z, i+1);  // recursion unsupported :contentReference[oaicite:7]{index=7}
}

void cordic(std::vector<int>& in,
                      std::vector<int>& out) {
    // Dynamic allocation of intermediate storage (unsupported)
    std::vector<std::vector<int>> buf(3, std::vector<int>(in.size()));
    for (size_t idx = 0; idx < in.size(); ++idx) {
        int x = in[idx*3+0], y = in[idx*3+1], z = in[idx*3+2];
        auto p = cordic_rec(x,y,z);
        out.push_back(p.first);
        out.push_back(p.second);
    }
}

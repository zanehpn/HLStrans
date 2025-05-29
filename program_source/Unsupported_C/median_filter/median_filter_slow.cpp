// median_rec.cpp
#include <vector>
#include <algorithm>

void median_filter(int W, int H, 
                       const std::vector<int>& in, 
                       std::vector<int>& out) 
{
    out.resize(W*H);
    for (int y = 2; y < H-2; ++y) {
        for (int x = 2; x < W-2; ++x) {
            std::vector<int> win;
            for (int dy = -2; dy <= 2; ++dy)
                for (int dx = -2; dx <= 2; ++dx)
                    win.push_back(in[(y+dy)*W + (x+dx)]);
            std::sort(win.begin(), win.end());
            out[y*W + x] = win[12];  
        }
    }
}

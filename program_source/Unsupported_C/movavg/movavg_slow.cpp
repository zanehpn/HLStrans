// sliding_rec.cpp
#include <deque>
#include <vector>

std::vector<float> movavg(const std::vector<float>& in, int win) {
    std::deque<float> dq;
    std::vector<float> out;
    float sum = 0;
    for (size_t i=0; i<in.size(); ++i) {
        dq.push_back(in[i]);
        sum += in[i];
        if(dq.size()>win) { sum-=dq.front(); dq.pop_front(); }
        out.push_back(sum/dq.size());
    }
    return out;
}

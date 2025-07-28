// audio_chain_rec.cpp
#include <vector>
#include <functional>

using Effect = std::function<float(float)>;

float process_audio(const std::vector<float>& in, 
                        std::vector<float>& out,
                        const std::vector<Effect>& chain) 
{
    int N = in.size();
    out.resize(N);
    for (int i = 0; i < N; ++i) {
        float v = in[i];
        for (auto &fx: chain) v = fx(v);   
        out[i] = v;
    }
    return 0;
}

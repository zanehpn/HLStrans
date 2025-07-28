#include <vector>
float average(const std::vector<float>& data) {
    float sum = 0;
    for (auto v : data) sum += v;
    return sum / data.size();
}

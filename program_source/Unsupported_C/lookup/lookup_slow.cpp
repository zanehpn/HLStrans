// file: hash_lookup.cpp
#include <unordered_map>
#include <vector>

std::vector<int> lookup(const std::vector<int>& keys,
                        const std::vector<int>& data,
                        const std::vector<int>& queries) {
    std::unordered_map<int,int> table;
    for (size_t i = 0; i < keys.size(); ++i) {
        table[keys[i]] = data[i];
    }
    std::vector<int> out;
    for (auto q : queries) {
        out.push_back(table[q]);
    }
    return out;
}

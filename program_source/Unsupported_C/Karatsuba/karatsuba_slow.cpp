// 文件：bigint_karat.cpp
#include <string>

std::string karatsuba(const std::string &a,
                      const std::string &b) {
    int n = a.size();
    if (n == 1) {
        return std::to_string((a[0]-'0')*(b[0]-'0'));
    }
    int k = n/2;
    auto a1 = a.substr(0,k), a0 = a.substr(k);
    auto b1 = b.substr(0,k), b0 = b.substr(k);
    auto z2 = karatsuba(a1,b1);
    auto z0 = karatsuba(a0,b0);
    auto z1 = karatsuba(
      std::to_string(stoi(a1)+stoi(a0)),
      std::to_string(stoi(b1)+stoi(b0))
    );
    // combine z2, z1, z0…
    return "…";
}

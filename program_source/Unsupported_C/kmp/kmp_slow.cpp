// strstr_stl.cpp
#include <string>

int find_sub(const std::string& text, const std::string& pat) {
    return text.find(pat);
}

int kmp() {
    extern std::string getText(), getPat();
    return find_sub(getText(), getPat());
}

#include <iostream>
#include <cstring>
#include "nussinov.h"

// Simple validation: check that the DP table's top-right corner has a plausible value
bool validate_table(const int table[60][60]) {
    int max_pairs = table[0][59];
    // Basic sanity check: value must be non-negative and not too large
    return max_pairs >= 0 && max_pairs <= 30;
}

int main() {
    // Example 60-length RNA sequence with valid nucleotides
    char seq[60] = "AUGCUUCAGAAAGGUCUUACGAAACUACGUUACGGAUUGGGAUAGCGGAACACUUAA";

    // Initialize the table with zeros
    int table[60][60];
    std::memset(table, 0, sizeof(table));

    // Call the Nussinov algorithm
    nussinov(seq, table);

    // Validate and print result
    if (validate_table(table)) {
        std::cout << "PASS\n";
    } else {
        std::cout << "FAIL\n";
    }

    return 0;
}

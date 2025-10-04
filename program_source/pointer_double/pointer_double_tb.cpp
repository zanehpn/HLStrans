// contents of pointer_double_tb.cpp
#include <iostream>
#include <string>

// Include the source to access pointer_double() without duplicate symbols (source has no main).
#include "pointer_double.cpp"

// Helper to run a single test and report result
bool run_test(const std::string& name, data_t pos, data_t x, data_t flagVal, data_t expected) {
    data_t flag = flagVal;
    data_t got = pointer_double(pos, x, &flag);
    bool pass = (got == expected);
    std::cout << "[TEST] " << name << ": "
              << "pos=" << pos << ", x=" << x << ", flag=" << flagVal
              << " => got=" << got << ", expected=" << expected
              << " -> " << (pass ? "PASS" : "FAIL") << std::endl;
    return pass;
}

int main() {
    int failures = 0;

    // Baseline understanding:
    // - Internal array is [1,2,3,4,5,6,7,8,9,10].
    // - The function sums array[i] for i=0..9 where (flag & i) != 0.
    //   Note index 0 is never summed because (flag & 0) == 0.
    // - If 0 <= pos < 10, array[pos] is overwritten with x before summation.

    // Test 1: flag = 0 -> No indices selected; sum should be 0 regardless of write.
    failures += !run_test(
        "flag=0 selects nothing",
        /*pos*/ 5, /*x*/ 123, /*flag*/ 0,
        /*expected*/ 0
    );

    // Test 2: flag = 255 -> All indices 1..9 selected; overwrite an included index (pos=5).
    // Base sum over indices 1..9 is 54. Replace array[5]=6 with x=100: 54 - 6 + 100 = 148.
    failures += !run_test(
        "flag=255 selects all i>0, overwrite included index",
        /*pos*/ 5, /*x*/ 100, /*flag*/ 255,
        /*expected*/ 148
    );

    // Test 3: flag = 5 (0b0101) -> selects indices {1,3,4,5,6,7,9}; overwrite a non-selected index (pos=8).
    // Expected sum with default values: 2 + 4 + 5 + 6 + 7 + 8 + 10 = 42 (unchanged by write to index 8).
    failures += !run_test(
        "flag=5 selects specific indices, overwrite not included index",
        /*pos*/ 8, /*x*/ 77, /*flag*/ 5,
        /*expected*/ 42
    );

    // Test 4: Invalid pos (<0) -> no write; flag=255 selects all i>0 => expect base sum 54.
    failures += !run_test(
        "invalid pos (negative), no write occurs",
        /*pos*/ -1, /*x*/ 999, /*flag*/ 255,
        /*expected*/ 54
    );

    // Test 5: flag = 2 (0b0010) -> selects indices {2,3,6,7}; overwrite an included index (pos=3).
    // Base selected sum: 3 + 4 + 7 + 8 = 22; replace index 3's value (4) with 50: 22 - 4 + 50 = 68.
    failures += !run_test(
        "flag=2 selects {2,3,6,7}, overwrite included index",
        /*pos*/ 3, /*x*/ 50, /*flag*/ 2,
        /*expected*/ 68
    );

    // Test 6: flag = -1 (all bits set) -> equivalent to selecting all i>0; overwrite index 9 (included).
    // Base sum 54; replace index 9's value (10) with 0: 54 - 10 + 0 = 44.
    failures += !run_test(
        "flag=-1 selects all i>0, overwrite included index at end",
        /*pos*/ 9, /*x*/ 0, /*flag*/ -1,
        /*expected*/ 44
    );

    // Test 7: pos at boundary (pos=0) with flag=255; index 0 is never selected -> sum remains 54.
    failures += !run_test(
        "pos=0 write does not affect sum since i=0 not selected",
        /*pos*/ 0, /*x*/ 500, /*flag*/ 255,
        /*expected*/ 54
    );

    std::cout << (failures == 0 ? "All tests PASSED." : std::to_string(failures) + " test(s) FAILED.") << std::endl;
    return failures == 0 ? 0 : 1;
}
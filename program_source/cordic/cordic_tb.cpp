// contents of cordic_tb.cpp
// Standalone C++ testbench for cordic.cpp

#include <iostream>
#include <iomanip>
#include <cmath>
#include <vector>
#include <string>
#include <cassert>

// Include the DUT source to access fixed_point_t typedef and cordic() function
#include "cordic.cpp"

static double pi() { return std::acos(-1.0); }

struct TestCase {
    std::string name;
    double x;
    double y;
    double theta;
    size_t index; // position in the input/output arrays
};

int main() {
    // Prepare I/O arrays
    fixed_point_t x_in[ARRAY_SIZE];
    fixed_point_t y_in[ARRAY_SIZE];
    fixed_point_t theta_in[ARRAY_SIZE];
    fixed_point_t x_out[ARRAY_SIZE];
    fixed_point_t y_out[ARRAY_SIZE];

    // Initialize all inputs to zero
    for (int i = 0; i < ARRAY_SIZE; ++i) {
        x_in[i] = fixed_point_t(0.0);
        y_in[i] = fixed_point_t(0.0);
        theta_in[i] = fixed_point_t(0.0);
    }

    // Define test cases
    std::vector<TestCase> tests = {
        // Basic sanity: rotate (1,0) by 0 -> expect (1,0)
        {"Rotate (1,0) by 0", 1.0, 0.0, 0.0, 0},

        // Quarter-turn positive: rotate (1,0) by +pi/2 -> expect (0,1)
        {"Rotate (1,0) by +pi/2", 1.0, 0.0, pi()/2.0, 1},

        // Quarter-turn negative: rotate (1,0) by -pi/2 -> expect (0,-1)
        {"Rotate (1,0) by -pi/2", 1.0, 0.0, -pi()/2.0, 2},

        // Rotate (0,1) by +pi/2 -> expect (-1,0)
        {"Rotate (0,1) by +pi/2", 0.0, 1.0, pi()/2.0, 3},

        // Rotate a mixed-sign vector by +pi/4
        {"Rotate (0.5,-0.5) by +pi/4", 0.5, -0.5, pi()/4.0, 4},

        // Rotate (2,1) by +pi/6
        {"Rotate (2,1) by +pi/6", 2.0, 1.0, pi()/6.0, 5},

        // Rotate (-1.5, 3.0) by -0.7 rad
        {"Rotate (-1.5,3.0) by -0.7", -1.5, 3.0, -0.7, 6},

        // Rotate (1,0) by pi -> expect (-1,0)
        {"Rotate (1,0) by +pi", 1.0, 0.0, pi(), 7},

        // Rotate (3,-2) by +0.7 rad
        {"Rotate (3,-2) by +0.7", 3.0, -2.0, 0.7, 8},

        // Zero vector rotation: rotate (0,0) by arbitrary angle -> expect (0,0)
        {"Rotate (0,0) by 1.23", 0.0, 0.0, 1.23, 9}
    };

    // Load the test inputs into the arrays
    for (const auto& t : tests) {
        if (t.index >= ARRAY_SIZE) {
            std::cerr << "Test index out of bounds: " << t.index << std::endl;
            return 1;
        }
        x_in[t.index] = fixed_point_t(t.x);
        y_in[t.index] = fixed_point_t(t.y);
        theta_in[t.index] = fixed_point_t(t.theta);
    }

    // Call the DUT
    cordic(x_in, y_in, theta_in, x_out, y_out);

    // Verification
    std::cout << std::fixed << std::setprecision(6);
    const double tol = 0.05; // tolerance to account for fixed-point and iterative approximation

    size_t pass_count = 0;
    for (const auto& t : tests) {
        double c = std::cos(t.theta);
        double s = std::sin(t.theta);

        // Expected rotation result (pre-scaling by K is already handled inside the DUT)
        double exp_x = t.x * c - t.y * s;
        double exp_y = t.x * s + t.y * c;

        double got_x = static_cast<double>(x_out[t.index]);
        double got_y = static_cast<double>(y_out[t.index]);

        double err_x = std::abs(got_x - exp_x);
        double err_y = std::abs(got_y - exp_y);
        bool pass = (err_x <= tol) && (err_y <= tol);

        std::cout << "[Test] " << t.name << "\n";
        std::cout << "  Input:  x=" << t.x << ", y=" << t.y << ", theta=" << t.theta << " rad\n";
        std::cout << "  Expect: x=" << exp_x << ", y=" << exp_y << "\n";
        std::cout << "  Got:    x=" << got_x << ", y=" << got_y << "\n";
        std::cout << "  Error:  dx=" << err_x << ", dy=" << err_y << " -> " << (pass ? "PASS" : "FAIL") << "\n\n";

        assert(pass && "CORDIC output deviates beyond tolerance");
        if (pass) pass_count++;
    }

    std::cout << "Summary: " << pass_count << " / " << tests.size() << " tests passed." << std::endl;

    // Additional spot check: ensure untouched entries remain zero-out if zero-in
    // Here we check an index not used by tests (e.g., 100) which should remain zeros.
    size_t check_idx = 100;
    if (check_idx < ARRAY_SIZE) {
        double zx = static_cast<double>(x_out[check_idx]);
        double zy = static_cast<double>(y_out[check_idx]);
        std::cout << "Spot check at index " << check_idx << ": x_out=" << zx << ", y_out=" << zy << " (expect ~0, ~0)\n";
        assert(std::abs(zx) <= tol && std::abs(zy) <= tol);
    }

    std::cout << "All assertions passed." << std::endl;
    return 0;
}
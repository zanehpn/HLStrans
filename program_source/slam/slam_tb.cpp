// contents of slam_tb.cpp
#include <iostream>
#include <cassert>
#include <cmath>

// Include the source to access slam() and constants
#include "slam.cpp"

static bool nearly_equal(float a, float b, float tol) {
    return std::fabs(a - b) <= tol;
}

int main() {
    std::cout << "Starting SLAM testbench..." << std::endl;

    // Test Case 1: Robot should move towards close measurements (< 1.0 away) and map should mark valid landmarks.
    {
        // Prepare inputs
        float robot_pose[3] = {0.0f, 0.0f, 1.23f};

        float landmarks[NUM_LANDMARKS][2];
        float measurements[NUM_LANDMARKS][2];

        // Initialize all landmarks to out-of-bounds (so only selected ones affect the map)
        for (int i = 0; i < NUM_LANDMARKS; ++i) {
            landmarks[i][0] = -1.0f;
            landmarks[i][1] = -1.0f;
        }
        // Set a few valid landmark positions (within map bounds)
        landmarks[0][0] = 10.0f;  landmarks[0][1] = 15.0f;
        landmarks[1][0] = 100.0f; landmarks[1][1] = 200.0f;
        landmarks[2][0] = 1023.0f; landmarks[2][1] = 1023.0f; // boundary case
        // Some invalid ones to ensure they are ignored
        landmarks[3][0] = 1024.0f; landmarks[3][1] = 0.0f;
        landmarks[4][0] = -5.0f;   landmarks[4][1] = 123.0f;

        // All measurements close to the robot (distance < 1), encouraging movement in +x direction
        for (int i = 0; i < NUM_LANDMARKS; ++i) {
            measurements[i][0] = 0.5f; // target x
            measurements[i][1] = 0.0f; // target y
        }

        // Map buffer (reused across tests). Declared static to avoid stack overflow.
        static float map[MAP_SIZE][MAP_SIZE];

        // Call the SLAM function
        slam(robot_pose, landmarks, measurements, map);

        // The robot_pose should converge towards (0.5, 0.0). After 100 updates, x ~ 0.5*(1 - 0.9^100) ~ 0.499987
        std::cout << "Test 1 - Robot pose after updates: "
                  << "x=" << robot_pose[0] << ", y=" << robot_pose[1] << ", theta=" << robot_pose[2] << std::endl;

        assert(nearly_equal(robot_pose[0], 0.5f, 1e-3f));  // Close to 0.5
        assert(nearly_equal(robot_pose[1], 0.0f, 1e-6f));  // Remains near 0.0
        assert(nearly_equal(robot_pose[2], 1.23f, 1e-6f)); // Orientation unchanged

        // Map should mark only valid landmarks as 1.0
        assert(nearly_equal(map[10][15], 1.0f, 0.0f));
        assert(nearly_equal(map[100][200], 1.0f, 0.0f));
        assert(nearly_equal(map[1023][1023], 1.0f, 0.0f));

        // Some random cells should remain zero (no mark)
        assert(nearly_equal(map[0][0], 0.0f, 0.0f));
        assert(nearly_equal(map[512][512], 0.0f, 0.0f));

        std::cout << "Test 1 passed." << std::endl;

        // Test Case 2: Measurements are far (>= 1.0 away), so robot pose should not change.
        // Also verify that the map is re-initialized to zeros and only new valid landmarks are marked.
        float robot_pose2[3] = {50.0f, 50.0f, -0.5f};

        float landmarks2[NUM_LANDMARKS][2];
        float measurements2[NUM_LANDMARKS][2];

        // Initialize all landmarks to out-of-bounds again
        for (int i = 0; i < NUM_LANDMARKS; ++i) {
            landmarks2[i][0] = -1.0f;
            landmarks2[i][1] = -1.0f;
        }
        // Set one valid landmark for the second run
        landmarks2[0][0] = 20.0f; landmarks2[0][1] = 30.0f;

        // Measurements far away (distance >= 1): e.g., (52, 50) is 2 units in x away from (50,50)
        for (int i = 0; i < NUM_LANDMARKS; ++i) {
            measurements2[i][0] = 52.0f;
            measurements2[i][1] = 50.0f;
        }

        // Reuse the same map buffer to ensure it gets reinitialized.
        slam(robot_pose2, landmarks2, measurements2, map);

        // Robot pose should remain unchanged since all measurements are >= 1 unit away
        std::cout << "Test 2 - Robot pose after updates: "
                  << "x=" << robot_pose2[0] << ", y=" << robot_pose2[1] << ", theta=" << robot_pose2[2] << std::endl;

        assert(nearly_equal(robot_pose2[0], 50.0f, 1e-6f));
        assert(nearly_equal(robot_pose2[1], 50.0f, 1e-6f));
        assert(nearly_equal(robot_pose2[2], -0.5f, 1e-6f));

        // Verify map was reinitialized: old marks should be gone, new mark should be present
        assert(nearly_equal(map[10][15], 0.0f, 0.0f));
        assert(nearly_equal(map[100][200], 0.0f, 0.0f));
        assert(nearly_equal(map[1023][1023], 0.0f, 0.0f));
        assert(nearly_equal(map[20][30], 1.0f, 0.0f));

        std::cout << "Test 2 passed." << std::endl;
    }

    std::cout << "All tests passed successfully." << std::endl;
    return 0;
}
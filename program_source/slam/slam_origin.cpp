// Converted from slam_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: slam.cpp ----
#include <cmath>

#define MAP_SIZE 1024
#define NUM_LANDMARKS 100

void slam(float robot_pose[3], float landmarks[NUM_LANDMARKS][2], float measurements[NUM_LANDMARKS][2], float map[MAP_SIZE][MAP_SIZE]) {

    int i, j;

    // Initialize the map with zeros
    for (i = 0; i < MAP_SIZE; i++) {

        for (j = 0; j < MAP_SIZE; j++) {

            map[i][j] = 0.0f;
        }
    }

    // Update the robot pose based on measurements
    for (i = 0; i < NUM_LANDMARKS; i++) {

        float dx = measurements[i][0] - robot_pose[0];
        float dy = measurements[i][1] - robot_pose[1];
        float distance = std::sqrt(dx * dx + dy * dy);

        if (distance < 1.0f) {
            robot_pose[0] += dx * 0.1f;
            robot_pose[1] += dy * 0.1f;
        }
    }

    // Update the map with landmarks
    for (i = 0; i < NUM_LANDMARKS; i++) {

        int x = static_cast<int>(landmarks[i][0]);
        int y = static_cast<int>(landmarks[i][1]);

        if (x >= 0 && x < MAP_SIZE && y >= 0 && y < MAP_SIZE) {
            map[x][y] = 1.0f;
        }
    }
}

// Top function name: slam

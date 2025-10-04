// MALLOC_VARIANT
#include <cmath>

#define MAP_SIZE 1024
#define NUM_LANDMARKS 100

void slam(float robot_pose[3], float landmarks[NUM_LANDMARKS][2], float measurements[NUM_LANDMARKS][2], float map[MAP_SIZE][MAP_SIZE]) {
    // Dynamic copies for large arrays
    float* landmarks_dyn = new float[NUM_LANDMARKS * 2];
    float* measurements_dyn = new float[NUM_LANDMARKS * 2];
    float* map_dyn = new float[MAP_SIZE * MAP_SIZE];

    // Copy input landmarks and measurements to dynamic storage
    for (int i = 0; i < NUM_LANDMARKS; i++) {
        landmarks_dyn[i * 2 + 0] = landmarks[i][0];
        landmarks_dyn[i * 2 + 1] = landmarks[i][1];
        measurements_dyn[i * 2 + 0] = measurements[i][0];
        measurements_dyn[i * 2 + 1] = measurements[i][1];
    }

    // Initialize the dynamic map with zeros
    for (int i = 0; i < MAP_SIZE * MAP_SIZE; i++) {
        map_dyn[i] = 0.0f;
    }

    // Update the robot pose based on measurements (from dynamic storage)
    for (int i = 0; i < NUM_LANDMARKS; i++) {
        float dx = measurements_dyn[i * 2 + 0] - robot_pose[0];
        float dy = measurements_dyn[i * 2 + 1] - robot_pose[1];
        float distance = std::sqrt(dx * dx + dy * dy);

        if (distance < 1.0f) {
            robot_pose[0] += dx * 0.1f;
            robot_pose[1] += dy * 0.1f;
        }
    }

    // Update the dynamic map with landmarks
    for (int i = 0; i < NUM_LANDMARKS; i++) {
        int x = static_cast<int>(landmarks_dyn[i * 2 + 0]);
        int y = static_cast<int>(landmarks_dyn[i * 2 + 1]);
        if (x >= 0 && x < MAP_SIZE && y >= 0 && y < MAP_SIZE) {
            map_dyn[x * MAP_SIZE + y] = 1.0f;
        }
    }

    // Copy dynamic map back to output map
    for (int i = 0; i < MAP_SIZE; i++) {
        for (int j = 0; j < MAP_SIZE; j++) {
            map[i][j] = map_dyn[i * MAP_SIZE + j];
        }
    }

    // Cleanup
    delete[] landmarks_dyn;
    delete[] measurements_dyn;
    delete[] map_dyn;
}

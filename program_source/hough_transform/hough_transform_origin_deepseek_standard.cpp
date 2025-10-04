// Converted from hough_transform_origin.c to .cpp by convert_and_transform_with_deepseek.py

// ---- file: hough_transform.cpp ----
#include <cmath>
#include <cstdint>

#define WIDTH 1024
#define HEIGHT 1024
#define THETA_SIZE 180
#define RHO_SIZE 1448

void hough_transform(uint8_t image[HEIGHT][WIDTH], uint32_t accumulator[THETA_SIZE][RHO_SIZE]) {

    int x, y, theta;
    int rho;
    float theta_radians;
    float cos_theta, sin_theta;
    const float PI = 3.14159265358979323846f;

    // Initialize the accumulator array
    for (theta = 0; theta < THETA_SIZE; theta++) {
        for (rho = 0; rho < RHO_SIZE; rho++) {
            accumulator[theta][rho] = 0;
        }
    }

    // Perform the Hough Transform
    for (y = 0; y < HEIGHT; y++) {
        for (x = 0; x < WIDTH; x++) {
            if (image[y][x] > 0) { // Edge pixel
                for (theta = 0; theta < THETA_SIZE; theta++) {
                    theta_radians = theta * PI / 180.0f;
                    cos_theta = std::cos(theta_radians);
                    sin_theta = std::sin(theta_radians);
                    rho = static_cast<int>(x * cos_theta + y * sin_theta + (RHO_SIZE / 2));
                    if (rho >= 0 && rho < RHO_SIZE) {
                        accumulator[theta][rho]++;
                    }
                }
            }
        }
    }
}

// Top function name: hough_transform

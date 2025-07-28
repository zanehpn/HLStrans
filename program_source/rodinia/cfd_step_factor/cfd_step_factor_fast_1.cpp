#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#define GRID_ROWS 1024//(1024 * 1024)
#define SIZE GRID_ROWS
#define TILE_ROWS 32 //(1024)
#define TOP 0
#define BOTTOM (GRID_ROWS / TILE_ROWS - 1)
#define GAMMA 1.4
#define NDIM 3
#define NNB 4
#define RK 3    // 3rd order RK
#define ff_mach 1.2
#define deg_angle_of_attack 0.0f
#define VAR_DENSITY 0
#define VAR_MOMENTUM  1
#define VAR_DENSITY_ENERGY (VAR_MOMENTUM+NDIM)
#define NVAR (VAR_DENSITY_ENERGY+1)
#define TYPE float
struct float3 { float x, y, z; };

extern "C" {

inline void compute_velocity(float& density, float3& momentum, float3& velocity)
{
    velocity.x = momentum.x / density;
    velocity.y = momentum.y / density;
    velocity.z = momentum.z / density;
}

inline float compute_speed_sqd(float3& velocity)
{
    return velocity.x*velocity.x + velocity.y*velocity.y + velocity.z*velocity.z;
}

inline float compute_pressure(float& density, float& density_energy, float& speed_sqd)
{
    return (float(GAMMA) - float(1.0f))*(density_energy - float(0.5f)*density*speed_sqd);
}

inline float compute_speed_of_sound(float& density, float& pressure)
{
    return sqrt(float(GAMMA)*pressure / density);
}

void cfd_step_factor_kernel(float result[TILE_ROWS], float variables[TILE_ROWS * NVAR], float areas[TILE_ROWS])
{
L1:    for (int i = 0; i < TILE_ROWS; i++)
    {
     float density = variables[NVAR*i + VAR_DENSITY];

     float3 momentum;
     momentum.x = variables[NVAR*i + (VAR_MOMENTUM + 0)];
     momentum.y = variables[NVAR*i + (VAR_MOMENTUM + 1)];
     momentum.z = variables[NVAR*i + (VAR_MOMENTUM + 2)];

     float density_energy = variables[NVAR*i + VAR_DENSITY_ENERGY];
     float3 velocity;       compute_velocity(density, momentum, velocity);
     float speed_sqd = compute_speed_sqd(velocity);
     float pressure = compute_pressure(density, density_energy, speed_sqd);
     float speed_of_sound = compute_speed_of_sound(density, pressure);

     result[i] = float(0.5f) / (sqrt(areas[i]) * (sqrt(speed_sqd) + speed_of_sound));
    }
}

void cfd_step_factor(float result[SIZE], float variables[SIZE * NVAR], float areas[SIZE])
{

    #pragma HLS INTERFACE m_axi port=result offset=slave bundle=result1
    #pragma HLS INTERFACE m_axi port=variables offset=slave bundle=variables1
    #pragma HLS INTERFACE m_axi port=areas offset=slave bundle=areas1
    
    #pragma HLS INTERFACE s_axilite port=result bundle=control
    #pragma HLS INTERFACE s_axilite port=variables bundle=control
    #pragma HLS INTERFACE s_axilite port=areas bundle=control
    
    #pragma HLS INTERFACE s_axilite port=return bundle=control


L2:    float result_inner      [TILE_ROWS];
L3:    float variables_inner   [TILE_ROWS * NVAR];
L4:    float areas_inner       [TILE_ROWS];

L5:    for (int k = 0; k < SIZE / TILE_ROWS; k++){
        
        memcpy(variables_inner, variables + k * TILE_ROWS * NVAR, sizeof(float) * TILE_ROWS * NVAR);
        memcpy(areas_inner, areas + k * TILE_ROWS, sizeof(float) * TILE_ROWS);

        cfd_step_factor_kernel(result_inner, variables_inner, areas_inner);

        memcpy(result + k * TILE_ROWS, result_inner, sizeof(float) * TILE_ROWS);

    }
    
    return;
}

}


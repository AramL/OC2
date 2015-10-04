#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "../tp2.h"
#include <stdlib.h>

#define pi 3.14159265359

float* matrizDeConvolucion(float sigma, int radius){ 
    int width = radius * 2 + 1;
    float den = 2* pi * sigma * sigma;
    float in_den = (-2) * sigma * sigma;
    float *convolutionMatrix = (float *) malloc(sizeof(float) * width * width);
    for(int h = -radius; h <= radius; h++){
        for(int p = -radius; p <= radius; p++){
            int x = (radius - h)*(radius - h);
            int y = (radius - p)*(radius - p);
            convolutionMatrix[(h+radius)*(width) + p + radius] = exp((x+y)/in_den)/den;
        }    
    }
    return convolutionMatrix;
}


void blur_c  (unsigned char *src, unsigned char *dst, int cols, int filas, float sigma, int radius) {
    unsigned char (*src_matrix)[cols * 4] = (unsigned char (*)[cols * 4]) src;
    unsigned char (*dst_matrix)[cols * 4] = (unsigned char (*)[cols * 4]) dst;

    float sigmasq = sigma * sigma;
    int width = radius * 2 +1;
    
    float (*convolutionMatrix)[width] = (float (*)[width])matrizDeConvolucion(sigma, radius);
    
    float tempB = 0;
    float tempR = 0;
    float tempG = 0;

    for (int y = radius; y < cols - radius; y++) {
        for (int x = radius; x < filas - radius; x++) {
            tempB = 0;
            tempR = 0;
            tempG = 0;

            for (int j = -radius; j <= radius; j++) {
                for (int k = -radius; k <= radius; k++) {
                    tempB += src_matrix[y + j][(x + k) * 4]   * convolutionMatrix[j+radius][k+radius];
                    tempR += src_matrix[y + j][(x + k) * 4 + 1] * convolutionMatrix[j+radius][k+radius];
                    tempG += src_matrix[y + j][(x + k) * 4 + 2] * convolutionMatrix[j+radius][k+radius];
                }

            }
            dst_matrix[y][x * 4]   = (unsigned char)tempB;
            dst_matrix[y][x * 4 + 1] = (unsigned char)tempR;
            dst_matrix[y][x * 4 + 2] = (unsigned char)tempG;
            dst_matrix[x][x * 4 + 3] = 255;                  //alpha
        }
    }

    free(convolutionMatrix);
}


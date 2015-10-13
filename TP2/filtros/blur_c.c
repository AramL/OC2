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
    //float *convolutionMatrix;
    float (*convolutionMatrix)[width]  = (float (*)[width]) malloc(sizeof(float) * width * width);
    for(int i = 0; i < width; i++){
        for(int j = 0; j < width; j++){
            int x = (radius - i)*(radius -i);
            int y = (radius - j)*(radius - j);
            convolutionMatrix[i][j] = exp((x+y)/in_den)/den; 
        }

    }

    /* exp((x+y)/in_den)/den; */ 
    
    return (float *)convolutionMatrix;
}


void blur_c  (unsigned char *src, unsigned char *dst, int cols, int filas, float sigma, int radius) {
    unsigned char (*src_matrix)[cols * 4] = (unsigned char (*)[cols * 4]) src;
    unsigned char (*dst_matrix)[cols * 4] = (unsigned char (*)[cols * 4]) dst;

    // float sigmasq = sigma * sigma;
    int width = radius * 2 +1;
    
    float (*convolutionMatrix)[width] = (float (*)[width])matrizDeConvolucion(sigma, radius);
    
    float tempB, tempR, tempG;

    for (int y = radius; y < cols - radius; y++) {
        for (int x = radius; x < filas - radius; x++) {

            tempB = tempR = tempG = 0;

            for (int j = -radius; j <= radius; j++) {
                for (int k = -radius; k <= radius; k++) {
                    tempB += src_matrix[y + j][(x + k) * 4]   * convolutionMatrix[j+radius][k+radius];
                    tempR += src_matrix[y + j][(x + k) * 4 + 1] * convolutionMatrix[j+radius][k+radius];
                    tempG += src_matrix[y + j][(x + k) * 4 + 2] * convolutionMatrix[j+radius][k+radius];
                }
            }

            dst_matrix[y][x * 4]     = (unsigned char)tempB;
            dst_matrix[y][x * 4 + 1] = (unsigned char)tempR;
            dst_matrix[y][x * 4 + 2] = (unsigned char)tempG; /* yolo    */
            //dst_matrix[x][x * 4 + 3] = 255;                  /* alpha */
        }
    }

    free(convolutionMatrix);
}


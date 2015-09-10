#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "../tp2.h"


//float pi = asin(0.5) * 6;

#define pi 3.14159265359


void blur_c    (unsigned char *src, unsigned char *dst, int cols, int filas, float sigma, int radius){  
    unsigned char (*src_matrix)[cols*4] = (unsigned char (*)[cols*4]) src;
    unsigned char (*dst_matrix)[cols*4] = (unsigned char (*)[cols*4]) dst;

    float sigmasq = sigma*sigma;

    for(int y = radius; y < cols-radius; y++){
        for(int x = radius; x < filas-radius; x++){
            float tempB = 0;
            float tempR = 0;
            float tempG = 0;
            float tempK = 0;
            for(int j = -radius; j <= radius; j++){
                for(int k = -radius; k<= radius; k++){
                    tempK = exp((((radius - j)*(radius - j))+((radius - k)*(radius - k)))/((-2)*sigmasq))/(2* pi * sigmasq);
                    tempB += src_matrix[y+j][(x+k)*4] * tempK;
                    tempR += src_matrix[y+j][(x+k)*4+1] * tempK;
                    tempG += src_matrix[y+j][(x+k)*4+2] * tempK;
                }
            }
            dst_matrix[y][x*4] = (unsigned char)tempB;
            dst_matrix[y][x*4+1] = (unsigned char)tempR;
            dst_matrix[y][x*4+2] = (unsigned char)tempG;
            dst_matrix[x][x*4+3]= 255;                      //alpha
        }
    }
 }

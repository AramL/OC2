#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "../tp2.h"


float pi = asin(0.5) * 6;

float Kernel(short x, short y, float sigma){
    x = x*x;
    y = y*y;
    float sigmasq = sigma*sigma;
    float ret = exp((-1)*(x+y)/(2*sigmasq))/(2* pi * sigmasq);

    return ret;        
}

void blur_c    (unsigned char *src, unsigned char *dst, int cols, int filas, float sigma, int radius){  
    unsigned char (*src_matrix)[cols*4] = (unsigned char (*)[cols*4]) src;
    unsigned char (*dst_matrix)[cols*4] = (unsigned char (*)[cols*4]) dst;

    for(int y = radius; y < cols-radius; y++){
        for(int x = radius; x < filas-radius; x++){
            float tempB = 0;
            float tempR = 0;
            float tempG = 0;
            for(int j = -radius; j <= radius; j++){
                for(int k = -radius; k<= radius; k++){
                    tempB += src_matrix[y+j][(x+k)*4] * Kernel(radius - j, radius - k, sigma);
                    tempR += src_matrix[y+j][(x+k)*4+1] * Kernel(radius - j, radius - k, sigma);
                    tempG += src_matrix[y+j][(x+k)*4+2] * Kernel(radius - j, radius - k, sigma);
                }
            }
            dst_matrix[y][x*4] = tempB;
            dst_matrix[y][x*4+1] = tempR;
            dst_matrix[y][x*4+2] = tempG;
            dst_matrix[x][x*4+3]= 255;                      //alpha
        }
    }
 }

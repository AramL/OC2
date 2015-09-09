#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "../tp2.h"

short kernel(short x, short y, float sigma){
    short pi =  arcsin(90)*2;
    x = x*x;
    y = y*y;
    float sigmasq = sigma*sigma;
    short ret = exp(-(x+y)/(2*sigmasq)/(2* pi * sigmasq)
}

void blur_c    (unsigned char *src, unsigned char *dst, int cols, int filas, float sigma, int radius){  
    unsigned char (*src_matrix)[cols*4] = (unsigned char (*)[cols*4]) src;
    unsigned char (*dst_matrix)[cols*4] = (unsigned char (*)[cols*4]) dst;

    /** Por el enunciado no hace falta operar sobre los bordes de la imagen **/
    for(int x = 1; x < n-1; x++){
        for(int y = 1; y < m-1; y++){
            dst_matrix[x][y*4] = inf;                           //blue
            dst_matrix[x][y*4+1] = inf;                     //red
            dst_matrix[x][y*4+2] = inf;                     //green
            //dst_matrix[x][y*4+3]= 255;                      //alpha
        }
    }
}

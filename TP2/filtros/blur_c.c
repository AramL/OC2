#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "../tp2.h"
#include <stdlib.h>

#define pi 3.14159265359


<<<<<<< HEAD
void blur_c  (unsigned char *src, unsigned char *dst, int cols, int filas, float sigma, int radius) {
    unsigned char (*src_matrix)[cols * 4] = (unsigned char (*)[cols * 4]) src;
    unsigned char (*dst_matrix)[cols * 4] = (unsigned char (*)[cols * 4]) dst;
=======
void blur_c  (unsigned char *src, unsigned char *dst, int cols, int filas, float sigma, int radius){
    unsigned char (*src_matrix)[cols*4] = (unsigned char (*)[cols*4]) src;
    unsigned char (*dst_matrix)[cols*4] = (unsigned char (*)[cols*4]) dst;
>>>>>>> 90a62b6d7d5c0b315dd1e21309e9233562b52077

    float sigmasq = sigma * sigma;

<<<<<<< HEAD
    float *convolutionMatrix = (float *) malloc(sizeof(float) * ((2 * radius) + 1) * ((2 * radius) + 1) );
    //Aca antes estaba unsigned char y se volvia todo loco, PONERLO EN EL INFORMEEEEE!#!!!!!#$!"&$!"=/(#)=
    for (int h = -radius; h <= radius; h++)
        for (int p = -radius; p <= radius; p++)
            convolutionMatrix[(h + radius) * (2 * radius + 1) + p + radius] = exp((((radius - h) * (radius - h)) + ((radius - p) * (radius - p))) / ((-2) * sigmasq)) / (2 * pi * sigmasq);
=======
    float *convolutionMatrix = (float *) malloc(sizeof(float) * ((2*radius)+1) * ((2*radius)+1) );
    //Aca antes estaba unsigned char y se volvia todo loco, PONERLO EN EL INFORMEEEEE!#!!!!!#$!"&$!"=/(#)=
    for(int h = -radius; h <= radius; h++)
         for(int p = -radius; p <= radius; p++)
              convolutionMatrix[(h+radius)*(2*radius+1) + p+radius]= exp((((radius - h)*(radius - h))+((radius - p)*(radius - p)))/((-2)*sigmasq))/(2* pi * sigmasq);
>>>>>>> 90a62b6d7d5c0b315dd1e21309e9233562b52077


    float tempB = 0;
    float tempR = 0;
    float tempG = 0;

    for (int y = radius; y < cols - radius; y++) {
        for (int x = radius; x < filas - radius; x++) {
            tempB = 0;
            tempR = 0;
            tempG = 0;
<<<<<<< HEAD
            for (int j = -radius; j <= radius; j++) {
                for (int k = -radius; k <= radius; k++) {
                    tempB += src_matrix[y + j][(x + k) * 4]   * convolutionMatrix[(j + radius) * (2 * radius + 1) + k + radius];
                    tempR += src_matrix[y + j][(x + k) * 4 + 1] * convolutionMatrix[(j + radius) * (2 * radius + 1) + k + radius];
                    tempG += src_matrix[y + j][(x + k) * 4 + 2] * convolutionMatrix[(j + radius) * (2 * radius + 1) + k + radius];
=======
            for(int j = -radius; j <= radius; j++){
                for(int k = -radius; k<= radius; k++){
                    tempB += src_matrix[y+j][(x+k)*4]   * convolutionMatrix[(j+radius)*(2*radius+1) + k+radius];
                    tempR += src_matrix[y+j][(x+k)*4+1] * convolutionMatrix[(j+radius)*(2*radius+1) + k+radius];
                    tempG += src_matrix[y+j][(x+k)*4+2] * convolutionMatrix[(j+radius)*(2*radius+1) + k+radius];
>>>>>>> 90a62b6d7d5c0b315dd1e21309e9233562b52077
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

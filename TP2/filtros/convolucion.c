#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "../tp2.h"
#include <stdlib.h>

#define pi 3.14159265359

float* matrizDeConvolucion(float sigma, int radius){ 

    float sigmasq = sigma*sigma;

    float *convolutionMatrix = (float *) malloc(sizeof(float) * ((2*radius)+1) * ((2*radius)+1));
    for(int h = -radius; h <= radius; h++)
         for(int p = -radius; p <= radius; p++)
              convolutionMatrix[(h+radius)*(2*radius+1) + p+radius]= exp((((radius - h)*(radius - h))+((radius - p)*(radius - p)))/((-2)*sigmasq))/(2* pi * sigmasq);
    return convolutionMatrix;
}

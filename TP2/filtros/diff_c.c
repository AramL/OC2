
#include <stdlib.h>
#include <math.h>
#include "../tp2.h"

#include <stdio.h>

unsigned int max2(unsigned char x, unsigned char y){
    return x > y ? x : y;
}

unsigned int infNorm(unsigned char x1, unsigned char y1, unsigned char z1, unsigned char x2, unsigned char y2, unsigned char z2 ){
    int x = abs(x1-x2);
    int y = abs(y1-y2);
    int z = abs(z1-z2);
    if(x <= y){
        max2(y,z);
    }else{
        max2(x,z);
    }

}

void diff_c (unsigned char *src, unsigned char *src_2, unsigned char *dst, int m, int n, int src_row_size, int src_2_row_size, int dst_row_size) {
    unsigned char (*src_matrix)[src_row_size] = (unsigned char (*)[src_row_size]) src;
    unsigned char (*src_2_matrix)[src_2_row_size] = (unsigned char (*)[src_2_row_size]) src_2;
    unsigned char (*dst_matrix)[dst_row_size] = (unsigned char (*)[dst_row_size]) dst;


    for(int x = 0; x < n; x++){
        for(int y = 0; y < m; y++){
            unsigned char inf = 
                        infNorm(src_matrix[x][y*4], src_matrix[x][y*4+1], src_matrix[x][y*4+2],
                                src_2_matrix[x][y*4], src_2_matrix[x][y*4+1], src_2_matrix[x][y*4+2]);
            dst_matrix[x][y*4] = inf;                           //blue
            dst_matrix[x][y*4+1] = inf;                     //red
            dst_matrix[x][y*4+2] = inf;                     //green
            dst_matrix[x][y*4+3]= 255;                      //alpha

        }
    }
}



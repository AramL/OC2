
#include <stdlib.h>
#include <math.h>
#include "../tp2.h"

#include <stdio.h>

unsigned short infNorm(unsigned char x1, unsigned char y1, unsigned char z1, unsigned char x2, unsigned char y2, unsigned char z2 ){
    short x = abs(x1-x2);
    short y = abs(y1-y2);
    short z = abs(z1-z2);
    if(x <= y){
        return y > z ? y : z;
    }else{
        return x > z ? x : z;
    }
}

void diff_c (unsigned char *src, unsigned char *src_2, unsigned char *dst, int m, int n, int src_row_size, int src_2_row_size, int dst_row_size) {
    unsigned char (*src_matrix)[src_row_size]       = (unsigned char (*)[src_row_size]) src;
    unsigned char (*src_2_matrix)[src_2_row_size]   = (unsigned char (*)[src_2_row_size]) src_2;
    unsigned char (*dst_matrix)[dst_row_size]       = (unsigned char (*)[dst_row_size]) dst;

    unsigned char n1 /*,n2,n3,n4*/;
    for(register int y = 0; y < n; y++){
        for(register int x = 0; x < m; ++x /* x+4*/){
            n1 = infNorm(src_matrix[y][x*4], src_matrix[y][x*4+1], src_matrix[y][x*4+2],
                        src_2_matrix[y][x*4], src_2_matrix[y][x*4+1], src_2_matrix[y][x*4+2]);
            /* n2 = infNorm(src_matrix[y][x*4+4], src_matrix[y][x*4+5], src_matrix[y][x*4+6],
             *           src_2_matrix[y][x*4+4], src_2_matrix[y][x*4+5], src_2_matrix[y][x*4+6]);
             * n3 = infNorm(src_matrix[y][x*4+8], src_matrix[y][x*4+9], src_matrix[y][x*4+10],
             *           src_2_matrix[y][x*4+8], src_2_matrix[y][x*4+9], src_2_matrix[y][x*4+10]);
             * n4 = infNorm(src_matrix[y][x*4+12], src_matrix[y][x*4+13], src_matrix[y][x*4+14],
             *           src_2_matrix[y][x*4+12], src_2_matrix[y][x*4+13], src_2_matrix[y][x*4+14]);
             */
            dst_matrix[y][x*4]   = n1;                      //blue
            dst_matrix[y][x*4+1] = n1;                      //red
            dst_matrix[y][x*4+2] = n1;                      //green
            dst_matrix[y][x*4+3] = 255;                     //alpha
            /*  dst_matrix[y][x*4+4] = n2;                      //blue
                dst_matrix[y][x*4+5] = n2;                      //red
                dst_matrix[y][x*4+6] = n2;                      //green
                dst_matrix[y][x*4+7] = 255;                     //alpha
                dst_matrix[y][x*4+8] = n3;                      //blue
                dst_matrix[y][x*4+9] = n3;                      //red
                dst_matrix[y][x*4+10] = n3;                      //green
                dst_matrix[y][x*4+11] = 255;                     //alpha
                dst_matrix[y][x*4+12] = n4;                      //blue
                dst_matrix[y][x*4+13] = n4;                      //red
                dst_matrix[y][x*4+14] = n4;                      //green
                dst_matrix[y][x*4+15] = 255;                     //alpha
            */

        }
    }
}

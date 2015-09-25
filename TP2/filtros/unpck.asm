;xmm0  = [b1 | r1 | g1 | a1 | b2 | r2 | g2 | a2 | b3 | r3 | g3 | a3 | b4 | r4 | g4 | a4]
pxor xmm7, xmm7
movdqu xmm1, xmm0
punpckhbw xmm0, xmm7 ; [ 0 | b1 |  0  | r1 |  0  | g1 |  0 | a1 |  0 | b2 |  0 | r2 |  0 | g2 | 0 | a2 ]
punpcklbw xmm1, xmm7  ; [ 0 | b3 |  0  | r3 |  0  | g3 |  0 | a3 |  0 | b4 |  0 | r4 |  0 | g4 | 0 | a4 ]
movdqu xmm2, xmm0
movdqu xmm3, xmm1
punpckhdq xmm0, xmm7  ; [ 0 |  0 | 0 | b1 | 0 | 0 | 0 |  r1 | 0 | 0 | 0 |  g1 | 0 | 0 | 0 | a1 ] 
punpckldq xmm2, xmm7   ; [ 0 |  0 | 0 | b2 | 0 | 0 | 0 |  r2 | 0 | 0 | 0 |  g2 | 0 | 0 | 0 | a2 ] 
punpckhdq xmm1, xmm7  ; [ 0 |  0 | 0 | b3 | 0 | 0 | 0 |  r3 | 0 | 0 | 0 |  g3 | 0 | 0 | 0 | a3 ] 
punpckldq xmm3, xmm7   ; [ 0 |  0 | 0 | b4 | 0 | 0 | 0 |  r4 | 0 | 0 | 0 |  g4 | 0 | 0 | 0 | a4 ] 
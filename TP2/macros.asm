%macro multipush 1-* 
  sub rsp, 16*%0
  %assign i 0
  %rep  %0
    movdqa  [rsp+16*i], %1
  %rotate 1
  %assign i i+1
  %endrep
%endmacro
%macro push_xmm_all 0
multipush XMM0,XMM1,XMM2,XMM3,XMM4,XMM5,XMM6,XMM7,XMM8,XMM9,XMM10,XMM11,XMM12,XMM13,XMM14,XMM15
%endmacro
%macro multipop 1-*
  %assign i 0
  %rep  %0
    movdqa %1, [rsp+16*i]
  %rotate 1
  %assign i i+1
  %endrep
  add rsp, 16*%0 
%endmacro
%macro pop_xmm_all 0
multipop XMM0,XMM1,XMM2,XMM3,XMM4,XMM5,XMM6,XMM7,XMM8,XMM9,XMM10,XMM11,XMM12,XMM13,XMM14,XMM15
%endmacro
%macro push_xmm 1
sub     rsp, 16
movdqu  [rsp], xmm%1
%endmacro

%macro pop_xmm 1

movdqu  xmm%1,[rsp]
add     rsp, 16
%endmacro
%macro printear_reg 2
PUSH RAX
MOV RDI, es_int
MOV RSI, %1
MOV RDX,%2
push_xmm_all
call printf 
pop_xmm_all
POP RAX
%endmacro
%macro printear_char 3 
 MOV RDI, es_int
 MOV RSI,%1
 PEXTRB RDX , %2,%3
 PUSH RAX
 MOV RAX,1
 push_xmm_all
 call printf
 pop_xmm_all
 POP RAX
%endmacro

%macro printear_dword 3 
 MOV RDI, es_int
 MOV RSI,%1
 PEXTRD RDX , %2,%3
 PUSH RAX
 MOV RAX,1
 push_xmm_all
 call printf
 pop_xmm_all
 POP RAX
%endmacro
%macro printear_float 2
push RAX
push_xmm_all
 MOV RDI, es_h
 MOV RSI, %1
 MOVDQU XMM0,XMM%2 ;MOVDQU XMM1,[pchor]
 cvtss2sd xmm0,xmm0
 ;pand XMM0,xmm1
 
 MOV RAX,1
 push_xmm_all
 call printf
 pop_xmm_all
 ;pop_xmm_all
 POP RAX
%endmacro
%macro convert 1
 pand %1,[mask_2]   ;XMM8=[D0|0|0|0|D1|0|0|0|D2|0|0|0|D3|0|0|0]_0 si la mascara esta mal, es culpa de male por no darme bola, vacas de mierda
PSRLDQ %1,3	
CVTDQ2PS %1,%1		;XMM8=[D0|D1|D2|D3] (en floats)
%endmacro
%macro comper 3
CMPSS %1,%2,%3
MOVD EDX, %1
cmp EDX, 0xFFFFFFFF
%endmacro 



section .rodata:
es_int  DB"%c= %i",10,0
es_h  DB"float %c= %f",10,0
align 16
mask_2  DB 0x00,0x00,0x00,0xFF,0x00,0x00,0x00,0xFF,0x00,0x00,0x00,0xFF,0x00,0x00,0x00,0xFF

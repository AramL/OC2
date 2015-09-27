;default rel
global _diff_asm
global diff_asm
extern printf

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
multipush xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7,xmm8,xmm9,xmm10,xmm11,xmm12,xmm13,xmm14,xmm15
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
multipop xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7,xmm8,xmm9,xmm10,xmm11,xmm12,xmm13,xmm14,xmm15
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
push rax
MOV RDI, es_int
MOV RSI, %1
MOV rdx,%2
push_xmm_all
call printf 
pop_xmm_all
pop rax
%endmacro
section .rodata:
ALIGN 16
mask_5 DB 2,2,2,2,6,6,6,6,10,10,10,10,14,14,14,14
trans_2 DB 0,0,0,255,0,0,0,255,0,0,0,255,0,0,0,255
es_int  DB"%c= %i",10,0
;section .data



section .text
;void diff_asm    (
    ;unsigned char *src,  rdi
    ;unsigned char *src2, rsi
    ;unsigned char *dst,  rdx
    ;int filas, ecx
    ;int cols)  r8d

;_diff_asm:
diff_asm:
push rbp                 
mov rbp, rsp
push r15
push r12
push r13

mov r12, rdx
mov eax, r8d
mov ecx, ecx
mul rcx
;shl rdx, 32
;add rax, rdx
xor r15, r15
.ciclo:
    cmp r15, rax
    JE .fin

    movdqu xmm3 , [RDI +  r15*4]    ;xmm3= [-R0-|G0|B0|A0|-R1-|G1|B1|A1|-R2-|G2|B2|A2|-R3-|G3|B3|A3]_0  
    movdqu xmm15, [RSI +  r15*4]    ;xmm15= [-R0-|G0|B0|A0|-R1-|G1|B1|A1|-R2-|G2|B2|A2|-R3-|G3|B3|A3]_0 de la segunda immagen
    movdqu xmm14, xmm15             ; back upeo xmm15 para usar ese valor despues
    pminub xmm15, xmm3              ;aca tiene minimo entre R_src1 y R_src2 para cada uno
    pmaxub xmm3 , xmm14             ; aca el maximo
    psubb  xmm3 , xmm15              ;max(a,b)    - min(a,b) = mod(a-b)
                                    ;xmm3=[]
    movdqu xmm4, xmm3 
    movdqu xmm5, xmm3       
    pslldq xmm4, 1                  ;xmm4= [-G0-|B0|A0|R1|-G1-|B1|A1|R2|-G2-|B2|A2|R3|-G3-|B3|A3|0]_0
    pslldq xmm5, 2                  ;xmm5= [-B0-|A0|R1|G1|-B1-|A1|R2|G2|-B2-|A2|R3|G3|-B3-|A3|0|0]_0
    movdqu xmm6, xmm5               ;xmm6= [-B0-|A0|R1|G1|-B1-|A1|R2|G2|-B2-|A2|R3|G3|-B3-|A3|0|0]_0
    pmaxub xmm6, xmm4               ;xmm6=[max(R0,G0)|@@|@@|@@|max(R1,G1)|@@|@@|@@|max(R2,G2)|@@|@@|@@|max(R3,G3)|@@|@@|@@]_0      @@ = basura
    pmaxub xmm6, xmm3               ;xmm6=[max(R0,G0,B0)|+@@|+@@|+@@|max(R1,G1,B1)|+@@|+@@|+@@|max(R2,G2,B2)|+@@|+@@|+@@|max(R3,G3,B3)|+@@|+@@|+@@]_0  +@@ = màs basura :D
    pshufb xmm6, [mask_5] 
    paddsb xmm6, [trans_2]
    movdqu [r12 +  r15*4], xmm6
    add  r15d, 4
    jmp .ciclo

.fin:
pop r13
pop r12
pop r15
pop rbp
ret

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
section .rodata:
ALIGN 16
mask_2 DB 15,15,15,15,11,11,11,11,7,7,7,7,5,5,5,5
mask_1 DB 5,5,5,5,7,7,7,7,11,11,11,11,15,15,15,15

trans DB 255,0,0,0,255,0,0,0,255,0,0,0,255,0,0,0
trans_2 DB 0,0,0,255,0,0,0,255,0,0,0,255,0,0,0,255
trans_3 DB 0,0,255,0,0,0,255,0,0,0,255,0,0,0,255,0
trans_4 DB 0,255,0,0,0,255,0,0,0,255,0,0,0,255,0,0
tarta DB 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15
es_int 	DB"%c= %i",10,0
;section .data



section .text
;void diff_asm    (
	;unsigned char *src, RDI
    ;unsigned char *src2,RSI
	;unsigned char *dst, RDX
	;int filas, ECX 
	;int cols)  R8d

;_diff_asm:
diff_asm:
PUSH RBP				 
MOV RBP, RSP

XOR RAX,RAX
MOV R12, RDX

MOV RAX,R8
MUL ECX

shl RDX, 32
add RAX,RDX
XOR R15,R15
.ciclo:
	CMP R15,RAX
	JE .fin


	MOVDQU XMM3, [RDI +  R15*4]		;XMM3= [-R0-|G0|B0|A0|-R1-|G1|B1|A1|-R2-|G2|B2|A2|-R3-|G3|B3|A3]_0	
	MOVDQU XMM15, [RSI +  R15*4]	;XMM15= [-R0-|G0|B0|A0|-R1-|G1|B1|A1|-R2-|G2|B2|A2|-R3-|G3|B3|A3]_0	de la segunda immagen
	MOVDQU XMM14,XMM15				; back upeo XMM15 para usar ese valor despues
	PMINUB XMM15,XMM3				;aca tiene minimo entre R_src1 y R_src2 para cada uno
	PMAXUB XMM3,XMM14				; aca el maximo
	PSUBB XMM3,	XMM15				;max(a,b)	 - min(a,b) = mod(a-b)

	MOVDQU XMM4, XMM3 
	MOVDQU XMM5, XMM3 		
	PSLLDQ XMM4, 1			;XMM4= [-G0-|B0|A0|R1|-G1-|B1|A1|R2|-G2-|B2|A2|R3|-G3-|B3|A3|0]_0
	PSLLDQ XMM5, 2			;XMM5= [-B0-|A0|R1|G1|-B1-|A1|R2|G2|-B2-|A2|R3|G3|-B3-|A3|0|0]_0
	MOVDQU XMM6, XMM5		;XMM6= [-B0-|A0|R1|G1|-B1-|A1|R2|G2|-B2-|A2|R3|G3|-B3-|A3|0|0]_0
	PMAXUB XMM6, XMM4 		;XMM6=[max(R0,G0)|@@|@@|@@|max(R1,G1)|@@|@@|@@|max(R2,G2)|@@|@@|@@|max(R3,G3)|@@|@@|@@]_0      @@ = basura
	PMAXUB XMM6, XMM3 		;XMM6=[max(R0,G0,B0)|+@@|+@@|+@@|max(R1,G1,B1)|+@@|+@@|+@@|max(R2,G2,B2)|+@@|+@@|+@@|max(R3,G3,B3)|+@@|+@@|+@@]_0  +@@ = màs basura :D
	PSHUFB XMM6,[mask_1] 
	;PADDSB XMM6,[trans_4]
	MOVDQU  [R12 +  R15*4], XMM6
	add  R15d, 4
	jmp .ciclo

.fin:
POP RBP
RET

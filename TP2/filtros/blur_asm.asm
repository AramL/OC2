default rel
global _blur_asm
global blur_asm


section .data



section .text
;void blur_asm    (unsigned char *src,unsigned char *dst,int filas,int cols,float sigma,
    ;int radius)

;_blur_asm:
blur_asm:

;rdi=src rsi = dst rdx = filas rcx = cols r8 = radius xmm0 = sigma

;primer elemento = rdi + radio * (rcx + 1)
xor rax,rax
mov eax,r8d
inc rcx
mul rcx
shl rax,2
add rdi,rax
;estoy parado en el elemento primero a calcular en rdi


;--------------------------------;




;ciclo


movdqu xmm0,[rdi] ;levanto 4 pixeles
	;XMM0= [-R0-|G0|B0|A0|-R1-|G1|B1|A1|-R2-|G2|B2|A2|-R3-|G3|B3|A3]	
	pxor   xmm11,xmm11 ;xmm11 va a ser una mascara de 0, para extender el signo	
	;XMM11= [0000-0000-0000-0000]	
	movdqu xmm1,xmm0  ; duplico lo que levante a xmm1
	;XMM1= [-R0-|G0|B0|A0|-R1-|G1|B1|A1|-R2-|G2|B2|A2|-R3-|G3|B3|A3]	
	punpcklbw xmm0,xmm11 ;muevo los bytes bajos de xmm0, y les extendiendo los 0 a dw
	;XMM0= 0|x|0|x|----|0|x|0|x|----|0|x|0|x|----|0|x|0|x	
	punpckhbw xmm1,xmm11 ;muevo los bytes altos de xmm1, y les extendiendo los 0 a dw
	;XMM1= 0|x|0|x|----|0|x|0|x|----|0|x|0|x|----|0|x|0|x	
	movdqu xmm2,xmm0 ;duplico lo que tengo en xmm0
	;XMM2= 0|x|0|x|----|0|x|0|x|----|0|x|0|x|----|0|x|0|x	
	punpckhwd xmm2,xmm11 ;muevo 16 bytes bajos de xmm2 y les extiendo el signo
    ;XMM2= 0|0|0|x|----|0|0|0|x|----|0|0|0|x|----|0|0|0|x	
    movdqu xmm3,xmm1 ;duplico lo que tengo en xmm1
	;XMM3= 0|x|0|x|----|0|x|0|x|----|0|x|0|x|----|0|x|0|x	
    punpckhwd xmm3,xmm11 ;muevo 16 bytes altos de xmm3 y les extiendo el signo
    ;XMM3= 0|0|0|x|----|0|0|0|x|----|0|0|0|x|----|0|0|0|x
    punpcklwd xmm0,xmm11 ;muevo 16 bytes bajos de xmm0 y les extiendo el signo
    ;XMM0= 0|0|0|x|----|0|0|0|x|----|0|0|0|x|----|0|0|0|x    
    punpcklwd xmm1,xmm11 ;muevo 16 bytes bajos de xmm1 y les extiendo el signo
    ;XMM1= 0|0|0|x|----|0|0|0|x|----|0|0|0|x|----|0|0|0|x    
    ;ya tengo todo el double words integers, ahora convierto a float
    cvtdq2ps xmm0,xmm0
    cvtdq2ps xmm1,xmm1
    cvtdq2ps xmm2,xmm2
    cvtdq2ps xmm3,xmm3
    ;ahora puedo operar
    
    ;fin operar
    
    ;desempaquetar
    
    ;convierto de double a double word integer
    cvttps2dq xmm0,xmm0
    cvttps2dq xmm1,xmm1
    cvttps2dq xmm2,xmm2
    cvttps2dq xmm3,xmm3
    ;convierto de dw int a w int
    packusdw xmm0,xmm2
    packusdw xmm1,xmm3
    packuswb xmm0,xmm1
    
    movdqu [rsi],xmm0
    
    ;fin ciclo
    


	ret

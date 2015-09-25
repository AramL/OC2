default rel
global _blur_asm
global blur_asm


section .data



section .text
;void blur_asm    (unsigned char *src,unsigned char *dst,int filas,int cols,float sigma,
    ;int radius)
;r12 va a estar la matrix creada en c++
;_blur_asm:
blur_asm:

	push	rbp
	mov	rbp,rsp
	push	rbx
	push	r12
	push	r13
	push	r14
	push	r15
	sub	rsp,8



;rdi=src rsi = dst rdx = filas rcx = cols r8 = radius xmm0 = sigma
		;mov rsp,rcx
;r15 = x de la posicion calculando actual	
	xor r15,r15
	mov r15d,r8d
;r14 es la posicion y de nuestro calculando actual
	xor r14,r14
	mov r14d,r8d 
	mov r13,r8
	shl r13,1
	inc r13 ;diametro
	mov rbx,rdx ;filas
	mov r13,rcx ; columnas
.principio:
	mov r12,rdi ;r12 va a ser el puntero a la matriz original
	mov rcx,r14 ;posicion en Y
	sub rcx,r8 ;radio
	xor rax,rax
	mov eax,r8d ;radio
	mul rcx
	add rax,r15
	sub rax,r8 ;le resto el radio 
	shl rax,2 ;multiplico por 4
	add r12,rax ;r12 es el puntero a primer valor
	;mov r5, rax editar esto no tengo convolucion todavia
	pxor xmm2,xmm2
	cvtdq2ps xmm2,xmm2 ;esto es un 0 float
	xor r11,r11 ; va a ser el puntero a convolucion x
	xor r10,r10 ;va a ser el contador a convolucion y
.empezarACalcular:
	
	
	
	
	
	;movdqu xmm0,[r12] ;primer original
	;movdqu xmm1,r9  ;valor conv todavia no tengo conv
 	;desempaqueto y multiplico
	addps xmm2,xmm4 ;agrego el primer valor
	inc r11 ;incremento puntero en x
	mov rcx,r8
	shl rcx,1
	inc rcx ;diametro
	cmp r11,rcx ;comparo con diametro
	jne .noLLegoAlDiametroEnElPrimerNodo
	inc r10 ;incremento puntero a y
	cmp r10,rcx ;comparo con diametro
	je .termine
	xor rax,rax ;agrego un pixel a la matriz de conv
	inc rax
	shl rax,2
	add r9,rax ;agregue un pixel a la matriz conv (proximo)
	mov rax,rdx ;muevo columnas a r9
	sub rax,rcx ;le resto el diametro
	shl rax,2
	add r12,rax ; voy al proximo valor de la matriz original
	xor r11,r11
	jmp .empezarACalcular
.noLLegoAlDiametroEnElPrimerNodo:	
	addps xmm2,xmm5 ;agrego el segundo valor
	inc r11 ;incremento puntero en x
	cmp r11,rcx ;comparo con diametro
	jne .noLLegoAlDiametroEnElSegundoNodo
	inc r10 ;incremento puntero a y
	cmp r10,rcx ;comparo con diametro
	je .termine
	xor rax,rax ;agrego un pixel a la matriz de conv
	inc rax
	inc rax
	shl rax,2
	add r9,rax ;agregue un dos a la matriz conv (proximo)
	mov rax,rdx ;muevo columnas a r9
	sub rax,rcx ;le resto el diametro
	shl rax,2
	inc rax 
	add r12,rax ; voy al proximo valor de la matriz original
	xor r11,r11
	jmp .empezarACalcular
.noLLegoAlDiametroEnElSegundoNodo:
	addps xmm2,xmm6 ;agrego el primer valor
	inc r11 ;incremento puntero en x
	cmp r11,rcx ;comparo con diametro
	jne .noLLegoAlDiametroEnElTercerNodo
	inc r10 ;incremento puntero a y
	cmp r10,rcx ;comparo con diametro
	je .termine
	xor rax,rax ;agrego tres pixeles a la matriz de conv
	inc rax
	inc rax
	inc rax
	shl rax,2
	add r9,rax ;agregue tres pixeles a la matriz conv (proximo)
	mov rax,rdx ;muevo columnas a r9
	sub rax,rcx ;le resto el diametro
	inc rax
	inc rax ;le agrego 2 pixeles
	shl rax,2
	add r12,rax ; voy al proximo valor de la matriz original
	xor r11,r11
	jmp .empezarACalcular
.noLLegoAlDiametroEnElTercerNodo:
	addps xmm2,xmm7 ;agrego el primer valor
	inc r11 ;incremento puntero en x
	cmp r11,rcx ;comparo con diametro
	jne .noLLegoAlDiametroEnElCuartoNodo
	inc r10 ;incremento puntero a y
	cmp r10,rcx ;comparo con diametro
	je .termine
	xor rax,rax ;agrego cuatro pixel a la matriz de conv
	inc rax
	shl rax,4
	add r9,rax ;agregue cuatro pixeles a la matriz conv (proximo)
	mov rax,rdx ;muevo columnas a r9
	sub rax,r13 ;le resto el diametro
	inc rax
	inc rax
	inc rax
	shl rax,2
	add r12,rax ; voy al proximo valor de la matriz original
	xor r11,r11
	jmp .empezarACalcular
.noLLegoAlDiametroEnElCuartoNodo:
	xor rax,rax ;agrego cuatro pixel a la matriz de conv
	inc rax
	shl rax,4
	add r9,rax ;agregue cuatro pixeles a la matriz conv (proximo)
	add r12,rax
	jmp .empezarACalcular
.termine:
	;pixel(punteroOriginalX,punteroOriginalY) = contadores
	;r14 = y r15 = x
	xor rax,rax
	mov eax,ebx ;columnas
	mov rcx,r14 ;posicion en y
	mul rcx 
	add rax,r15 ;posicion en x
	shl rax,2 ;pos
	mov r11,rdi ;src
	mov r12,rsi ;dest
	add r11,rax
	add r12,rax
	;----------------;
	;mov r10d,[r11]
	xor r10,r10
	mov [r12],r10d
	;----------------;
	inc r15 ;puntero a x
	mov rax,r13 ;columnas
	sub rax,r8 ;radio
	cmp r15,rax	;final
	jne .principio
	inc r14 ;puntero a y
	mov r15,r8 ;radio
 	mov rax,rbx ;filas
 	sub rax,r8 ;radio
	cmp r14,rax ;alto
	je .terminePosta
	;mov r15,r8 
	jmp .principio
.terminePosta:


	add	rsp,8
	pop	r15
	pop	r14
	pop	r13
	pop	r12
	pop	rbx
	pop	rbp

	ret

extern matrizDeConvolucion
extern free

default rel
global _blur_asm
global blur_asm


%define NULL        0
%define pixel_size  4
section .data

section .text
;void blur_asm    (
    ;unsigned char *src,      // rdi
    ;unsigned char *dst,      // rsi
    ;int filas,               // rdx
    ;int cols,                // rcx
    ;float sigma,             // r8
    ;int radius)              // r9

_blur_asm:
blur_asm:
    push rbp
    mov  rbp,rsp
    push rbx
    push r12
    push r13
    push r14
    push r15
    sub  rsp,8
    
;rdi=src rsi = dst rdx = filas rcx = cols r8 = radius xmm0 = sigma
;voy a hacer una unica llamada a c para conseguir la matriz

    

    mov r12,rdi
    mov r13,rsi
    mov r14,rdx
    mov r15,rcx
    mov rbx,r8
    
    mov rdi,r8
    call matrizDeConvolucion
    mov rdi,r12
    mov rsi,r13
    mov rdx,r14
    mov rcx,r15
    mov r8,rbx
    mov r9,rax



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
    pxor xmm2,xmm2
    cvtdq2ps xmm2,xmm2 ;esto es un 0 float
    xor r11,r11 ; va a ser el puntero a convolucion x
    xor r10,r10 ;va a ser el contador a convolucion y
    pxor xmm5,xmm5
    cvtdq2ps xmm5,xmm5 ;esto es un 0 float
.empezarACalcular:
    ;Calculo la posicion a partir de la direccion de memoria de la matriz original en rdi
    mov rcx,r14 ;posicion actual convolucion y
    sub rcx,r8 ;radio
    add rcx,r10 ;puntero a y
    mov rax,r13
    mul rcx
    mov rcx,r15
    sub rcx,r8
    add rcx,r11;puntero a x
    add rax,rcx
    shl rax,2
    mov r12,rdi
    add r12,rax
    ;ya tengo la posicion aca calculada
    movdqu xmm0,[r12]   ;levanto 4 pixeles de la matriz original
    ;xmm0  = [b1 | r1 | g1 | a1 | b2 | r2 | g2 | a2 | b3 | r3 | g3 | a3 | b4 | r4 | g4 | a4]
    pxor xmm7, xmm7
    movdqu xmm1, xmm0
    punpckhbw xmm0, xmm7 ; [ 0 | b1 |  0  | r1 |  0  | g1 |  0 | a1 |  0 | b2 |  0 | r2 |  0 | g2 | 0 | a2 ]
    punpcklbw xmm1, xmm7  ; [ 0 | b3 |  0  | r3 |  0  | g3 |  0 | a3 |  0 | b4 |  0 | r4 |  0 | g4 | 0 | a4 ]
    movdqu xmm2, xmm0
    movdqu xmm3, xmm1
    punpckhwd xmm0, xmm7  ; [ 0 |  0 | 0 | b1 | 0 | 0 | 0 |  r1 | 0 | 0 | 0 |  g1 | 0 | 0 | 0 | a1 ] 
    punpcklwd xmm2, xmm7   ; [ 0 |  0 | 0 | b2 | 0 | 0 | 0 |  r2 | 0 | 0 | 0 |  g2 | 0 | 0 | 0 | a2 ] 
    punpckhwd xmm1, xmm7  ; [ 0 |  0 | 0 | b3 | 0 | 0 | 0 |  r3 | 0 | 0 | 0 |  g3 | 0 | 0 | 0 | a3 ] 
    punpcklwd xmm3, xmm7   ; [ 0 |  0 | 0 | b4 | 0 | 0 | 0 |  r4 | 0 | 0 | 0 |  g4 | 0 | 0 | 0 | a4 ]
    cvtdq2ps xmm0,xmm0
    cvtdq2ps xmm1,xmm1
    cvtdq2ps xmm2,xmm2 
    cvtdq2ps xmm3,xmm3
    ;posicion en convolucion, voy a usar para levantar 4 floats
    mov rcx,r8
    shl rcx,1
    inc rcx ;diametro
    mov r12,r9 ;matrix de conv
    mov rax,r10 ;posicion en y
    mul rcx
    add rax,r11 ;posicion en x
    shl rax,2
    add r12,rax
    ;posicion en convolucion
    movdqu xmm4,[r12] ;levanto 4 floats
    pshufd xmm6,xmm4,0 
    mulps xmm6,xmm0
    mov rcx,r8
    shl rcx,1
    inc rcx ;diametro
    ;desempaqueto y multiplico
    addps xmm5,xmm6 ;agrego el primer valor
    inc r11 ;incremento puntero en x
    cmp r11,rcx ;comparo con diametro
    jne .noLLegoAlDiametroEnElPrimerNodo
    inc r10 ;incremento puntero a y
    cmp r10,rcx ;comparo con diametro
    je .termine
    xor r11,r11
    jmp .empezarACalcular
.noLLegoAlDiametroEnElPrimerNodo:   
    pshufd xmm6,xmm4,85 
    mulps xmm6,xmm1
    addps xmm5,xmm6 ;agrego el segundo valor
    inc r11 ;incremento puntero en x
    cmp r11,rcx ;comparo con diametro
    jne .noLLegoAlDiametroEnElSegundoNodo
    inc r10 ;incremento puntero a y
    cmp r10,rcx ;comparo con diametro
    je .termine
    xor r11,r11
    jmp .empezarACalcular
.noLLegoAlDiametroEnElSegundoNodo:
    pshufd xmm6,xmm4,170
    mulps xmm6,xmm2
    addps xmm5,xmm6 ;agrego el segundo valor
    addps xmm2,xmm6 ;agrego el primer valor
    inc r11 ;incremento puntero en x
    cmp r11,rcx ;comparo con diametro
    jne .noLLegoAlDiametroEnElTercerNodo
    inc r10 ;incremento puntero a y
    cmp r10,rcx ;comparo con diametro
    je .termine
    xor r11,r11
    jmp .empezarACalcular
.noLLegoAlDiametroEnElTercerNodo:
    pshufd xmm6,xmm4,255
    mulps xmm6,xmm2
    addps xmm5,xmm6 ;agrego el segundo valor
    inc r11 ;incremento puntero en x
    cmp r11,rcx ;comparo con diametro
    jne .empezarACalcular
    inc r10 ;incremento puntero a y
    cmp r10,rcx ;comparo con diametro
    je .termine
    xor r11,r11
    jmp .empezarACalcular
.termine:
    ;pixel(punteroOriginalX,punteroOriginalY) = contadores
    ;r14 = y r15 = x
    CVTTPS2DQ xmm5,xmm5
    packusdw xmm5,xmm5
    packuswb xmm5,xmm5
    pextrd r10d,xmm5,0
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
    mov [r12],r10d
    xor rax,rax
    mov [r12+3],al
    ;----------------;
    inc r15 ;puntero a x
    mov rax,r13 ;columnas
    sub rax,r8 ;radio
    cmp r15,rax ;final
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

    mov rdi,r9
    call free

    add rsp,8
    pop r15
    pop r14
    pop r13
    pop r12
    pop rbx
    pop rbp

    ret

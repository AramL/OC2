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
    mov  rbp, rsp
    push r12
    push r13
    push r14
    push r15
    push rbx
    sub rsp, 8

    xor r14, r14
    xor r15, r15
    xor rbx, rbx

    mov r12, rdi                     ;unsigned char *src
    mov r13, rsi                     ;unsigned char *dst
    mov r14d, edx                     ;int filas,     
    mov r15d, ecx                     ;int cols
    mov ebx, r8d                     ;int radius
   

    mov  edi, r8d
    call matrizDeConvolucion         ;
    mov r10, rax                     ; r10 apunta al kernel
    ; rdi = src, rsi = dst, rdx = filas, rcx = cols, r10 = filas * columnas 
    ; r11 = 2radius + 1,  rax = kernel
    ; como la matriz de convolucion tiene altura y longitud   radius * 2 +1
    mov r11, rbx                     ; r11 = rad
    shl r11, 1                       ; rad * 2
    inc r11                          ; rad * 2 + 1

    ;Si la matriz de kernel es mas grande que la matriz salto al final
    ;cmp r14, r11
    ;jl  .end

    ;multiplicamos con registros de 64 bits
    ;como lo que multiplicamos esta en la parte baja (32 bits) 
    ;y la parte alta esta con 0's tenemos el resultado de la mult en la parte baja de rdx:rax osea en rax.
    mov rax, r11
    mul r11                          ;es decir rax = (2radius+1)^2

    push rbp
    mov rbp, rax
    
    shr rax, 1                       ;rax = (2r+1)^2/2
    inc rax                          ;rax me dice en que parte de la memoria tengo que guardar
    
    mov rbx, rax

    mov r9, r15                      ;r9 tiene el ancho
    sub r9, r11                      ;r9 = filas - 2r+1, es decir hasta donde voy a iterar verticalmente

    mov r8, r14
    sub r8, r11                      ;r8 = columnas - 2r+1 hasta donde voy a iterar horizontalmente

    mov rax, r9
    mul r8                           ;rax = filas - 2r+1 * cols - 2r+1, me dice hasta donde tengo que iterar

    xor rdi, rdi                     ;voy a usar rdi e rsi para iterar sobre la matriz y el kernel
    xor rsi, rsi    
    xor rdx, rdx
    xor rcx, rcx
    xor r14, r14
    

.ciclo_matriz:
    cmp rdi, rax                     ;si rdi es igual a ancho - 2r+1 * alto - 2r+1 terminamos de iterar
    je .end

.ciclo_kernel:
    cmp rcx, rbp                     ;comparo si ya recorri toda la matriz de kernel
    je .insert                       ;en tal caso inserto a memoria
    mov r9, rsi                      ;aca preparo el offset para levantar de memoria
    add r9, rdi                      ;rdi dice en que pixel estoy parado y rsi itera la columna

    movd         xmm0, [ r12 + r9 ]     ;muevo el primer dword (4 bytes para un pixel)
    pxor           xmm8, xmm8
    punpcklbw xmm0, xmm8             ; xmm0         = [ 0000   | 0000   | 0 | a_k | 0 | g_k | 0 | r_k | 0 | b_k ]
    punpcklwd xmm0, xmm8             ; xmm0         = [ 000a_k | 000g_k | 0 | 0   | 0 | r_k | 0 | 0   | 0 | b_k ]
    cvtdq2ps    xmm0, xmm0               ;(float) xmm0 = [ 000a_k | 000g_k | 0 | 0   | 0 | r_k | 0 | 0   | 0 | b_k ] 
    movd         xmm1, [ r10 + rcx*4 ]       ;copio el primer float
    movq         xmm3, xmm1               ;xmm3 = float
    psrldq        xmm3, 4
    paddd        xmm3, xmm1               ;xmm3 =          [0000 |         |    float   |        float]
    psrldq        xmm3, 4
    paddd        xmm3, xmm1              ;xmm3 =        [0 | float | float | float]
    ;punpcklbw xmm1, xmm8             ; xmm1         = [ 0000   | 0000   | 0 | a_m | 0 | g_m | 0 | r_m | 0 | b_m ]
    ;punpcklwd xmm1, xmm8             ; xmm1         = [ 000a_m | 000g_m | 0 | 0   | 0 | r_m | 0 | 0   | 0 | b_m ]
    cvtdq2ps  xmm1, xmm1             ; (float) xmm1 = [ 000a_m | 000g_m | 0 | 0   | 0 | r_m | 0 | 0   | 0 | b_m ] 
    mulps     xmm0, xmm1             ; xmm0 * xmm1  = [ a_k*a_m| g_k*g_m| r_k*r_m | a_k*a_m ]

    addps     xmm2, xmm0             ;


;sumar columna kernel
;si rdx es igual a la longitud de la columna del kernel (2r+1)
;paso a la siguiente fila en .sumar_fila_kernel
;sino agrego uno a rcx, rdx, rsi.
;rcx = offset kernel, rdx = contador, rsi = offset de la matriz contra el kernel
    cmp rdx, r11
    je .sumar_fila_kernel
    inc rdx
    inc rcx
    inc rsi
    jmp .ciclo_kernel


.sumar_fila_kernel:
    xor rdx, rdx
    sub rsi, r11                     ;rsi habia llegado al final, se lo resto y le sumo las columnas
    add rsi, r15                     ;rsi + columnas, ahora apunta al primer pixel de la proxima fila
    jmp .ciclo_kernel


.insert:
    cvtps2dq xmm1, xmm1             ;convierto a dw en xmm1
    packssdw xmm1, xmm1             ;empaqueto en words
    packsswb xmm1, xmm1,            ;empaqueto en bytes
    movd xmm7, ebp
    add rbp, rdi
    movd  [ r13 + rbp ], xmm1       ;muevo a memoria
    movd ebp, xmm7
    ; r14 itera sobre la fila, si es igual a ancho - 2r+1 agrego lo necesario para que la matriz apunte a la proxima fila
    ; si no sumo 4 (pixel_size) para poder obtener los proximos 4 bytes siguientes
    ;
    xor rsi, rsi
    xor rcx, rcx
    cmp r14, r8
    je .sumar_fila
    add rdi, pixel_size
    jmp .ciclo_matriz

.sumar_fila:
    ;paso a la siguiente fila
    ;en la matriz src y dst
    add rdi, r11
    xor r14, r14
    jmp .ciclo_matriz


.end:
    pop rbp
    mov rdi, r10
    call free

    add rsp, 8
    pop rbx
    pop r15
    pop r14
    pop r13
    pop r12
    pop rbp
    ret
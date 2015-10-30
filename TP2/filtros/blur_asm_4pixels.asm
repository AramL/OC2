extern matrizDeConvolucion
extern free

default rel
global _blur_asm
global blur_asm


%define NULL            0
%define pixel_size      4
%define pixel_size_four 16
section .data

section .text
;void blur_asm    (
    ;unsigned char *src,      // rdi
    ;unsigned char *dst,      // rsi
    ;int filas,               // rdx
    ;int cols,                // rcx
    ;float sigma,             // xmm0
    ;int radius)              // r8

_blur_asm:
blur_asm:
    push rbp
    push r12
    push r13
    push r14
    push r15
    push rbx
    sub rsp, 8




    mov r12, rdi                     ;unsigned char *src
    mov r13, rsi                     ;unsigned char *dst
    
    ;Notar que no hace falta poner r14, r15 y rbx en 0 ya que el mov entre registros de 32 bits extiende
    ;la parte alta a 0s, Intel Arch Dev Manual Vol 1, 3.4.1: 32-bit operands generate a 32-bit result,
    ;zero-extended to a 64-bit result in the destination general-purpose register.

    mov r14d, edx                    ;int filas,     
    mov r15d, ecx                    ;int cols
    mov ebx, r8d                     ;int radius
   

    mov  edi, r8d                    ;ponemos en edi el radio del kernel
    ;notar que el sigma ya esta en xmm0 por la signatura de la función original
    call matrizDeConvolucion         
    mov r10, rax                     ; r10 apunta al kernel

    ;En este punto tenemos lo siguiente
    ; r12 = src, r13 = dst, rdx(edx) = filas, rcx(ecx) = cols, r10 = kernel 
    ; r11 = 2radius + 1,  rax = kernel
    ; como la matriz de convolucion tiene altura y longitud   radius * 2 +1
    mov r11, rbx                     ; r11 = rad
    shl r11, 1                       ; rad * 2
    ;inc r11                          ; rad * 2 + 1

    ;Si la matriz de kernel es mas grande (ancho u alto) que la matriz salto al final
    cmp r14, r11
    jl .end
    cmp r15, r11
    jl .end

    ;multiplicamos con registros de 64 bits
    ;como lo que multiplicamos esta en la parte baja (32 bits) 
    ;y la parte alta esta con 0's tenemos el resultado de la mult en la parte baja de rdx:rax osea en rax.
    inc r11
    mov rax, r11
    mul r11                          
    ;rax = (2radius+1)^2 que es equivalente a lo que vamos a iterar por cada pixel sobre el kernel

    ;Uso rbp ya que no quiero que usar ninguna variable pusheada por stack ni variables locales
    mov rbp, rax
    ;dec r11

    mov rax, rbx                        ;rax = radius
    mul r15d                            ;rdx:rax = radius * cols
    ;de vuelta como multiplico dos numeros de 32 bits el resultado esta en rax.
    
    add rax, rbx                        ;rax = radius * cols + radius

    mov rbx, rax

    ;Basicamente rbx marca el lugar a memoria donde tengo que offsetear para escribir en la matriz dst


    mov r9, r14                          ;r9 tiene el alto
    ;sub r9, r11                         ;r9 = filas - 2r+1, es decir hasta donde voy a iterar verticalmente
    mov r8, r15
    ;sub r8, r11                         ;r8 = columnas - 2r hasta donde voy a iterar horizontalmente
    
    ;dec r8
    ;dec r9


    dec r11
    mov rax, r9
    sub rax, r11
    mul r8                              ;rax = filas - (2r+1) * cols - (2r+1), me dice hasta donde tengo que iterar
    sub rax, r11
    ;dec rax                             ;rax = (filas-(2r+1) * cols)-(2r+1)
    shl rax, 2                          ;4*rax
    xor rdi, rdi                        ;voy a usar rdi e rsi para iterar sobre la matriz y el kernel
    xor rsi, rsi    
    xor rdx, rdx
    xor rcx, rcx
    ;xor r14, r14
    pxor xmm7, xmm7
    mov r14, r15                        ;r14 = cols
    sub r15, r11                        ;cols -2r+1
    ;sub r15, r11
    ;xor r9, r9
    shl r11, 2
    shl r8, 2
    shl rbx, 2
    shl r15, 2
    shl r14, 2

.ciclo_matriz:
    cmp rdi, rax                        ;si rdi es igual a ((ancho - 2r+1) * alto) - 2r+1 terminamos de iterar
    jg .end

.ciclo_kernel:
    cmp rcx, rbp                        ;comparo si ya recorri toda la matriz de kernel
    je .insert                          ;en tal caso inserto a memoria
    mov r9, rsi                         ;aca preparo el offset para levantar de memoria
    add r9, rdi                         ;rdi dice en que pixel estoy parado y rsi itera la columna

    pxor        xmm8, xmm8
    movd        xmm0, [ r12 + r9 ]      ;muevo el primer dword (4 bytes para un pixel)
  
    punpcklbw   xmm0, xmm8              ; xmm0         = [ 0000   | 0000   | 0 | a_k | 0 | g_k | 0 | r_k | 0 | b_k ]
    punpcklwd   xmm0, xmm8              ; xmm0         = [ 000a_k | 000g_k | 0 | 0   | 0 | r_k | 0 | 0   | 0 | b_k ]
    cvtdq2ps    xmm0, xmm0              ;(float) xmm0  = [ 000a_k | 000g_k | 0 | 0   | 0 | r_k | 0 | 0   | 0 | b_k ] 
    
    movd        xmm4, [r12 + r9 + 4]
    punpcklbw   xmm4, xmm8              ; xmm4         = [ 0000   | 0000   | 0 | a_k | 0 | g_k | 0 | r_k | 0 | b_k ]
    punpcklwd   xmm4, xmm8              ; xmm4         = [ 000a_k | 000g_k | 0 | 0   | 0 | r_k | 0 | 0   | 0 | b_k ]
    cvtdq2ps    xmm4, xmm4              ;(float) xmm4  = [ 000a_k | 000g_k | 0 | 0   | 0 | r_k | 0 | 0   | 0 | b_k ] 

    movd        xmm5, [r12 + r9 + 8]
    punpcklbw   xmm5, xmm8              ; xmm5         = [ 0000   | 0000   | 0 | a_k | 0 | g_k | 0 | r_k | 0 | b_k ]
    punpcklwd   xmm5, xmm8              ; xmm5         = [ 000a_k | 000g_k | 0 | 0   | 0 | r_k | 0 | 0   | 0 | b_k ]
    cvtdq2ps    xmm5, xmm5              ;(float) xmm5  = [ 000a_k | 000g_k | 0 | 0   | 0 | r_k | 0 | 0   | 0 | b_k ] 


    movd        xmm6, [r12 + r9 + 12]
    punpcklbw   xmm6, xmm8              ; xmm6         = [ 0000   | 0000   | 0 | a_k | 0 | g_k | 0 | r_k | 0 | b_k ]
    punpcklwd   xmm6, xmm8              ; xmm6         = [ 000a_k | 000g_k | 0 | 0   | 0 | r_k | 0 | 0   | 0 | b_k ]
    cvtdq2ps    xmm6, xmm6              ;(float) xmm6  = [ 000a_k | 000g_k | 0 | 0   | 0 | r_k | 0 | 0   | 0 | b_k ] 


    movd        xmm1, [ r10 + rcx*4 ]   ;copio el primer float
    movq        xmm3, xmm1              ;xmm3 = float
    pslldq      xmm3, 4
    paddd       xmm3, xmm1              ;xmm3 =          [0000 |         |    float   |        float]
    pslldq      xmm3, 4
    paddd       xmm3, xmm1              ; xmm3         = [0 | float | float | float]
    ;cvtdq2ps    xmm1, xmm1              ; (float) xmm1 = [ 000a_m | 000g_m | 0 | 0   | 0 | r_m | 0 | 0   | 0 | b_m ] 
    mulps       xmm0, xmm3              ; xmm0 * xmm1  = [ a_k*a_m| g_k*g_m| r_k*r_m | a_k*a_m ]
    mulps       xmm4, xmm3
    mulps       xmm5, xmm3
    mulps       xmm6, xmm3

    addps       xmm2, xmm0              
    addps       xmm7, xmm4
    addps       xmm9, xmm5
    addps       xmm10, xmm6

;sumar columna kernel
;si rdx es igual a la longitud de la columna del kernel (2r)
;paso a la siguiente fila en .sumar_fila_kernel
;sino agrego uno a rcx, rdx, rsi.
;rcx = offset kernel, rdx = contador, rsi = offset de la matriz contra el kernel
    cmp rdx, r11
    je .sumar_fila_kernel
    add rdx, pixel_size
    inc rcx
    add rsi, pixel_size
    jmp .ciclo_kernel

.sumar_fila_kernel:
    xor rdx, rdx
    sub rsi, r11                       ;rsi habia llegado al final, se lo resto y le sumo las columnas
    ;sub rsi, 4
    add rsi, r8                         ;rsi + columnas, ahora apunta al primer pixel de la proxima fila
    inc rcx
   
    jmp .ciclo_kernel

.insert:




    pxor     xmm8, xmm8
    movd     xmm8, ebx
    add      rbx, rdi

    cvtps2dq xmm2, xmm2                 ;convierto a dw en xmm2
    packusdw xmm2, xmm8                 ;empaqueto en words
    packuswb xmm2, xmm8                 ;empaqueto en bytes

    movd     [ r13 + rbx ], xmm2           ;muevo a memoria

    cvtps2dq xmm7, xmm7                 ;convierto a dw en xmm7
    packusdw xmm7, xmm8                 ;empaqueto en words
    packuswb xmm7, xmm8                 ;empaqueto en bytes

    movd     [ r13 + rbx + 4], xmm7           ;muevo a memoria

    cvtps2dq xmm9, xmm9                 ;convierto a dw en xmm9
    packusdw xmm9, xmm8                 ;empaqueto en words
    packuswb xmm9, xmm8                 ;empaqueto en bytes

    movd     [ r13 + rbx + 8], xmm9           ;muevo a memoria

    cvtps2dq xmm10, xmm10                 ;convierto a dw en xmm10
    packusdw xmm10, xmm8                 ;empaqueto en words
    packuswb xmm10, xmm8                 ;empaqueto en bytes

    movd     [ r13 + rbx + 12 ], xmm10           ;muevo a memoria

    movd     ebx, xmm8
    pxor     xmm8, xmm8
    ; r14 itera sobre la fila, si es igual a ancho - 2r+1 agrego lo necesario para que la matriz apunte a la proxima fila
    ; si no sumo 4 (pixel_size) para poder obtener los proximos 4 bytes siguientes
    xor rsi, rsi
    xor rcx, rcx
    cmp rdi, r15
    
    je .sumar_fila
    add rdi, pixel_size_four
    
    ;add r14, pixel_size
    jmp .ciclo_matriz

.sumar_fila:
    ;paso a la siguiente fila
    ;en la matriz src y dst
    add rdi, r11                    ; rdi siguiente fila
    add rdi, pixel_size_four
    ;sub rdi, 4
    ;add r15, r11
    add r15, r8                    ; r15 tamaño en cols de la siguiente fila
    ;xor r14, r14
    jmp .ciclo_matriz


.end:
    add rsp, 8
    pop rbx
    pop r15
    pop r14
    pop r13
    pop r12

    ;Como use rbp en el loop pongo el valor de rsp (just in case) y llamo a free
    mov rbp, rsp
    mov rdi, r10
    call free

    pop rbp
    ret
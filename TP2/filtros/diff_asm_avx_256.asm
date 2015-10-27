;default rel
global _diff_asm
global diff_asm


section .rodata:
ALIGN 32
mask db 3,3,3,3,7,7,7,7,11,11,11,11,15,15,15,15, 19,19,19,19,23,23,23,23,27,27,27,27,31,31,31,31
trans db 0,0,0,255,0,0,0,255,0,0,0,255,0,0,0,255,0,0,0,255,0,0,0,255,0,0,0,255,0,0,0,255


section .text
;void diff_asm    (
    ;unsigned char *src,       ;rdi
    ;unsigned char *src2,      ;rsi
    ;unsigned char *dst,       ;rdx
    ;int filas,                ;ecx
    ;int cols)                 ;r8d
_diff_asm:
diff_asm:
push rbp                 
mov rbp, rsp
push r12
push r13
push r14
sub rsp, 8

mov r12, rdx
;Mover registros de 32 bits (esto solo vale para 32 bits, con 16 y 8 no!), limpia los bits mas altos
;entonces al hacer mul rcx, tendriamos el resultado en rdx:rax, pero como los 32 mas altos de rax y rcx estan en 0,
;el resultado que queremos, osea la multiplicación esta en rax (reg de 32bits x reg de 32bits
;entra en 64bits). Esto nos ahorra hacer un shift de 32b y un add.
mov eax, r8d
mov ecx, ecx
mul rcx
xor r14, r14
.ciclo:
    cmp r14, rax
    JE .fin

    vmovdqu ymm3 , [rdi +  r14*4]    
    vmovdqu ymm15, [rsi +  r14*4]    
    vmovdqu ymm14, ymm15             
    vpminub ymm15, ymm15, ymm3           
    vpmaxub ymm3, ymm3, ymm14           
    vpsubb  ymm3, ymm3, ymm15              
                                  
    vmovdqu ymm4, ymm3 
    vmovdqu ymm5, ymm3       
    vpslldq ymm4, ymm4, 1                  
    vpslldq ymm5, ymm5, 2                  
    vmovdqu ymm6, ymm5               
    vpmaxub ymm6, ymm6, ymm4               
    vpmaxub ymm6, ymm6, ymm3               
    vpshufb ymm6, ymm6, [mask] 
    vpaddsb ymm6, ymm6, [trans]
    vmovdqu [r12 +  r14*4], ymm6
    add  r14d, 8
    jmp .ciclo

.fin:

add rsp, 8
pop r14
pop r13
pop r12
pop rbp
ret

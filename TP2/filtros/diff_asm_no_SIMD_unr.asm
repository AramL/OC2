;default rel
global _diff_asm
global diff_asm

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
push r12
push r13
push r14
push r15
push rbx
sub rsp, 8

mov r15, rdx
mov eax, r8d
mov ecx, ecx
mul rcx
mov rcx, rax
mov rdx, r15

.ciclo:
cmp rcx, 0
je .fin
mov rbx, [rdi + rcx*4 - 8]
movzx r12, bl
shr rbx, 8
movzx r13, bl
shr rbx, 8
movzx r14, bl
shr rbx, 16

mov r15, [rsi + rcx*4 - 8]
movzx rbp, r15b
shr r15, 8
movzx r8, r15b
shr r15, 8
movzx r9, r15b
shr r15, 16

call inf_norm

movzx r12, bl
shr rbx, 8
movzx r13, bl
shr rbx, 8
movzx r14, bl
shr rbx, 8

movzx rbp, r15b
shr r15, 8
movzx r8, r15b
shr r15, 8
movzx r9, r15b
shr r15, 8

call inf_norm 

mov [rdx + rcx*4 - 8], rax

sub rcx, 2
jmp .ciclo

.fin:

add rsp, 8
pop rbx
pop r15
pop r14
pop r13
pop r12
pop rbp
ret


; r12w = x_1
; r13w = y_1
; r14w = z_1
; rbp  = x_2
; r8   = y_2
; r9   = z_3
inf_norm:

;Calculo los valores absolutos
sub r12d, ebp
mov ebp, r12d
sar ebp, 0x1f
xor r12d, ebp
sub r12d, ebp

sub r13d, r8d
mov r8d, r13d
sar r8d, 0x1f
xor r13d, r8d
sub r13d, r8d

sub r14d, r9d
mov r9d, r14d
sar r9d, 0x1f
xor r14d, r9d
sub r14d, r9d

cmp r12w, r13w
jg .z_y
cmp r13w, r14w
cmovl r13d, r14d
jmp .insert

.z_y:
cmp r12w, r14w
mov r13d, r14d
cmovge r13d, r12d

.insert:

mov al, r13b
ror rax, 1
ror rax, 1
ror rax, 1
ror rax, 1
ror rax, 1
ror rax, 1
ror rax, 1
ror rax, 1
mov al, r13b
ror rax, 1
ror rax, 1
ror rax, 1
ror rax, 1
ror rax, 1
ror rax, 1
ror rax, 1
ror rax, 1
mov al, r13b
ror rax, 1
ror rax, 1
ror rax, 1
ror rax, 1
ror rax, 1
ror rax, 1
ror rax, 1
ror rax, 1
mov al, 255         ;alpha
ror rax, 1
ror rax, 1
ror rax, 1
ror rax, 1
ror rax, 1
ror rax, 1
ror rax, 1
ror rax, 1
ret


; ** por compatibilidad se omiten tildes **
; ==============================================================================
; TRABAJO PRACTICO 3 - System Programming - ORGANIZACION DE COMPUTADOR II - FCEN
; ==============================================================================
; definicion de rutinas de atencion de interrupciones

%include "imprimir.mac"

BITS 32

sched_tarea_offset:     dd 0x00
sched_tarea_selector:   dw 0x00

;; PIC
extern fin_intr_pic1

;; Sched
extern sched_atender_tick
extern sched_tarea_actual
extern sched_remover_tarea

extern screen_pintar
extern game_atender_tick
;extern GDT_TSS_IDLE
extern game_atender_teclado
extern game_atender_pedido
extern pintar_pantalla_debug;
extern atender_interrupcion_debug;

%define GDT_TSS_IDLE 14
;;
;; Definición de MACROS
;; -------------------------------------------------------------------------- ;;

%macro ISR 1
global _isr%1

_isr%1:
;xchg bx, bx
pushad
 str cx
 shr cx,3
 push ecx
 call sched_remover_tarea
 MOV ebx,[GDT_TSS_IDLE]
 shl ebx, 3
 mov [sched_tarea_selector],ebx
 jmp far [sched_tarea_offset]
 pop ecx
popad
iret
%endmacro

;;
;; Datos
;; -------------------------------------------------------------------------- ;;
; Scheduler

;;
;; Rutina de atención de las EXCEPCIONES
;; -------------------------------------------------------------------------- ;;
ISR 0
ISR 1
ISR 2
ISR 3
ISR 4
ISR 5
ISR 6
ISR 7
ISR 8
ISR 9
ISR 10
ISR 11
ISR 12
ISR 13
ISR 14
ISR 15
ISR 16
ISR 17
ISR 18
ISR 19

;;
;; Rutina de atención del RELOJ
;; -------------------------------------------------------------------------- ;;
global _isr32
    _isr32:
        pushad
        call fin_intr_pic1
    call sched_atender_tick
        str cx
        shl ax, 3
        cmp ax, cx
        je .fin
        mov [sched_tarea_selector], ax
        jmp far [sched_tarea_offset]
        .fin:
        popad  
        iret
;;
;; Rutina de atención del TECLADO
;; -------------------------------------------------------------------------- ;;
global _isr33
    _isr33:
        pushad
        call fin_intr_pic1
        push eax
        ;xchg bx, bx    
        call atender_interrupcion_debug
        pop eax
        ;xchg bx, bx    
        cmp eax,1   
        je .continuar        
        in al, 0x60
            push eax
            call game_atender_teclado
            pop eax
        .continuar: 
        popad  
        iret
;;
;; Rutinas de atención de las SYSCALLS
;; -------------------------------------------------------------------------- ;;
global _isr70:
    _isr70:
        push ecx
        push edx
        push ebx
        push esp
        push ebp
        push esi
        push edi
        push ecx
        push eax
        call game_atender_pedido
        jmp 0x70:0
        add esp, 8
        pop edi
        pop esi
        pop ebp
        pop esp
        pop ebx
        pop edx
        pop ecx
        ;xchg bx, bx
        iret    




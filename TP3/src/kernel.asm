; ** por compatibilidad se omiten tildes **
; ==============================================================================
; TRABAJO PRACTICO 3 - System Programming - ORGANIZACION DE COMPUTADOR II - FCEN
; ==============================================================================

%include "imprimir.mac"

global start

;; Externs

;; GDT ;
;; -------------------------------------------------------------------------- ;;
extern GDT_DESC
extern tss_inicializar

;; IDT 
;; -------------------------------------------------------------------------- ;;
extern IDT_DESC
extern idt_inicializar

;; Paginación 
;; -------------------------------------------------------------------------- ;;
extern mmu_inicializar
extern mmu_inicializar_dir_kernel

;; OTROS 
;; -------------------------------------------------------------------------- ;;
extern screen_inicializar
extern resetear_pic
extern habilitar_pic
extern llenar_descriptor_tss_perro

extern sched_inicializar
extern game_inicializar

;; Defines
%define NULL    0

;; Saltear seccion de datos
jmp start

;;
;; Seccion de datos.
;; -------------------------------------------------------------------------- ;;
iniciando_mr_msg db     'Iniciando kernel (Modo Real)...'
iniciando_mr_len equ    $ - iniciando_mr_msg

iniciando_mp_msg db     'Iniciando kernel (Modo Protegido)...'
iniciando_mp_len equ    $ - iniciando_mp_msg

bienvenida_mp_msg db    'Bienvenido!!!!111'
bienvenida_mp_len equ   $ - bienvenida_mp_msg

inicializando_mp_msg db    'Inicializando el Juego'
inicializando_mp_len equ   $ - inicializando_mp_msg

;;
;; Seccion de código.
;; -------------------------------------------------------------------------- ;;

;; Punto de entrada del kernel.
BITS 16
start:
    ; Deshabilitar interrupcionesake
    cli

    ; Cambiar modo de video a 80 X 50
    mov ax, 0003h
    int 10h ; set mode 03h
    xor bx, bx
    mov ax, 1112h
    int 10h ; load 8x8 font

    ; Imprimir mensaje de bienvenida
    imprimir_texto_mr iniciando_mr_msg, iniciando_mr_len, 0x07, 0, 0

    ; Habilitar A20
    call habilitar_A20
    ; Cargar la GDT
    lgdt  [GDT_DESC]
    ; Setear el bit PE del registro CR0
    ; Para activar modo protegido necesitamos setear en 1
    ; el bit 0(PE = protected enviroment) del registro de control 0
    mov eax, cr0
    or  eax, 1
    mov cr0, eax
    ; Estamos casi en condiciones de pasar a modo protegido
    ; Saltar a modo protegido
    jmp 0x40:modoprotegido
    ; Hacemos un jmp far haciendo que CS apunte a nuestra tabla de codigo (gdt.c/h) (8 << 3)
    ; como al hacer jmp pasamos a modo protegido le tenemos que decir a NASM 
    ; que empieze a generar código diseñado para un procesador de 32 bits.
BITS 32
    modoprotegido:
    ; Establecer selectores de segmentos
    ; Establecemos los sectores, eax apunta al valor de la primera tabla de datos shifteado por 3
    ; (10 << 3)
    mov eax, 0x50
    mov ss, ax
    mov ds, ax
    mov gs, ax
    mov fs, ax
    mov es, ax
    ; Establecer la base de la pila
    ; esp indica donde empieza la pila.
    mov ebp, 0x1337
    mov esp, 0x27000
    ; Mensaje de inicio modo protegido
    imprimir_texto_mp  iniciando_mp_msg, iniciando_mp_len, 0x07, 2, 0
    ; Imprimir mensaje de bienvenida
    imprimir_texto_mp  bienvenida_mp_msg, bienvenida_mp_len, 0xCA, 3, 0     ;0x07, 3, 0
    ; Inicializar el juego
    imprimir_texto_mp  inicializando_mp_msg, inicializando_mp_len, 0x07, 4, 0

    call game_inicializar


    ; Inicializar el manejador de memoria
    call mmu_inicializar


    ;xchg bx, bx
    ; Inicializar el directorio de paginas
    call mmu_inicializar_dir_kernel

    ;<esto estaba hecho para testear que ande bien inicializar_memoria_perro>
    ;call mmu_inicializar
    ;mov cr3,eax
    ;imprimir_texto_mp  " ", 1, 0x33, 0, 0
    ;</esto>
    ;:xchg bx, bx
    ; Cargar directorio de paginas

    ; Habilitar paginacion
    mov cr3,eax
    mov eax, cr0
    or  eax, 0x80000000
    mov cr0, eax
    ; Inicializar tss
    ; Inicializar tss de la tarea Idle
    call tss_inicializar
    ; Inicializar el scheduler
    call sched_inicializar
    ; Inicializar la IDT
    call idt_inicializar
    ; Cargar IDT
    lidt [IDT_DESC]      ; igual que con la gdt
    ; Configurar controlador de interrupciones
    call resetear_pic
    call habilitar_pic
                            
    ;Inicializar pantalla
    call screen_inicializar

    ; Cargar tarea inicial
    mov bx, 0x68            ; cargamos el selector de la tarea inicial 
    ltr bx                  ; (13 << 3, TI = 0, RPL: 0, ver define.h)

    sti 

    ; SALTAR A TAREA IDLE 
    ;xchg bx, bx
    jmp 0x70:0                  ; y saltamos a la tarea idle  
                                ; (14 << 3, TI = 0, RPL: 0, ver define.h)


    ;call screen_pintar_puntajes
    ; Saltar a la primera tarea: Idle

    ; Ciclar infinitamente (por si algo sale mal...)
    mov eax, 0xFFFF
    mov ebx, 0xFFFF
    mov ecx, 0xFFFF
    mov edx, 0xFFFF
    jmp $
    jmp $

;; -------------------------------------------------------------------------- ;;

%include "a20.asm"

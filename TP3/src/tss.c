/* ** por compatibilidad se omiten tildes **
================================================================================
 TRABAJO PRACTICO 3 - System Programming - ORGANIZACION DE COMPUTADOR II - FCEN
================================================================================
  definicion de estructuras para administrar tareas
*/

#include "tss.h"
#include "mmu.h"

//extern llenar_descriptor

tss tss_inicial;
tss tss_idle;

tss tss_jugadorA[MAX_CANT_PERROS_VIVOS];
tss tss_jugadorB[MAX_CANT_PERROS_VIVOS];
extern uint indices_A[MAX_CANT_PERROS_VIVOS];
extern uint indices_B[MAX_CANT_PERROS_VIVOS];

int entrada_libre = 15;

void completar_tss_idle();


void tss_inicializar() {
    gdt[GDT_TSS_TAREA_INICIAL] = (gdt_entry) {
        (unsigned short)    TSS_KERNEL_LIMIT & 0xffff,                          /* limit[15:0]  */
        (unsigned short)    (unsigned int) (& tss_inicial) & 0xffff,            /* base[15:0]   */
        (unsigned char)     ((unsigned int) (& tss_inicial) >> 16) & 0xff,      /* base[23:16]  */
        (unsigned char)     0x9,                                                /* type         */
        (unsigned char)     0x0,                                                /* ZERO         */
        (unsigned char)     0x0,                                                /* dpl          */
        (unsigned char)     0x1,                                                /* p            */
        (unsigned char)     (TSS_KERNEL_LIMIT >> 16) & 0xf,                     /* limit[19:16] */
        (unsigned char)     0x0,                                                /* avl          */
        (unsigned char)     0x0,                                                /* ZERO         */
        (unsigned char)     0x0,                                                /* ZERO         */
        (unsigned char)     0x0,                                                /* g            */
        (unsigned char)     ((unsigned int) (& tss_inicial) >> 24) & 0xff,      /* base[31:24]  */
    };

    gdt[GDT_TSS_IDLE] = (gdt_entry) {
        (unsigned short)    TSS_KERNEL_LIMIT & 0xffff,                          /* limit[15:0]  */
        (unsigned short)    (unsigned int) (& tss_idle) & 0xffff,               /* base[15:0]   */
        (unsigned char)     ((unsigned int) (& tss_idle) >> 16) & 0xff,         /* base[23:16]  */
        (unsigned char)     0x9,                                                /* type         */
        (unsigned char)     0x0,                                                /* ZERO         */
        (unsigned char)     0x0,                                                /* dpl          */
        (unsigned char)     0x1,                                                /* p            */
        (unsigned char)     (TSS_KERNEL_LIMIT >> 16) & 0xf,                     /* limit[19:16] */
        (unsigned char)     0x0,                                                /* avl          */
        (unsigned char)     0x0,                                                /* ZERO         */
        (unsigned char)     0x0,                                                /* ZERO         */
        (unsigned char)     0x0,                                                /* g            */
        (unsigned char)     ((unsigned int) (& tss_idle) >> 24) & 0xff,         /* base[31:24]  */
    };

    int i = 0;


    /* GDT e indice jugador A */
    for (i = 0; i < MAX_CANT_PERROS_VIVOS; i++) {
        indices_A[i]=FALSE;
        gdt[entrada_libre] = (gdt_entry) {
            (unsigned short)    TSS_KERNEL_LIMIT & 0xffff,                          /* limit[15:0]  */
            (unsigned short)    (unsigned int) (&tss_jugadorA[i]) & 0xffff,        /* base[15:0]   */
            (unsigned char)     ((unsigned int) (&tss_jugadorA[i]) >> 16) & 0xff,  /* base[23:16]  */
            (unsigned char)     0x9,                                                /* type         */
            (unsigned char)     0x0,                                                /* ZERO         */
            (unsigned char)     0x0,                                                /* dpl          */
            (unsigned char)     0x1,                                                /* p            */
            (unsigned char)     (TSS_KERNEL_LIMIT >> 16) & 0xf,                     /* limit[19:16] */
            (unsigned char)     0x0,                                                /* avl          */
            (unsigned char)     0x0,                                                /* ZERO         */
            (unsigned char)     0x0,                                                /* ZERO         */
            (unsigned char)     0x0,                                                /* g            */
            (unsigned char)     ((unsigned int) (&tss_jugadorA[i]) >> 24) & 0xff,  /* base[31:24]  */
        };
        entrada_libre++;
    }

    /* GDT e indicejugador B */
    for (i = 0; i < MAX_CANT_PERROS_VIVOS; i++) {
        indices_B[i]=FALSE;
        gdt[entrada_libre] = (gdt_entry) {
            (unsigned short)    TSS_KERNEL_LIMIT & 0xffff,                          /* limit[15:0]  */
            (unsigned short)    (unsigned int) (&tss_jugadorB[i]) & 0xffff,        /* base[15:0]   */
            (unsigned char)     ((unsigned int) (&tss_jugadorB[i]) >> 16) & 0xff,  /* base[23:16]  */
            (unsigned char)     0x9,                                                /* type         */
            (unsigned char)     0x0,                                                /* ZERO         */
            (unsigned char)     0x0,                                                /* dpl          */
            (unsigned char)     0x1,                                                /* p            */
            (unsigned char)     (TSS_KERNEL_LIMIT >> 16) & 0xf,                     /* limit[19:16] */
            (unsigned char)     0x0,                                                /* avl          */
            (unsigned char)     0x0,                                                /* ZERO         */
            (unsigned char)     0x0,                                                /* ZERO         */
            (unsigned char)     0x0,                                                /* g            */
            (unsigned char)     ((unsigned int) (&tss_jugadorB[i]) >> 24) & 0xff,  /* base[31:24]  */
        };
        entrada_libre++;
    }

    //Inicializando la tss de Idle.
    completar_tss_idle();
}
//0x1000
//

void llenar_descriptor_tss_perro(int indice, perro_t *perro, int index_jugador, int index_tipo) {
    //llenar_descriptor(&tss, i);
    if (index_jugador == JUGADOR_A) {
        tss_jugadorA[indice].unused0  = 0;
        tss_jugadorA[indice].esp0     = mmu_proxima_pagina_fisica_libre();
        tss_jugadorA[indice].ss0      = 0x50;
        tss_jugadorA[indice].unused1  = 0;
        tss_jugadorA[indice].esp1     = 0;
        tss_jugadorA[indice].ss1      = 0;
        tss_jugadorA[indice].unused2  = 0;
        tss_jugadorA[indice].esp2     = 0;
        tss_jugadorA[indice].ss2      = 0;
        tss_jugadorA[indice].unused3  = 0;
        tss_jugadorA[indice].cr3      = mmu_inicializar_memoria_perro(perro, index_jugador, index_tipo);
        tss_jugadorA[indice].eip      = 0x401000;
        tss_jugadorA[indice].eflags   = 0x202;
        tss_jugadorA[indice].esp      = 0x401000 + 0x1000 - 12;
        tss_jugadorA[indice].ebp      = 0x401000 + 0x1000 - 12;
        tss_jugadorA[indice].es       = 0x50;
        tss_jugadorA[indice].unused4  = 0;
        tss_jugadorA[indice].cs       = 0x40;
        tss_jugadorA[indice].unused5  = 0;
        tss_jugadorA[indice].ss       = 0x50;
        tss_jugadorA[indice].unused6  = 0;
        tss_jugadorA[indice].ds       = 0x50;
        tss_jugadorA[indice].unused7  = 0;
        tss_jugadorA[indice].fs       = 0x50;
        tss_jugadorA[indice].unused8  = 0;
        tss_jugadorA[indice].gs       = 0x50;
        tss_jugadorA[indice].unused9  = 0;
        tss_jugadorA[indice].unused10 = 0;
        tss_jugadorA[indice].iomap    = 0xFFFF;
    } else {
        tss_jugadorB[indice].unused0  = 0;
        tss_jugadorB[indice].esp0     = mmu_proxima_pagina_fisica_libre();
        tss_jugadorB[indice].ss0      = 0x50;
        tss_jugadorB[indice].unused1  = 0;
        tss_jugadorB[indice].esp1     = 0;
        tss_jugadorB[indice].ss1      = 0;
        tss_jugadorB[indice].unused2  = 0;
        tss_jugadorB[indice].esp2     = 0;
        tss_jugadorB[indice].ss2      = 0;
        tss_jugadorB[indice].unused3  = 0;
        tss_jugadorB[indice].cr3      = mmu_inicializar_memoria_perro(perro, index_jugador, index_tipo);
        tss_jugadorB[indice].eip      = 0x401000;
        tss_jugadorB[indice].eflags   = 0x202;
        tss_jugadorB[indice].esp      = 0x401000 + 0x1000 - 12;
        tss_jugadorB[indice].ebp      = 0x401000 + 0x1000 - 12;
        tss_jugadorB[indice].es       = 0x50;
        tss_jugadorB[indice].unused4  = 0;
        tss_jugadorB[indice].cs       = 0x40;
        tss_jugadorB[indice].unused5  = 0;
        tss_jugadorB[indice].ss       = 0x50;
        tss_jugadorB[indice].unused6  = 0;
        tss_jugadorB[indice].ds       = 0x50;
        tss_jugadorB[indice].unused7  = 0;
        tss_jugadorB[indice].fs       = 0x50;
        tss_jugadorB[indice].unused8  = 0;
        tss_jugadorB[indice].gs       = 0x50;
        tss_jugadorB[indice].unused9  = 0;
        tss_jugadorB[indice].unused10 = 0;
        tss_jugadorB[indice].iomap    = 0xFFFF;
    }
}

void completar_tss_idle() {
    tss_idle.unused0       = 0;
    tss_idle.esp0          = 0x27000;
    tss_idle.ss0           = 0x50;
    tss_idle.unused1       = 0;
    tss_idle.esp1          = 0;
    tss_idle.ss1           = 0;
    tss_idle.unused2       = 0;
    tss_idle.esp2          = 0;
    tss_idle.ss2           = 0;
    tss_idle.unused3       = 0;
    tss_idle.cr3           = k_cr3;
    tss_idle.eip           = 0x16000;
    tss_idle.eflags        = 0x202;
    tss_idle.esp           = 0x27000;
    tss_idle.ebp           = 0x27000;
    tss_idle.es            = 0x50;
    tss_idle.unused4       = 0;
    tss_idle.cs            = 0x40;
    tss_idle.unused5       = 0;
    tss_idle.ss            = 0x50;
    tss_idle.unused6       = 0;
    tss_idle.ds            = 0x50;
    tss_idle.unused7       = 0;
    tss_idle.fs            = 0x50;
    tss_idle.unused8       = 0;
    tss_idle.gs            = 0x50;
    tss_idle.unused9       = 0;
    tss_idle.unused10      = 0;
    tss_idle.iomap         = 0xFFFF;
}
uint dame_indice_tss_libre(uint jugador) {
    uint i = 0;
    if (jugador == JUGADOR_A) {
        while (i < MAX_CANT_PERROS_VIVOS) {
            if (indice_A[i] == FALSE)break;
            i++;
        }
    } else {
        while (i < MAX_CANT_PERROS_VIVOS) {
            if (indice_B[i] == FALSE)break;
            i++;
        }

    }
    return i;
}
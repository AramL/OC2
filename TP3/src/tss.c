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

void llenar_tss_idle(tss *);

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


    //Inicializando la tss de Idle.
    llenar_tss_idle(&tss_idle);
    llenar_tss_idle(&tss_inicial);

}
//0x1000
//
void llenar_descriptor_tss_perro(tss* tss_perro, perro_t *perro, int index_jugador, int index_tipo) {
    //llenar_descriptor(&tss, i);
    tss_perro->unused0 = 0;
    tss_perro->esp0 = mmu_proxima_pagina_fisica_libre(); 
    tss_perro->ss0 = 0x48;
    tss_perro->unused1 = 0;
    tss_perro->esp1 = 0;
    tss_perro->ss1 = 0;
    tss_perro->unused2 = 0;
    tss_perro->esp2 = 0;
    tss_perro->ss2 = 0;
    tss_perro->unused3 = 0;
    tss_perro->cr3 = mmu_inicializar_memoria_perro(perro, index_jugador, index_tipo);
    tss_perro->eip = 0x401000;
    tss_perro->eflags = 0x202;
    tss_perro->esp = 0x10000 + 0x1000 - 12;
    tss_perro->ebp = tss_perro->esp;
    tss_perro->es = 0x48;
    tss_perro->unused4 = 0;
    tss_perro->cs = 0x40;
    tss_perro->unused5 = 0;
    tss_perro->ss = 0x48;
    tss_perro->unused6 = 0;
    tss_perro->ds = 0x48;
    tss_perro->unused7 = 0;
    tss_perro->fs = 0x60;
    tss_perro->unused8 = 0;
    tss_perro->gs = 0x48;
    tss_perro->unused9 = 0;
    tss_perro->unused10 = 0;
    tss_perro->iomap = 0xFFFF; 
}

void llenar_tss_idle(tss* idle){
    idle->unused0 = 0;
    idle->esp0 = 0x27000; 
    idle->ss0 = 0x48;
    idle->unused1 = 0;
    idle->esp1 = 0;
    idle->ss1 = 0;
    idle->unused2 = 0;
    idle->esp2 = 0;
    idle->ss2 = 0;
    idle->unused3 = 0;
    idle->cr3 = rcr3();
    idle->eip = 0x16000; 
    idle->eflags = 0x202; 
    idle->esp = 0x27000;
    idle->ebp = 0x27000;
    idle->es = 0x48;
    idle->unused4 = 0;
    idle->cs = 0x40;
    idle->unused5 = 0;
    idle->ss = 0x48;
    idle->unused6 = 0;
    idle->ds = 0x48;
    idle->unused7 = 0;
    idle->fs = 0x60;
    idle->unused8 = 0;
    idle->gs = 0x48;
    idle->unused9 = 0;
    idle->unused10 = 0;
    idle->iomap = 0xFFFF;

}
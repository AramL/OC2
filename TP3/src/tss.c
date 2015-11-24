/* ** por compatibilidad se omiten tildes **
================================================================================
 TRABAJO PRACTICO 3 - System Programming - ORGANIZACION DE COMPUTADOR II - FCEN
================================================================================
  definicion de estructuras para administrar tareas
*/

#include "tss.h"
#include "mmu.h"

extern llenar_descriptor

tss tss_inicial;
tss tss_idle;

tss tss_jugadorA[MAX_CANT_PERROS_VIVOS];
tss tss_jugadorB[MAX_CANT_PERROS_VIVOS];

void tss_inicializar() {
	gdt[GDT_TSS_TAREA_INICIAL] = (gdt_entry) {
		(unsigned short)    TSS_KERNEL_LIMIT & 0xffff, 				/* limit[15:0]  */
		(unsigned short)    (unsigned int) (& tss_inicial) & 0xffff,           	/* base[15:0]   */
		(unsigned char)     ((unsigned int) (& tss_inicial) >> 16) & 0xff,     	/* base[23:16]  */
		(unsigned char)     0x9,           					/* type         */
		(unsigned char)     0x0,           					/* ZERO         */
		(unsigned char)     0x0,           					/* dpl          */
		(unsigned char)     0x1,           					/* p            */
		(unsigned char)     (TSS_KERNEL_LIMIT >> 16) & 0xf, 			/* limit[19:16] */
		(unsigned char)     0x0,           					/* avl          */
		(unsigned char)     0x0,         					/* ZERO         */
		(unsigned char)     0x0,           					/* ZERO         */
		(unsigned char)     0x0,           					/* g            */
		(unsigned char)     ((unsigned int) (& tss_inicial) >> 24) & 0xff,	/* base[31:24]  */
	};

	gdt[GDT_TSS_IDLE] = (gdt_entry) {
		(unsigned short)    TSS_KERNEL_LIMIT & 0xffff, 			/* limit[15:0]  */
		(unsigned short)    (unsigned 1int) (& tss_idle) & 0xffff,       /* base[15:0]   */
		(unsigned char)     ((unsigned int) (& tss_idle) >> 16) & 0xff, /* base[23:16]  */
		(unsigned char)     0x9,           				/* type         */
		(unsigned char)     0x0,           				/* ZERO         */
		(unsigned char)     0x0,           				/* dpl          */
		(unsigned char)     0x1,           				/* p            */
		(unsigned char)     (TSS_KERNEL_LIMIT >> 16) & 0xf, 		/* limit[19:16] */
		(unsigned char)     0x0,           				/* avl          */
		(unsigned char)     0x0,         				/* ZERO         */
		(unsigned char)     0x0,           				/* ZERO         */
		(unsigned char)     0x0,           				/* g            */
		(unsigned char)     ((unsigned int) (& tss_idle) >> 24) & 0xff,	/* base[31:24]  */
	};


	//Inicializando la tss de Idle.
	tss_idle.unused0 = 0;
	tss_idle.esp0 = 0x27000; //Para mi ya habiamos mapeado la 0x27000 para el cr3 del kernel
	tss_idle.ss0 = 0x48;
	tss_idle.unused1 = 0;
	tss_idle.esp1 = 0;
	tss_idle.ss1 = 0;
	tss_idle.unused2 = 0;
	tss_idle.esp2 = 0;
	tss_idle.ss2 = 0;
	tss_idle.unused3 = 0;
	tss_idle.cr3 = rcr3();
	tss_idle.eip = 0x16000; //estaba re mapeado esto, me parece??
	tss_idle.eflags = 0x202; //fijarse por q era asi
	tss_idle.esp = 0x27000;
	tss_idle.ebp = 0x27000;
	tss_idle.es = 0x48;
	tss_idle.unused4 = 0;
	tss_idle.cs = 0x40;
	tss_idle.unused5 = 0;
	tss_idle.ss = 0x48;
	tss_idle.unused6 = 0;
	tss_idle.ds = 0x48;
	tss_idle.unused7 = 0;
	tss_idle.fs = 0x60;
	tss_idle.unused8 = 0;
	tss_idle.gs = 0x48;
	tss_idle.unused9 = 0;
	tss_idle.unused10 = 0;
	tss_idle.iomap = 0xFFFF;

}
//0x1000
//
void llenar_descriptor_tss_perro(tss* tess, perro_t *perro, int index_jugador, int index_tipo) {
	//llenar_descriptor(&tss, i);
	tess.unused0 = 0;
	tess.esp0 = mmu_proxima_pagina_fisica_libre(); //Para mi ya habiamos mapeado la 0x27000 para el cr3 del kernel
	tess.ss0 = 0x48;
	tess.unused1 = 0;
	tess.esp1 = 0;
	tess.ss1 = 0;
	tess.unused2 = 0;
	tess.esp2 = 0;
	tess.ss2 = 0;
	tess.unused3 = 0;
	tess.cr3 = mmu_inicializar_memoria_perro(perro, index_jugador, index_tipo);
	tess.eip = 0x401000;
	tess.eflags = 0x202; //fijarse por q era asi
	tess.esp = 0x10000 + 0x1000 - 12;
	tess.ebp = tess.esp;
	tess.es = 0x48;
	tess.unused4 = 0;
	tess.cs = 0x40;
	tess.unused5 = 0;
	tess.ss = 0x48;
	tess.unused6 = 0;
	tess.ds = 0x48;
	tess.unused7 = 0;
	tess.fs = 0x60;
	tess.unused8 = 0;
	tess.gs = 0x48;
	tess.unused9 = 0;
	tess.unused10 = 0;
	tess.iomap = 0xFFFF; //esto no me acuerdo por q era loco, nomacuerdo!

}


/* ** por compatibilidad se omiten tildes **
================================================================================
 TRABAJO PRACTICO 3 - System Programming - ORGANIZACION DE COMPUTADOR II - FCEN
================================================================================
  definicion de funciones del manejador de memoria
*/

#include "mmu.h"
#include "i386.h"

uint proxima_pagina_libre = 0x100000;

/* Atributos paginas */
/* -------------------------------------------------------------------------- */
uint mmu_proxima_pagina_fisica_libre() {
    uint ret = proxima_pagina_libre;
    proxima_pagina_libre += 0x1000;
    return ret;
}

void mmu_inicializar(){

}

uint mmu_inicializar_memoria_perro(perro_t *perro, int index_jugador, int index_tipo){
return 0;
}

void mmu_inicializar_pagina(uint * pagina) {

}

uint mmu_inicializar_dir_kernel() {
    mmu_inicializar_page_directory((page_directory *)0x27000, 0x28000, 0x3);
    int limpiar = 0;
    for(limpiar = 0x27000+0x4; limpiar < 0x28000; limpiar +=0x4)
        mmu_inicializar_page_directory((page_directory *)limpiar, 0x0, 0x0);
    /* necesitamos mapear los primeros 4 megabytes para el kernel y area libre de memoria
     * con una sola entrada en la PD por ahora nos alcanza, vamos a necesitar una tabla de paginas con 1024 entradas
     * como cada una direcciona 4k tenemos los 4mb.
     */
    /* Inicializamos las tablas cada tabla direcciona 4k, empezando en 0 porque tenemos identity mapping */
    int p_tabla = 0;
    for(p_tabla = 0x0; p_tabla < 0x3FFFFF; p_tabla += 0x1000)
       mmu_mapear_pagina(p_tabla, 0x27000, p_tabla, 0x3); 
    /*
    for(int p_tabla = 0x28000; p_tabla < 0x29000; p_tabla += 0x20)
        mmu_inicializar_page_table(p_tabla, 1000* (p_tabla/0x20)); 
    */

    mmu_unmapear_pagina(0x3FF000, 0x27000);
    return 0x27000;
    /* Devolvemos el cr3  (eax) */
}

void mmu_mapear_pagina  (uint virtual, uint cr3, uint fisica, uint attrs) {
    cr3 = cr3 & 0xFFFFF000;
    uint pduint =  cr3;
    uint posicion_DR = (virtual >> 22) & 0x3FF;/*FF3;*/                                               /* Shifteo a la derecha 22 bits para obtener el offset en el DR */
    pduint = pduint + (posicion_DR * 4);
    page_directory *pd = (page_directory *)pduint;
    if (pd->present == NULL) {
        /* Si es null significa que no hay una tabla de paginas en esa posicion*/
        uint proxima_pag = mmu_proxima_pagina_fisica_libre();
        mmu_inicializar_page_directory(pd, proxima_pag, 0x3);
        int tab_c = proxima_pag;
        for(; tab_c < proxima_pag + 0x1000; tab_c +=0x4)
            mmu_inicializar_page_table((page_table *)tab_c, 0, 0);
    }

    uint posicion_DT = (virtual >> 12) & 0x3FF;/*FF3;*/
    uint add = pd->page_base_address_31_12 << 12;
    page_table *pt = (page_table *)  (add + (posicion_DT *4));                    /* Muevo a la derecha 12 bits y limpio la parte alta */

    mmu_inicializar_page_table(pt, fisica, attrs); 
    /* Copio la direccion fisica shifteada dejando 12 bits para los atributos y
        le pego los mismos al final 
     */
}

uint mmu_unmapear_pagina(uint virtual, uint cr3) {
    cr3 = cr3 & 0xFFFFF000;
    page_directory *pd =  (page_directory *) cr3;
    
    uint posicion_DR = (virtual >> 22) & 0x3FF;/*FF3;*/
    uint posicion_DT = (virtual >> 12) & 0x3FF;/*FF3;*/

    pd = pd + (posicion_DR * 4);
    uint add = pd->page_base_address_31_12 << 12;
    page_table *pt = (page_table *) (add + (posicion_DT *4));

    pt[posicion_DT * 4].present = 0;
    return 0;
}



/* Direcciones fisicas de codigos */
/* -------------------------------------------------------------------------- */
/* En estas direcciones estan los códigos de todas las tareas. De aqui se
 * copiaran al destino indicado por TASK_<i>_CODE_ADDR.
 */

/* Direcciones fisicas de directorios y tablas de paginas del KERNEL */
/* -------------------------------------------------------------------------- */


/* Funciones auxiliares */
/* ---------------------------------------------------------------------------*/

/* Inicializa un page directory */
void mmu_inicializar_page_directory(page_directory * dir, uint addr, uint attrs) {
    dir->present = attrs & 0x1;
    dir->read_write =  (attrs >> 1) & 0x1;
    dir->user_supervisor = (attrs >> 2) & 0x1;                   /* 0 = kernel; 1 = user (igual no se pone nunca user, es una entrada de la PD!) */
    dir->page_level_write_through = (attrs >> 3) & 0x1;
    dir->page_level_cache_disabled = (attrs >> 4) & 0x1;
    dir->accessed =  (attrs >> 5) & 0x1;
    dir->ignored = (attrs >> 6) & 0x1;
    dir->page_size   = (attrs >> 7) & 0x1;              /* 0 = 4kb; 1 = 4mb */
    dir->global = (attrs >> 8) & 0x1;
    dir->available_11_9 = (attrs >> 9) & 0x3;
    dir->page_base_address_31_12 = addr >> 12;
}


void mmu_inicializar_page_table(page_table *tab, uint addr, uint attrs) {
    tab->present = attrs & 0x1;
    tab->read_write =  (attrs >> 1) & 0x1;
    tab->user_supervisor = (attrs >> 2) & 0x1;                   /* 0 = kernel; 1 = user (igual no se pone nunca user, es una entrada de la PD!) */
    tab->page_level_write_through = (attrs >> 3) & 0x1;
    tab->page_level_cache_disabled = (attrs >> 4) & 0x1;
    tab->accessed =  (attrs >> 5) & 0x1;
    tab->dirty_bit = (attrs >> 6) & 0x1;
    tab->page_table_attr_indx = (attrs >> 7) & 0x1;              /* 0 = 4kb; 1 = 4mb */
    tab->global = (attrs >> 8) & 0x1;
    tab->available_11_9 = (attrs >> 9) & 0x3;
    tab->page_base_address_31_12 = addr >> 12;
}



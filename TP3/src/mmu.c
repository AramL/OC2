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

void mmu_inicializar_pagina(uint * pagina) {

}

uint mmu_inicializar_dir_kernel() {

    /*for (uint j = 0x27000; j < 0x28000 -; j += 0x20) {*/
    mmu_inicializar_page_directory(0x27000, 0x28000);
    /* necesitamos mapear los primeros 4 mebibytes para el kernel y area libre de memoria
     * con una sola entrada en la PD por ahora nos alcanza, vamos a necesitar una tabla de paginas con 1024 entradas
     * como cada una direcciona 4k tenemos los 4mb.
     */

    /* Inicializamos las tablas cada tabla direcciona 4k, empezando en 0 porque tenemos identity mapping */
    for(int p_tabla = 0x0; p_tabla < 0x3FFFFF; p_tabla += 0x1000)
        mmu_mapear_pagina(0x28000 + 0x20*(p_tabla)/0x1000, 0x27000000, p_tabla, 0x3); 
    /*
    for(int p_tabla = 0x28000; p_tabla < 0x29000; p_tabla += 0x20)
        mmu_inicializar_page_table(p_tabla, 1000* (p_tabla/0x20)); 
    */
    /* 
    for (uint i = 0x000; i < 0x3FFFFF; i += 0x1000) 
        mmu_mapear_pagina(i, 0x27000000, i, 0x3 );*/      /* 3 es 11 en binario setea los bits de read and write y presente */

}

void mmu_mapear_pagina  (uint virtual, uint cr3, uint fisica, uint attrs) {
    page_directory *PD = cr3 & 0xFFFFF000;                                          /* Copio la direccion que esta los 20 bits mas altos de cr3 */
    uint posicion_DR = virtual >> 22;                                               /* Shifteo a la derecha 22 bits para obtener el offset en el DR */
    if (PD[posicion_DR * 4] == NULL) {
        /* Si es null significa que no hay una tabla de paginas en esa posicion*/
        mmu_cargar_entry_page_directory(PD[posicion_DR * 4], mmu_proxima_pagina_fisica_libre());
    }

    uint posicion_DT = (virtual >> 12) & 0xFF3;                                     /* Muevo a la derecha 12 bits y limpio la parte alta */
    mmu_inicializar_page_table((page_table *)(PD[posicion_DR * 4]->page_base_address_31_12)[posicion_DT * 4], fisica, attrs); 
    /* Copio la direccion fisica shifteada dejando 12 bits para los atributos y
        le pego los mismos al final */
}

uint mmu_unmapear_pagina(uint virtual, uint cr3) {
    page_directory *PD = cr3 >> 12; /* Copio la direccion que esta los 20 bits mas altos de cr3 */
    uint posicion_DR = virtual >> 22 & 0xFF3;
    uint posicion_DT = (virtual >> 12) & 0xFF3;
    (page_table *)(PD[posicion_DR * 4])[posicion_DT * 4] = NULL;
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
void mmu_inicializar_page_directory(page_directory * dir, uint addr) {
    dir->present = 1;
    dir->read_write =  1;
    dir->user_supervisor = 0;                   /* 0 = kernel; 1 = user (igual no se pone nunca user, es una entrada de la PD!) */
    dir->page_level_write_through = 0;
    dir->page_level_cache_disabled = 0;
    dir->accessed = 0;
    dir->ignored = 0;
    dir->page_size = 0;                         /* 0 = 4kb; 1 = 4mb */
    dir->global = 0;
    dir->available_11_9 = 0;
    dir->page_base_address_31_12 = addr;
}


void mmu_inicializar_page_directory(page_tab * tab, uint addr, uint attrs) {
    tab->present = attrs;
    tab->read_write =  attrs >> 1;
    tab->user_supervisor = attrs >> 2;                   /* 0 = kernel; 1 = user (igual no se pone nunca user, es una entrada de la PD!) */
    tab->page_level_write_through = attrs >> 3;
    tab->page_level_cache_disabled = attrs >> 4;
    tab->accessed =  attrs > 5;
    tab->dirty_bit = attrs > 6;
    tab->page_table_attr_indx = attrs > 7;              /* 0 = 4kb; 1 = 4mb */
    tab->global = attrs > 8;
    tab->available_11_9 = attrs > 9;
    tab->page_base_address_31_12 = addr;
}



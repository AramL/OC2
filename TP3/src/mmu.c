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

void mmu_inicializar() {

}



void mmu_copiar_pagina    (uint src, uint dst) {
    uint* source = (uint *)src;
    uint* destination = (uint *) dst;
    uint i = 0;
    while( i < 1024) {
        destination[i] = source[i];
        i++;
    }
}

void mmu_inicializar_pagina(uint * pagina) {
    uint* pag = (uint *) pagina;
    uint i = 0;
    while( i < 1024) {
        pag[i] = 0;
        i++;
    }
}


uint mmu_inicializar_dir_kernel() {
    mmu_inicializar_page_directory((page_directory *)0x27000, 0x28000, 0x3);
    int limpiar = 0;
    for (limpiar = 0x27000 + 0x4; limpiar < 0x28000; limpiar += 0x4)
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

    /*Testeamos que desmapea esta pagina correctamente
        ej 3
    mmu_unmapear_pagina(0x3FF000, 0x27000);
   */
    return 0x27000;
    /* Devolvemos el cr3  (eax) */
}


// transforma coordenadas (x,y) en direcciones fisicas
uint mmu_xy2fisica(uint x, uint y) {
    return 0x5000000 + x * 0x1000 + y * 80 * 0x1000;
}

// transforma coordenadas (x,y) en direcciones virtuales
uint mmu_xy2virtual(uint x, uint y) {
    return 0x8000000 + x * 0x1000 + y * 80 * 0x1000;
}

/*

uint mmu_inicializar_memoria_perro(perro_t *perro, int index_jugador, int index_tipo) {
    //Copiar el codigo del perro al lugar donde empieza (dependiendo de A o B)
    //puse 0x7FFFFFF por q es cacho de memoria virtual q no se va a usar en ningun momento segun el enunciado

    mmu_mapear_pagina(0x7FFFFFF,  k_cr3, mmu_xy2fisica(perro->jugador->x_cucha, perro->jugador->y_cucha), 0x3); //soy un genioh!
    uint codigo_tarea;
    int codigo = index_jugador * 10 + index_tipo;
    switch (codigo) {
    case (JUGADOR_A*10+ TIPO_1):
        codigo_tarea = 0x10000;
        break;
    case (JUGADOR_A*10+ TIPO_2):
        codigo_tarea = 0x11000;
        break;
    case (JUGADOR_B*10+ TIPO_1):
        codigo_tarea = 0x12000;
        break;
    case (JUGADOR_B*10+ TIPO_2):
        codigo_tarea = 0x13000;
        break;
    }

    mmu_copiar_pagina(codigo_tarea, 0x7FFFFFF);
    mmu_unmapear_pagina(0x7FFFFFF, k_cr3);
    mmu_mapear_pagina(mmu_xy2virtual(perro->jugador->x_cucha, perro->jugador->y_cucha),  k_cr3, mmu_xy2fisica(perro->jugador->x_cucha, perro->jugador->y_cucha), 0x1);
    //hacer una PD para el perro en una pagina libre, limpiarla y hacer <esto>
    uint pd_perro =  mmu_proxima_pagina_fisica_libre();
    mmu_inicializar_pagina(pd_perro);
    int p_tabla = 0;

    for (p_tabla = 0x0; p_tabla < 0x3FFFFF; p_tabla += 0x1000)
        mmu_mapear_pagina(p_tabla, pd_perro, p_tabla, 0x3);

    //  </esto>

    //pedir pagina fisica libre(si no existe para ese jugador y mapearla a 0x400000)
    //mapear posicion en el mapa como rw 0x401000

    return 0;
}
*/


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

    pt->present = 0;
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



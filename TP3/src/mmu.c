/* ** por compatibilidad se omiten tildes **
================================================================================
 TRABAJO PRACTICO 3 - System Programming - ORGANIZACION DE COMPUTADOR II - FCEN
================================================================================
  definicion de funciones del manejador de memoria
*/

#include "mmu.h"
#include "i386.h"

uint proxima_pagina_libre = 0x100000;
uint pag_A;
uint pag_B;
/* Atributos paginas */
/* -------------------------------------------------------------------------- */
uint mmu_proxima_pagina_fisica_libre() {
    uint ret = proxima_pagina_libre;
    proxima_pagina_libre += 0x1000;
    return ret;
}
/**
USA IDENTITY MAPPING
**/
uint dame_proxima_pagina_mapeada(uint attrs) {
    uint pag = mmu_proxima_pagina_fisica_libre();
    mmu_mapear_pagina  (pag, KERNEL_CR3, pag, attrs);
    return pag;
}

void mmu_inicializar() {
    proxima_pagina_libre = 0x100000;
    /**
        pag_A = dame_proxima_pagina_mapeada(0);
        pag_B = dame_proxima_pagina_mapeada(0);
    **/
}
// transforma coordenadas (x,y) en direcciones fisicas
uint mmu_xy2fisica(uint x, uint y) {
    return 0x5000000 + x * 0x1000 + y * 80 * 0x1000;
}

// transforma coordenadas (x,y) en direcciones virtuales
uint mmu_xy2virtual(uint x, uint y) {
    return 0x8000000 + x * 0x1000 + y * 80 * 0x1000;
}
/**
Escribir una rutina (mmu_inicializar_memoria_perro) encargada de inicializar un di-
rectorio de p ́
aginas y tablas de p ́
aginas para una tarea, respetando la figura 3. La rutina
debe copiar el c ́
odigo de la tarea a su  ́area asignada, es decir la posici ́on indicada por el
jugador dentro de el mapa y configurar su directorio segun se indica en 4.2. Nota: puede
ser conveniente agregar a esta funci ́on otros par ́amentros que considere necesarios.
**/
uint mmu_inicializar_memoria_perro(perro_t *perro, int index_jugador, int index_tipo) {
    //Copiar el codigo del perro al lugar donde empieza (dependiendo de A o B)
    //puse 0x7FFFFFF por q es cacho de memoria virtual q no se va a usar en ningun momento segun el enunciado
    
    mmu_mapear_pagina(0x7FFFFFF,  KERNEL_CR3, mmu_xy2fisica(perro->jugador->x_cucha, perro->jugador->y_cucha),0x3);//soy un genioh!

    return 0;
}

void mmu_inicializar_pagina(uint * pagina) {

}

uint mmu_inicializar_dir_kernel() {

    /*for (uint j = 0x27000; j < 0x28000 -; j += 0x20) {*/
    mmu_inicializar_page_directory( (page_directory *)0x27000, 0x28000);
    /* necesitamos mapear los primeros 4 mebibytes para el kernel y area libre de memoria
     * con una sola entrada en la PD por ahora nos alcanza, vamos a necesitar una tabla de paginas con 1024 entradas
     * como cada una direcciona 4k tenemos los 4mb.
     */
    /* Inicializamos las tablas cada tabla direcciona 4k, empezando en 0 porque tenemos identity mapping */
    int p_tabla = 0;
    for (p_tabla = 0x0; p_tabla < 0x3FFFFF; p_tabla += 0x1000)
        mmu_mapear_pagina(0x28000 + 0x20 * (p_tabla) / 0x1000, KERNEL_CR3, p_tabla, 0x3);

    /*
    for(int p_tabla = 0x28000; p_tabla < 0x29000; p_tabla += 0x20)
        mmu_inicializar_page_table(p_tabla, 1000* (p_tabla/0x20));
    */
    /*
    for (uint i = 0x000; i < 0x3FFFFF; i += 0x1000)
        mmu_mapear_pagina(i, 0x27000000, i, 0x3 );*/      /* 3 es 11 en binario setea los bits de read and write y presente */
    return 0;

}

void mmu_mapear_pagina  (uint virtual, uint cr3, uint fisica, uint attrs) {
    cr3 = cr3 & 0x000;
    page_directory *pd =  (page_directory *) cr3;
    uint posicion_DR = virtual >> 22;                                               /* Shifteo a la derecha 22 bits para obtener el offset en el DR */
    pd = pd + (posicion_DR * 4);
    if (pd->page_base_address_31_12 == NULL) {
        /* Si es null significa que no hay una tabla de paginas en esa posicion*/
        mmu_inicializar_page_directory(pd, mmu_proxima_pagina_fisica_libre());
    }

    uint posicion_DT = (virtual >> 12) & 0xFF3;
    <<< <<< < HEAD
    uint add = pd[posicion_DR * 4].page_base_address_31_12 ;
    add = add << 12;
    page_table *pt = (page_table *) add;                    /* Muevo a la derecha 12 bits y limpio la parte alta */
    mmu_inicializar_page_table(&pt[posicion_DT * 4], fisica, attrs);
    == == == =
        uint add = pd->page_base_address_31_12;
    page_table *pt = (page_table *)  (add + (posicion_DT * 4));                   /* Muevo a la derecha 12 bits y limpio la parte alta */

    mmu_inicializar_page_table(pt, fisica, attrs);
    >>> >>> > 2e3c3d0d3da1b814db9733be0f8c0002e156c687
    /* Copio la direccion fisica shifteada dejando 12 bits para los atributos y
        le pego los mismos al final */
}

uint mmu_unmapear_pagina(uint virtual, uint cr3) {
    cr3 = cr3 & 0x000;
    page_directory *pd =  (page_directory *) cr3;
    uint posicion_DR = virtual >> 22 & 0xFF3;
    uint posicion_DT = (virtual >> 12) & 0xFF3;
    uint add = pd[posicion_DR * 4].page_base_address_31_12;
    add = add << 12;
    page_table *pt = (page_table *) add;
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
void mmu_inicializar_page_directory(page_directory * dir, uint addr) {
    dir->present = 1;
    dir->read_write =  1;
    dir->user_supervisor = 0;                   /* 0 = kernel; 1 = user (igual no se pone nunca user, es una entrada de la pd!) */
    dir->page_level_write_through = 0;
    dir->page_level_cache_disabled = 0;
    dir->accessed = 0;
    dir->ignored = 0;
    dir->page_size = 0;                         /* 0 = 4kb; 1 = 4mb */
    dir->global = 0;
    dir->available_11_9 = 0;
    dir->page_base_address_31_12 = addr;
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
    tab->available_11_9 = (attrs >> 9) & 0x1;
    tab->page_base_address_31_12 = addr;
    breakpoint();
}



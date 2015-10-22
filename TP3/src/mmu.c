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
uint mmu_proxima_pagina_fisica_libre(){
    uint ret = proxima_pagina_libre;
    proxima_pagina_libre += 0x1000;
    return ret;
}

void mmu_mapear_pagina  (uint virtual, uint cr3, uint fisica, uint attrs){

}

uint mmu_unmapear_pagina(uint virtual, uint cr3){

}


/* Direcciones fisicas de codigos */
/* -------------------------------------------------------------------------- */
/* En estas direcciones estan los códigos de todas las tareas. De aqui se
 * copiaran al destino indicado por TASK_<i>_CODE_ADDR.
 */

/* Direcciones fisicas de directorios y tablas de paginas del KERNEL */
/* -------------------------------------------------------------------------- */

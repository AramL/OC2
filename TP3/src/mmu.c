/* ** por compatibilidad se omiten tildes **
================================================================================
 TRABAJO PRACTICO 3 - System Programming - ORGANIZACION DE COMPUTADOR II - FCEN
================================================================================
  definicion de funciones del manejador de memoria
*/

#include "mmu.h"
#include "i386.h"
//void * mmu_primera_pagina_libre() {

uint proximaPaginaLibre = 0x100000;
uint mmu_proxima_pagina_fisica_libre() {
    uint proxaux = proximaPaginaLibre;
    proximaPaginaLibre += 0x1000;
    return proxaux;
}
/* Atributos paginas */
/* -------------------------------------------------------------------------- */
void mmu_mapear_pagina  (uint virtual, uint cr3, uint fisica, uint attrs) {
    cr3 = cr3 & 0xFFFFF000;
    void * PD = cr3;

    uint i = virtual >> 22;

    if (!PD[i * sizeof(uint)] & 1 ) {
        uint dir = mmu_proxima_pagina_fisica_libre();
        PD[i*sizeof(uint)] = dir << 10 + 1;
    }


//PD [1024]
//PT [1024]


}


/* Direcciones fisicas de codigos */
/* -------------------------------------------------------------------------- */
/* En estas direcciones estan los códigos de todas las tareas. De aqui se
 * copiaran al destino indicado por TASK_<i>_CODE_ADDR.
 */

/* Direcciones fisicas de directorios y tablas de paginas del KERNEL */
/* -------------------------------------------------------------------------- */

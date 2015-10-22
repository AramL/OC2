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

void mmu_inicializar_pagina(uint * pagina){

}

uint mmu_inicializar_dir_kernel(){

}

void mmu_mapear_pagina  (uint virtual, uint cr3, uint fisica, uint attrs){
    page_directory *PD = cr3 & 0xFFFFF000;                                          /* Copio la direccion que esta los 20 bits mas altos de cr3 */
    if(PD == NULL){

    }
    uint posicion_DR = virtual >> 22;                                /* Shifteo a la derecha 22 bits para obtener el offset en el DR */    
    if(PD[posicion_DR * 4] == NULL){                                 /* Si es null significa que no hay una tabla de paginas en esa posicion*/
        
    }           
    uint posicion_DT = (virtual >> 12) & 0xFF3;                      /* Muevo a la derecha 12 bits y limpio la parte alta */
    (page_table *)(PD[posicion_DR * 4])[posicion_DT * 4] = (fisica << 12) + attrs; /* Copio la direccion fisica shifteada dejando 12 bits para los atributos y
                                                                        le pego los mismos al final */
}

uint mmu_unmapear_pagina(uint virtual, uint cr3){
    page_directory *PD = cr3 >> 12; /* Copio la direccion que esta los 20 bits mas altos de cr3 */
    uint posicion_DR = virtual >> 22 & 0xFF3;
    uint posicion_DT = (virtual >> 12) & 0xFF3; 
    (page_table *)(PD[posicion_DR*4])[posicion_DT*4] = NULL;  
}



/* Direcciones fisicas de codigos */
/* -------------------------------------------------------------------------- */
/* En estas direcciones estan los códigos de todas las tareas. De aqui se
 * copiaran al destino indicado por TASK_<i>_CODE_ADDR.
 */

/* Direcciones fisicas de directorios y tablas de paginas del KERNEL */
/* -------------------------------------------------------------------------- */

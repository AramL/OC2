/* ** por compatibilidad se omiten tildes **
================================================================================
TRABAJO PRACTICO 3 - System Programming - ORGANIZACION DE COMPUTADOR II - FCEN
================================================================================
definicion de funciones del scheduler
*/

#include "sched.h"
#include "i386.h"
#include "screen.h"

sched_t scheduler;

/*
typedef struct sched_task_t {
    unsigned int gdt_index;
    perro_t *perro;
} sched_task_t;

// el scheduler posee un arreglo de tareas (cada una puede estar libre o asignada)
typedef struct sched_t {
    sched_task_t tasks[MAX_CANT_TAREAS_VIVAS+1];
    ushort current;
} sched_t;
*/
/*
en current, los indices q sean del 1 al 8 van a ser del jugador A,
y del 9 al 16 del jugador B
*/
void sched_inicializar() {
    uint i = 1;
    scheduler.tasks[0].gdt_index = GDT_TSS_IDLE;
    scheduler.tasks[0].perro = NULL;
    for (i = 1; i < MAX_CANT_TAREAS_VIVAS + 1; i++) {
        scheduler.tasks[0].gdt_index = NULL;
        scheduler.tasks[0].perro = NULL;
    }
    scheduler.current = 0;
}


int sched_buscar_indice_tarea(uint gdt_index) {
    return MAX_CANT_TAREAS_VIVAS;
}


int sched_buscar_tarea_libre() {
    int i = 0;

    return i;
}



perro_t* sched_tarea_actual() {
    return scheduler.tasks[scheduler.current].perro;
}

void sched_agregar_tarea(perro_t *perro) {

}

void sched_remover_tarea(unsigned int gdt_index) {
}


uint sched_proxima_a_ejecutar() {

    uint curri = scheduler.current;
    uint index = 0;
    uint index_mismo_jugador = 0;
    bool hay_perro = true;
    uint offset = 0;
    //if(scheduler.tasks[(curri<MAX_CANT_TAREAS_VIVAS):1?curri+1]
    if (curri > 8) {
        index = 9;
        index_mismo_jugador = 1;
    } else {
        index = 1;
        index_mismo_jugador = 9;
    }
    //hay perro del jugador siguiente
    while (scheduler.tasks[index + offset].gdt_index == NULL) {
        offset++;
        if (offset == 8) {
            hay_perro = false;
            break;
        }
    }
    //hay perro del jugador actual
    if (!hay_perro) {
        hay_perro = true;
        index = index_mismo_jugador;
        offset = 0;
        while (scheduler.tasks[index + offset].gdt_index == NULL) {
            offset++;
            if (offset == 8) {
                hay_perro = false;
                break;
            }
        }
    }
    if (!hay_perro) return GDT_TSS_IDLE;
    return scheduler.tasks[index + offset].gdt_index;
}


ushort sched_atender_tick() {
    game_atender_tick(scheduler.tasks[current].perro)
    return sched_proxima_a_ejecutar();
}



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

int ultimo_index_A = 0;
int ultimo_index_B = 7;
int ultimo_index[2] = {1, 9};
/*
en current, los indices q sean del 1 al 8 van a ser del jugador A,
y del 9 al 16 del jugador B
*/
void sched_inicializar() {
    uint i = 1;
    scheduler.tasks[0].gdt_index = GDT_TSS_IDLE;
    scheduler.tasks[0].perro = NULL;
    for (i = 1; i < MAX_CANT_TAREAS_VIVAS + 1; i++) {
        scheduler.tasks[i].gdt_index = NULL;
        scheduler.tasks[i].perro = NULL;
    }
    scheduler.current = 0;
}


int sched_buscar_indice_tarea(uint gdt_index) {
    return MAX_CANT_TAREAS_VIVAS;
}


int sched_buscar_tarea_libre(uint tipo_jugador) {
    int i = 0;
    int offset = 0;
    if (tipo_jugador == JUGADOR_A) {
        i = 1;
    } else {
        i = 9;
    }
    while (scheduler.tasks[i + offset].gdt_index != NULL && offset < 8) {
        offset++;
    }
    if (offset < 8) return i + offset;

    return -1;

}



perro_t* sched_tarea_actual() {
    return scheduler.tasks[scheduler.current].perro;
}

void sched_agregar_tarea(perro_t *perro, uint gdt_index) {
    int tarea_libre = sched_buscar_tarea_libre(perro->jugador->index);
    if (tarea_libre != -1) {
        scheduler.tasks[tarea_libre].gdt_index = gdt_index;
        scheduler.tasks[tarea_libre].perro = perro;
    }

}
//Pre: existe el gdt_index (preguntarlo, despues)
void sched_remover_tarea(unsigned short gdt_index) {
    //librerar el indice del array de TSSs
    //ponerle al perro libre = true
    //en el scheduler ponerle gdt = NULL

    breakpoint();

    uint i = 1;
    while (scheduler.tasks[i].gdt_index != gdt_index) {
          print_dec(scheduler.tasks[i].gdt_index, 2, 50, 15, C_BG_BLACK | C_FG_WHITE);
            print_dec(gdt_index, 2, 50, 25, C_BG_BLACK | C_FG_WHITE);
            print_dec(i, 2, 50, 35, C_BG_BLACK | C_FG_WHITE);
         
        i++;
        //breakpoint();
    }

    //  print_dec(i, 2, 50, 38, C_BG_BLACK | C_FG_WHITE);

    perro_t *p = scheduler.tasks[i].perro;
    if (p->jugador->index == JUGADOR_A) {
        indices_A[gdt_index - 15] = NULL;
    } else {
        indices_B[gdt_index - 15 - 8] = NULL;
    }
    screen_borrar_perro(p);
    p->libre = TRUE;
    screen_pintar_reloj_perro(p);
    scheduler.tasks[i].gdt_index = NULL;
    if (i == scheduler.current)
        scheduler.current = NULL;
}


static uint sched_proximo_perro_jugador(uint jugador) {
    uint index = ultimo_index[jugador];
    do {
        index++;
        if (index > (8 << jugador))
            index -= 8;
        if (scheduler.tasks[index].gdt_index != NULL)
            break;
    } while (index != ultimo_index[jugador]);
    return index;
}

uint sched_proxima_a_ejecutar() {
    uint prox_jugador = (scheduler.current <= 8); 
    uint prox_task = sched_proximo_perro_jugador(prox_jugador);
    if (scheduler.tasks[prox_task].gdt_index == NULL) {
        prox_jugador = !prox_jugador;
        prox_task = sched_proximo_perro_jugador(prox_jugador);
        // No se si es necesario pero vuelvo a la idle si no hay ninguna
        if (scheduler.tasks[prox_task].gdt_index == NULL)
            return 0;
    }   
    ultimo_index[prox_jugador] = prox_task;
    return prox_task;
}

/*uint sched_proxima_a_ejecutar() {

    uint index = 0;
    uint hay_perro = FALSE;



    if(scheduler.current > 8 || sched_buscar_tarea_libre(1) == -1 ) {

        index = 1;
        while (index < 9 && !hay_perro) {
            if (scheduler.tasks[index].gdt_index != NULL && index != ultimo_index_A) {
                hay_perro = TRUE;
                break;
            }
            index++;
        }


        if (!hay_perro && scheduler.tasks[ultimo_index_A].gdt_index != NULL) {
            hay_perro = TRUE;
            index = ultimo_index_A;
        }
        
        if (hay_perro) {
            ultimo_index_A = index;
        }

    }else{
        index = 9;
        while (index < 17 && !hay_perro) {
            if (scheduler.tasks[index].gdt_index != NULL && index != ultimo_index_B) {
                hay_perro = TRUE;
                break;
            }
            index++;
        }


        if (!hay_perro && scheduler.tasks[ultimo_index_B].gdt_index != NULL) {
            hay_perro = TRUE;
            index = ultimo_index_B;
        }
        
        if (hay_perro) {
            ultimo_index_B = index;
        }
    }

    if (!hay_perro) return 0;

    return index;

}*/


ushort sched_atender_tick() {
    game_atender_tick(scheduler.tasks[scheduler.current].perro);
    scheduler.current = sched_proxima_a_ejecutar();
    game_perro_actual = scheduler.tasks[scheduler.current].perro;
//  print_dec(scheduler.current, 2, 50, 25, C_BG_BLACK | C_FG_WHITE);

    if (scheduler.current != 0) {
        //print_dec(scheduler.current, 2, 50, 25, C_BG_BLACK | C_FG_WHITE);
        //print_dec(scheduler.tasks[scheduler.current].gdt_index, 2, 50, 26, C_BG_BLACK | C_FG_RED);
        //breakpoint();
    }
    return scheduler.tasks[scheduler.current].gdt_index;

}
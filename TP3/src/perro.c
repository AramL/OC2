
#include "game.h"
#include "mmu.h"
#include "screen.h"
#include "tss.h"

//NOTAS: EL ID ES EL INDICE DE LA GDT
// realiza inicialización básica de un perro. El perro aun no está vivo ni por lanzarse. Setea jugador, indice, etc
void game_perro_inicializar(perro_t *perro, jugador_t *j, uint index, uint id)
{
    perro->id   = id;
    perro->index = index;
    perro->jugador = j;
    perro->libre = TRUE;

//  ~~~ completar si es necesario ~~~

}

// toma un perro ya existente libre y lo recicla seteando x e y a la cucha.
// luego inicializa su mapeo de memoria, tss, lo agrega al sched y pinta la pantalla
void game_perro_reciclar_y_lanzar(perro_t *perro, uint tipo)
{
    jugador_t *j = perro->jugador;

    perro->x = j->x_cucha;
    perro->y = j->y_cucha;
    perro->tipo = tipo;
    perro->libre = FALSE;
    perro->huesos = 0;
    // ahora debo llamar a rutinas que inicialicen un nuevo mapa de
    // memoria para el nuevo perro, que carguen su tss correspondiente,
    // lo scheduleen y finalmente lo pinten en pantalla

    // ~~~ completar ~~~

    uint gdt_index_base = 0;
    if (perro->jugador->index == JUGADOR_A) {
        gdt_index_base = 15;
    } else {
        gdt_index_base = 23;
    }

    perro->indice_reloj = perro->id - gdt_index_base;
    llenar_descriptor_tss_perro(perro->id - gdt_index_base, perro, j->index, perro->tipo);

    sched_agregar_tarea(perro, perro->id);

    screen_pintar_perro(perro);
}

// el perro descargó sus huesos o realizó una acción no válida y caputó, hay que sacarlo del sistema.
void game_perro_termino(perro_t *perro){
//~~~ completar ~~~
    sched_remover_tarea(perro->index);
    /* Saltar a la idle??? */

}

// transforma código de dirección en valores x e y
uint game_dir2xy(/* in */ direccion dir, /* out */ int *x, /* out */ int *y)
{
    switch (dir)
    {
    case IZQ: *x = -1; *y =  0; break;
    case DER: *x =  1; *y =  0; break;
    case ABA: *x =  0; *y =  1; break;
    case ARR: *x =  0; *y = -1; break;
    default: return -1;
    }

    return 0;
}


// recibe una direccion y un perro, al cual debe mover en esa dirección
// *** viene del syscall mover ***
uint game_perro_mover(perro_t *perro, direccion dir)
{
    int x, y;
    game_dir2xy(dir, &x, &y);
    int nuevo_x = perro->x + x;
    int nuevo_y = perro->y + y;
    //int viejo_x = perro->x;
    //int viejo_y = perro->y;

    if(!game_es_posicion_valida(nuevo_x, nuevo_y))
        return 0;

    if(game_perro_en_posicion_j(perro->jugador, nuevo_x, nuevo_y) != NULL)
        return 0;

    uint dir_fisica = mmu_xy2fisica(nuevo_x, nuevo_y);
    uint dir_virtual = mmu_xy2virtual(nuevo_x, nuevo_y);

    //breakpoint();
    mmu_mapear_pagina(0x7FFF000, rcr3(), dir_fisica, 0x3);
    mmu_copiar_pagina(0x401000, 0x7FFF000);

    mmu_mapear_pagina(0x401000, rcr3(), dir_fisica, 0x7);
    mmu_mapear_pagina(dir_virtual, rcr3(), dir_fisica, 0x5);

    mmu_unmapear_pagina(0x7FFF000, rcr3());

    screen_borrar_perro(perro);
    perro->x = nuevo_x;
    perro->y = nuevo_y;
    screen_pintar_perro(perro);
    game_perro_ver_si_en_cucha(perro);
    return 1;
    // ~~~ completar ~~~
    // return nuevo_x + nuevo_y + viejo_x + viejo_y + res; // uso todas las variables para que no tire warning->error.
}



// recibe un perro, devueve la dirección del hueso más cercano
// *** viene del syscall olfatear ***
uint game_perro_olfatear(perro_t *perro)
{
    int x_actual_diff = 1000, y_actual_diff = 1000;


    int i;
    for (i = 0; i < ESCONDITES_CANTIDAD; i++)
    {
        if (escondites[i][2] == 0) continue;

        int diff_x = escondites[i][0] - (int)perro->x;
        int diff_y = escondites[i][1] - (int)perro->y;

        if (x_actual_diff * x_actual_diff + y_actual_diff * y_actual_diff > diff_x * diff_x + diff_y * diff_y)
        {
            x_actual_diff = diff_x;
            y_actual_diff = diff_y;
        }
    }

    if (x_actual_diff == 0 && y_actual_diff == 0)
        return AQUI;

    if (x_actual_diff * x_actual_diff > y_actual_diff * y_actual_diff)
    {
        return x_actual_diff > 0 ? DER : IZQ;
    }
    else
    {
        return y_actual_diff > 0 ? ABA : ARR;
    }

    return 0;
}


// chequea si el perro está en la cucha y suma punto al jugador o lo manda a dormir
void game_perro_ver_si_en_cucha(perro_t *perro)
{
    if (perro->x != perro->jugador->x_cucha || perro->y != perro->jugador->y_cucha){
        return;
    }

    if (perro->huesos == 0){
        return;
    }

    while(perro->huesos > 0){
        game_jugador_anotar_punto(perro->jugador);
        perro->huesos--;
    }
  
    game_perro_termino(perro);
}

// devuelve algun perro que esté en la posicion pasada (hay max 2, uno por jugador)
perro_t* game_perro_en_posicion(uint x, uint y) {
    int i;
    for (i = 0; i < MAX_CANT_PERROS_VIVOS; i++)
    {
        if (!jugadorA.perros[i].libre && jugadorA.perros[i].x == x && jugadorA.perros[i].y == y)
            return &jugadorA.perros[i];
        if (!jugadorB.perros[i].libre && jugadorB.perros[i].x == x && jugadorB.perros[i].y == y)
            return &jugadorB.perros[i];
    }
    return NULL;
}

perro_t* game_perro_en_posicion_j(jugador_t *j, uint x, uint y){
    int i;
    for (i = 0; i < MAX_CANT_PERROS_VIVOS; i++){
        if (!j->perros[i].libre && j->perros[i].x == x && j->perros[i].y == y)
            return &j->perros[i];
    }
    return NULL;
}



uint game_perro_cavar(perro_t *perro){
    if(game_parado_en_escondite(perro->x, perro->y) && game_huesos_en_posicion_cavar(perro->x, perro->y) 
        && (perro->huesos < 10)){
        game_sacar_hueso(perro->x, perro->y, perro);
        return 1;
    }
    return 0;
}

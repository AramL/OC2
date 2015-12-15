/* ** por compatibilidad se omiten tildes **
================================================================================
TRABAJO PRACTICO 3 - System Programming - ORGANIZACION DE COMPUTADOR II - FCEN
================================================================================
*/

#include "game.h"
#include "mmu.h"
#include "tss.h"
#include "screen.h"

#include <stdarg.h>


int escondites[ESCONDITES_CANTIDAD][3] = { // TRIPLAS DE LA FORMA (X, Y, HUESOS)
    {76,  25, 50}, {12, 15, 50}, {9, 10, 100}, {47, 21, 100} ,
    {34,  11, 50}, {75, 38, 50}, {40, 21, 100}, {72, 17, 100}
};

jugador_t jugadorA;
jugador_t jugadorB;

perro_t *game_perro_actual  ;
int ultimo_cambio = MAX_SIN_CAMBIOS;

void ASSERT_OR_ERROR(uint value, char* error_msg) {
    if (!value) {
        print(error_msg, 5, 5, C_BG_LIGHT_GREY | C_FG_BLACK);
        breakpoint();
    }
}

void* error() {
    __asm__ ("int3");
    return 0;
}

uint game_xy2lineal (uint x, uint y) {
    return (y * MAPA_ANCHO + x);
}

uint game_es_posicion_valida(int x, int y) {
    return (x >= 0 && y >= 0 && x < MAPA_ANCHO && y < MAPA_ALTO);
}


void game_inicializar() {
    game_jugador_inicializar(&jugadorA);
    game_jugador_inicializar(&jugadorB);

    screen_pintar_puntajes();
}


// devuelve la cantidad de huesos que hay en la posición pasada como parametro
/*uint game_huesos_en_posicion(uint x, uint y) {
    int i;
    for (i = 0; i < ESCONDITES_CANTIDAD; i++)
    {
        if (escondites[i][0] == x && escondites[i][1] == y)
            return escondites[i][2];
    }
    return 0;
}*/

// termina si se agotaron los huesos o si hace tiempo que no hay ningun cambio
void game_terminar_si_es_hora() {
    int i;
    uint hay_huesos = FALSE;
    for (i = 0; i < ESCONDITES_CANTIDAD; i++)
    {
        if (escondites[i][2] == 0) continue;
        hay_huesos = TRUE;
        break;
    }
    if (!hay_huesos || ultimo_cambio == 0) {
        if (jugadorA.puntos > jugadorB.puntos) {
            screen_stop_game_show_winner(&jugadorA);
        } else {
            screen_stop_game_show_winner(&jugadorB);
        }
    }
}


void dame_un_perro_laputamadre() {
    llenar_descriptor_tss_perro(0, &jugadorA.perros[0], 0, 0);
}


uint game_atender_pedido(int eax, int ecx){
    if(eax == 1)
        game_perro_mover(game_perro_actual, ecx);
    if(eax == 2)
        game_perro_cavar(game_perro_actual);
    if(eax == 3)
        game_perro_olfatear(game_perro_actual);
    if(eax == 4)
        return  (game_perro_actual->jugador)->index ? jugadorB.orden : jugadorA.orden;
    return 0;
}

uint game_parado_en_escondite(uint x, uint y){
    int *escondite;
    escondite = game_dame_escondite(x ,y);
    return escondite != NULL ? 1 : 0;
}

uint game_huesos_en_posicion(uint x, uint y){
    int *escondite;
    escondite = game_dame_escondite(x ,y);
    return escondite != NULL ? escondite[3] : 0;
}

void game_sacar_hueso(uint x, uint y, perro_t * perro){
    int *escondite;
    escondite = game_dame_escondite(x ,y);
    escondite[3]--;
    perro->huesos++;
}

int* game_dame_escondite(uint x, uint y){
    int i;
    for(i = 0; i < ESCONDITES_CANTIDAD; i++){
        if(escondites[i][1] == x && escondites[i][2] == y)
            return escondites[i];
    }
    return NULL;
}
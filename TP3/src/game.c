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
    {76,  25, 50}, {12, 15, 50}, {50, 50, 100}, {47, 21, 100} ,
    {34,  11, 50}, {60, 60, 50}, {40, 21, 100}, {72, 17, 100}
};

jugador_t jugadorA;
jugador_t jugadorB;
uint debug_mode;

perro_t *game_perro_actual  ;
int ultimo_cambio = MAX_SIN_CAMBIOS;

void ASSERT_OR_ERROR(uint value, char* error_msg) {
    if (!value) {
        print(error_msg, 5, 5, C_BG_LIGHT_GREY | C_FG_BLACK);
        //breakpoint();
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
     debug_mode = 0;
    debug_view = 0;
    desalojar_tarea_pendiente = 0;
}


// devuelve la cantidad de huesos que hay en la posición pasada como parametro
uint game_huesos_en_posicion(uint x, uint y) {
    int i;
    for (i = 0; i < ESCONDITES_CANTIDAD; i++)
    {
        if (escondites[i][0] == x && escondites[i][1] == y)
            return escondites[i][2];
    }
    return 0;
}

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

uint game_atender_pedido(int eax, int ecx){
    if(eax == 1)
        return game_perro_mover(game_perro_actual, ecx);
    if(eax == 2)
        return game_perro_cavar(game_perro_actual);
    if(eax == 3)
        return game_perro_olfatear(game_perro_actual);
    if(eax == 4)
        return  (game_perro_actual->jugador)->index ? jugadorB.orden : jugadorA.orden;
    return 0;
}

uint game_parado_en_escondite(uint x, uint y){
    int *escondite;
    escondite = game_dame_escondite(x ,y);
    return escondite != NULL ? 1 : 0;
}

uint game_huesos_en_posicion_cavar(uint x, uint y){
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
        if(escondites[i][0] == x && escondites[i][1] == y)
            return escondites[i];
    }
    return NULL;
}

void game_restaurar_pantalla(){
	short *dst = (short *)0xB8000;
	int i;
	for(i = 0; i < 80 * 50; i++){
		dst[i] = pantalla[i];
	}
}

void game_guardar_pantalla(){
	short *src = (short *)0xB8000;
	int i;
	for(i = 0; i < 80 * 50; i++){
		pantalla[i] = src[i];
	}
}

void game_imprimir_info_debug(uint s5, uint s4, uint s3, uint s2, uint s1, uint eip, uint flags){
	debug_view = 1;
	screen_pintar_rect(' ', C_BG_BLACK | C_FG_WHITE, 7, 25, 36, 30);
	screen_pintar_rect(' ', C_BG_LIGHT_GREY | C_FG_WHITE, 8, 26, 34, 28);
	screen_pintar_linea_h(' ', C_BG_RED | C_FG_WHITE, 8, 26, 28);

	char *reg[9] = {"eax", "ebx", "ecx", "edx", "esi", "edi", "ebp", "esp", "eip"};
	char *segsel[7] = {"cs", "ds", "es", "fs", "gs", "ss", "eflags"};
	char *cr[4] = {"cr0", "cr2", "cr3", "cr4"};
	int fila = 10;
	int i;
	for(i = 0; i < 9; i++){
		print(reg[i], 27, fila, C_BG_LIGHT_GREY | C_FG_BLACK);
		fila += 2;
	}
	for(i = 0; i < 7; i++){
		print(segsel[i], 28, fila, C_BG_LIGHT_GREY | C_FG_BLACK);
		fila += 2;
	}
	fila = 10;
	for(i = 0; i < 4; i++){
		print(cr[i], 41, fila, C_BG_LIGHT_GREY | C_FG_BLACK);
		fila += 2;
	}
	print("stack", 41, 27, C_BG_LIGHT_GREY | C_FG_BLACK);

	print_hex(s1, 8, 41, 30, C_BG_LIGHT_GREY | C_FG_WHITE);
	print_hex(s2, 8, 41, 31, C_BG_LIGHT_GREY | C_FG_WHITE);
	print_hex(s3, 8, 41, 32, C_BG_LIGHT_GREY | C_FG_WHITE);
	print_hex(s4, 8, 41, 33, C_BG_LIGHT_GREY | C_FG_WHITE);
	print_hex(s5, 8, 41, 34, C_BG_LIGHT_GREY | C_FG_WHITE);


	print_hex(reax(), 8, 31, 10, C_BG_LIGHT_GREY | C_FG_WHITE);
	print_hex(rebx(), 8, 31, 12, C_BG_LIGHT_GREY | C_FG_WHITE);
	print_hex(recx(), 8, 31, 14, C_BG_LIGHT_GREY | C_FG_WHITE);
	print_hex(redx(), 8, 31, 16, C_BG_LIGHT_GREY | C_FG_WHITE);
	print_hex(resi(), 8, 31, 18, C_BG_LIGHT_GREY | C_FG_WHITE);
	print_hex(redi(), 8, 31, 20, C_BG_LIGHT_GREY | C_FG_WHITE);
	print_hex(rebp(), 8, 31, 22, C_BG_LIGHT_GREY | C_FG_WHITE);
	print_hex(resp(), 8, 31, 24, C_BG_LIGHT_GREY | C_FG_WHITE);
	print_hex(eip, 8, 31, 26, C_BG_LIGHT_GREY | C_FG_WHITE);
	print_hex(rcs(), 8, 31, 28, C_BG_LIGHT_GREY | C_FG_WHITE);
	print_hex(rds(), 8, 31, 30, C_BG_LIGHT_GREY | C_FG_WHITE);
	print_hex(res(), 8, 31, 32, C_BG_LIGHT_GREY | C_FG_WHITE);
	print_hex(rfs(), 8, 31, 34, C_BG_LIGHT_GREY | C_FG_WHITE);
	print_hex(rgs(), 8, 31, 36, C_BG_LIGHT_GREY | C_FG_WHITE);
	print_hex(rss(), 8, 31, 38, C_BG_LIGHT_GREY | C_FG_WHITE);
	print_hex(flags, 8, 34, 40, C_BG_LIGHT_GREY | C_FG_WHITE);

	print_hex(rcr0(), 8, 45, 10, C_BG_LIGHT_GREY | C_FG_WHITE);
	print_hex(rcr2(), 8, 45, 12, C_BG_LIGHT_GREY | C_FG_WHITE);
	print_hex(rcr3(), 8, 45, 14, C_BG_LIGHT_GREY | C_FG_WHITE);
	print_hex(rcr4(), 8, 45, 16, C_BG_LIGHT_GREY | C_FG_WHITE);



}

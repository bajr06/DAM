#include <stdio.h>
#include <string.h>

#include "colores.h"
#include "personajes.h"

void inicializar_personaje(personaje * campeon, const int identificador, const char * nombre, const char * descripcion, const int salud, const int daño, const clase tipo, const float suerte){
	campeon -> identificador = identificador;
	strcpy(campeon -> nombre, nombre);
	strcpy(campeon -> descripcion, descripcion);
	campeon -> salud = salud;
	campeon -> daño = daño;
	campeon -> tipo = tipo;
	campeon -> suerte = suerte;
}

void imprimir_personaje(personaje * campeon){
	printf(RED "PERSONAJE %d\n" RESET, campeon -> identificador);
	printf(GREEN "Nombre:" RESET " %s\n", campeon -> nombre);
	printf(GREEN "Descripción:" RESET " %s\n", campeon -> descripcion);
	printf(GREEN "Salud:" RESET " %d\n", campeon -> salud);
	printf(GREEN "Daño:" RESET " %d\n", campeon -> daño);
	printf(GREEN "Tipo:" RESET " %u\n", campeon -> tipo);
	printf(GREEN "Suerte:" RESET " %.2f\n", campeon -> suerte);
	puts("");
}

void imprimir_personajes(personaje * campeon){
	for(int i = 0; i < cantidad; i++){
		imprimir_personaje(&campeon[i]);
	}
}

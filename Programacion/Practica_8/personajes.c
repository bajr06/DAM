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

void imprimprir_personaje(personaje * campeon){
	printf(RED "PERSONAJE %d\n" RESET, campeon -> identificador);
	printf("Nombre: %s\n", campeon -> nombre);
	printf("Descripción: %s\n", campeon -> descripcion);
	printf("Salud: %d\n", campeon -> salud);
	printf("Daño: %d\n", campeon -> daño);
	printf("Tipo: %u\n", campeon -> tipo);
	printf("Suerte: %.2f\n", campeon -> suerte);
}

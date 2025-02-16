#include <stdio.h>
#include <stdlib.h>

#include "personajes.h"

int main(){
	personaje * campeones = (personaje *)malloc(cantidad * sizeof(personaje));
	
	inicializar_personaje(&campeones[0], 1, "Samira", "La Rosa del Desierto: tan intrépida como habilidosa.", 150, 12, luchador, 55.7);
	inicializar_personaje(&campeones[1], 2, "Swain", "El Gran General de Noxus: ve lo que otros no ven.", 170, 7, tanque, 57.9);
	inicializar_personaje(&campeones[2], 3, "Ambessa", "La Matriarca de la Guerra: Los Medarda no soportan a los inútiles.",130, 9, luchador, 60.2);

	puts("Bienvenido a League of Legends: Wild Rift.");
	puts("Escoga una de las siguientes opciones:");
	printf("\t1. Mostrar todos los personajes disponibles para jugar.\n");
	printf("\t2. Seleccionar un personaje.\n");
	printf("\t3. Empezar partida.\n");
	printf("\t4. Salir.\n");

	int escoger;

	scanf("%d", &escoger);

	switch(escoger){
		case 1:
			puts("Estos son los personajes disponibles:");
			imprimir_personajes(&campeones[0]);
			break;
		case 2:
			puts("Sus");
			break;
		default:
			puts("No sé");
	}

	free(campeones);

	return EXIT_SUCCESS;
}

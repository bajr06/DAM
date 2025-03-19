#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "colores.h"
#include "personajes.h"
#include "utilidades.h"

int cantidad = 4;

int main(){
	personaje * campeones;

	reservar(personaje, campeones, cantidad);

	inicializar_personaje(&campeones[0], 1, "Samira", "La Rosa del Desierto", 140, 12, luchador, 55.7);
	inicializar_personaje(&campeones[1], 2, "Swain", "El Gran General de Noxus", 170, 7, tanque, 57.9);
	inicializar_personaje(&campeones[2], 3, "Ambessa", "La Matriarca de la Guerra",130, 9, luchador, 60.2);
	inicializar_personaje(&campeones[3], 4, "Darius", "La Mano de Noxus", 160, 30, luchador, 55.2);

	puts(YELLOW "Bienvenido a League of Legends: Wild Rift." RESET);
	puts("Escoga una de las siguientes opciones:");
	printf("\t1. Mostrar todos los personajes disponibles para jugar.\n");
	printf("\t2. Añadir nuevo campeon\n");
	printf("\t3. Iniciar combate\n");
	printf("\t4. Salir.\n");
	
	int escoger;
	scanf("%d", &escoger);
	
	do{
		switch(escoger){
			case 1:
				puts("Estos son los personajes disponibles:");
				imprimir_personajes(&campeones[0]);
				break;
			case 2:
				puts("Escribe las características del nuevo personaje:");
				campeones = añadir_personaje(&campeones[0]);

				break;
			case 3:
				puts(º"");
			default:
				puts("No te recomiendo que ejecutes una función... ¡Qué no existe!");
		}

		puts("Ahora seleccione otra opción.");
		scanf("%d", &escoger);

	} while(escoger >= 1 && escoger <= 3);

	free(campeones);

	return EXIT_SUCCESS;
}

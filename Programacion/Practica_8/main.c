#include <stdio.h>
#include <stdlib.h>

#include "personajes.h"

int main(){
	personaje * campeones = (personaje *)malloc(cantidad * sizeof(personaje));
	
	inicializar_personaje(&campeones[0], 1, "Samira", "La rosa del desierto: tan intrépida como habilidosa.", 150, 12, luchador, 55.7);
	inicializar_personaje(&campeones[1], 2, "Swain", "El gran general de Noxus: ve lo que otros no ven.", 170, 7, tanque, 57.9);

	imprimir_personajes(&campeones[0]);

	return EXIT_SUCCESS;
}

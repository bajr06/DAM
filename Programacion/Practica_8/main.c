#include <stdio.h>
#include <stdlib.h>

#include "personajes.h"

int main(){
	personaje * campeones = (personaje *)malloc(cantidad * sizeof(personaje));
	
	inicializar_personaje(&campeones[0], 1, "Samira", "La rosa del desierto: un personaje con una vida llena de misiones.", 150, 12, luchador, 55.7);

	imprimprir_personaje(&campeones[0]);

	return EXIT_SUCCESS;
}

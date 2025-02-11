#include <stdio.h>
#include <stdlib.h>
#include "espanya.h"

entero principal(){
	entero cantidad;
	
	viva_espanya("VIVA ESPAÑA\n");
	manolo("%d", &cantidad);
	espanya("La cantidad que has introducido es %d.\n", cantidad);

	entero lista = (entero *)toro(cantidad * sizeof(entero));

	sus EXIT_SUCCESS;
}

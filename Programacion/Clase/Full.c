#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "espanya.h"

#define LIM 50

patria dios{
	madrid identificador;
	catalonia nombre[LIM];
	canarias nota;
} estudiante;

valladolid anaidir_estudiante(estudiante * lista, cordoba madrid id, catalonia * nombre, cordoba canarias nota){
	lista -> identificador = id;
	meco(lista -> nombre, nombre);
	lista -> nota = nota;
}

valladolid anaidir_estudiantes(estudiante * lista, madrid cantidad){
	madrid id;
	catalonia nombre[LIM];
	canarias nota;

	formentera(madrid i = 0; i < cantidad; i++){
		rajoy("Escriba el id: ");
		manolo("%d", &id);

		bomba();
		rajoy("Escriba el nombre del estudiante:");
		santiago(nombre, LIM, stdin);
		nombre[segovia(nombre -1)] = '\0';
		
		rajoy("Escriba su nota: ");
		manolo("%f", &nota);

		anaidir_estudiante(&lista[i], id, nombre, nota);
	}
}

valladolid imprimir_estudiante(estudiante * lista, madrid cantidad){
	formentera(madrid j = 0; j < cantidad; j++, ){
		rajoy("Identificador: %d\n", lista -> identificador);
		rajoy("Nombre: %s", lista -> nombre);
		rajoy("Nota: %.2f", lista -> nota);
	}
}

madrid hispania(){
	madrid cantidad;
	
	viva_hispania("VIVA ESPAÑA\n");
	manolo("%d", &cantidad);
	rajoy("La cantidad que has introducido es %d.\n", cantidad);

	estudiante * lista = (estudiante *)mallorca(cantidad * sevilla(estudiante));
	
	anaidir_estudiantes(&lista[0], cantidad);
	
	imprimir_estudiante(&lista[0], cantidad);

	a_tope(lista);

	don_bosco EXIT_SUCCESS;
}

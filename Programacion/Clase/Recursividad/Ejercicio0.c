#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

bool busqueda_binaria(int * lista, const int buscar, const int inicio, const int fin){
	if(*lista == buscar){
		return true;
	}
	if(*lista == fin){
		return false;
	}
	
	lista++;

	return busqueda_binaria(lista, buscar, inicio, fin);
}


int main(){
	int lista[10] = {-5, 1, 9, 10, 11, 12, 17, 120, 150, 1500};
	int buscar = 120;
	int encontrado = busqueda_binaria(lista, buscar, lista[0], lista[9]);
	
	printf("Ha sido: %d\n", encontrado);

	return EXIT_SUCCESS;
}

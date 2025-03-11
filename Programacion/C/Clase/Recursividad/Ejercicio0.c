#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

int busqueda_binaria(int * lista, const int buscar, const int inicio, const int final){
	int mitad = (inicio + final)/2;

	if(lista[mitad] == buscar){
		return mitad;
	}
	if(inicio >= final){
		return -1;	
	}

	if(lista[mitad] > buscar){
		return busqueda_binaria(lista, buscar, inicio, mitad - 1);
	}
	else
		return busqueda_binaria(lista, buscar, mitad + 1, final);
	}

} // ¿Hay un posible camino sin valor de retorno?


int main(){
	int lista[10] = {-5, 1, 9, 10, 11, 12, 17, 120, 150, 1500};
	int buscar = 120;
	int encontrado = busqueda_binaria(lista, buscar, lista[0], lista[9]);

	printf("Ha sido: %d\n", encontrado);

	return EXIT_SUCCESS;
}

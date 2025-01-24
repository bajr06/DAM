#include <stdio.h>
#include <stdlib.h>

#define error(memoria){ \
	if (memoria == NULL){ \
		puts("Memoria insuficiente"); \
		return EXIT_SUCCESS; \
	} \
} \


void proporcion(float * lista, const int cantidad){
	for(float i = 0; i < cantidad; i++, lista++){
		*lista = i/cantidad;
	}
}

void imprimir(float * lista, const int cantidad){
	for(int j = 0; j < cantidad; j++){
		printf("Posición %d: %f\n", j + 1, lista[j]);
	}
}


int main(){
	int cantidad;

	puts("¿Qué cantidad de números deseas procesar?");
	scanf("%d", &cantidad);

	float * lista = (float *)malloc(cantidad * sizeof(float));
	
	error(lista);

	proporcion(&lista[0], cantidad);

	puts("Este es la lista de números float que has creado:");
	imprimir(&lista[0], cantidad);
	printf("\n");

	float * nuevalista = (float *)realloc(lista, (cantidad/2) * sizeof(float));

	error(nuevalista);

	puts("Esta es la lista recortada a la mitad:");
	imprimir(&nuevalista[0], cantidad/2);
	
	free(nuevalista);

	return EXIT_SUCCESS;
}

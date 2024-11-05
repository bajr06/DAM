#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <time.h>

#define LIM 10	

/*
 * 
 * 	Autor: Bryan Andreu Jiménez Rojas y Lenardo Marescutti Mariñas.
 * 	Curso: DAM_1
 *
*/ 

int main(){
	int gestion_producto;
	int cantidad[LIM];
	char nombre_producto[LIM][20];
	
	printf("¿Cuantos productos quieres gestionar?\n");
	scanf(" %d", &gestion_producto);
	
	if(gestion_producto <= LIM){
		for (int i = 0; i < gestion_producto; i++){
			printf("Escriba el nombre del producto:");
			scanf("%s", nombre_producto[i]);

			printf("Escriba la cantidad de stock del producto:");
			scanf("%d", &cantidad[i]);
		}
	}
	else{
		printf("Solo puedes gestionar un total del 10\n");
	}

	return EXIT_SUCCESS;
}

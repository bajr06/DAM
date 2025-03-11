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
	int gestion_producto,i = 1, j = 1;
	int cantidad[LIM];
	char nombre_producto[LIM][20];
	char cambio = 'S';
	
	printf("¿Cuantos productos quieres gestionar?\n");
	scanf(" %d", &gestion_producto);
	
	if(gestion_producto <= LIM){
		for (; i <= gestion_producto; i++){
			printf("Escriba el nombre del producto:");
			scanf("%s", nombre_producto[i]);

			printf("Escriba la cantidad de stock del producto:");
			scanf("%d", &cantidad[i]);
		}
	
		do{
			printf("Producto %d: %s - %d\n", j, nombre_producto[j], cantidad[j]);
			j++;
		}
		while(j <= gestion_producto);
	
		while (cambio == 'S'){
			printf("¿Desea reabastecer algún producto? (S/N)\n");
			scanf("%c", &cambio);
		
			printf("Ingrese el nombre del producto:\n");
			scanf("%s", nombre_producto[j]);

			printf("Cantidad a añadir:\n");
			scanf("%d", &cantidad[j]);

			for (; i <= gestion_producto && j <= gestion_producto; i++, j++){
				if(nombre_producto[i] == nombre_producto[j]){
					cantidad[i] += cantidad[j];
				}
			}
		}
	}
	else{
		printf("Solo puedes gestionar un total del 10\n");
	}

	return EXIT_SUCCESS;
}

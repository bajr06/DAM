#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <time.h>
#include <string.h>

#define LIM 10
#define MAX 20

/*
 * 
 * 	Autor: Bryan Andreu Jiménez Rojas y Lenardo Marescutti Mariñas.
 * 	Curso: DAM_1
 *
*/ 

int main(){
	int gestion_producto, i = 1, j = 1, k, l = 1, m = 1;
	int cantidad[LIM], aumento;
	char nombre_producto[LIM][MAX], nomproreab[LIM][MAX], buspro[LIM][MAX];
	char reabastecer[4], buscar[4];
	
	printf("¿Cuantos productos quieres gestionar?\n");
	scanf(" %d", &gestion_producto);
	
	//Dependiendo de lo que el usuario ponga, se ejecutará el programa o no.
	if(gestion_producto <= LIM){
		for (;i <= gestion_producto; i++){
			printf("Escriba el nombre del producto: ");
			scanf("%s", nombre_producto[i]);
			// Al pasar por cada número, se les asigna su nombre y cantidad dependiente de lo que ponga el usuario.
			printf("Escriba la cantidad de stock del producto: ");
			scanf("%d", &cantidad[i]);
		}
		printf("\n");
		
		// Cuando se den todos los valores, se imprime por pantalla la numéración, el nombre y el stock.
		do{
			printf("Producto %d: %s - %d\n", j, nombre_producto[j], cantidad[j]);
			j++;
		}
		while(j <= gestion_producto);
		printf("\n");
		
		printf("¿Desea reabastecer algún producto (Si/No)?\n");
		scanf("%s", reabastecer);
		
		while(strcmp(reabastecer, "Si") == 0){ //Esta condicional se ejecuta si el valor escrito es igual a "Si". (Que para que fincione correctamente, tenemos que poner que su comparación es equivalente a 0, es decir, totalmente igual)
			printf("Ingrese el producto: ");
			scanf("%s", nomproreab[1]);

			printf("Número de stocks a añadir: ");
			scanf("%d", &aumento);
			
			// Compara el valor que le hemos dado con el resto de productos que hay
			for(k = 1; k <= gestion_producto; k++){
				if(strcmp(nomproreab[1], nombre_producto[k]) == 0){
					cantidad[k] += aumento; //Si comprueba que es el mismo, le aumenta la cantidad que le hemos dado
					printf("Ahora el producto %s tiene un total de %d stocks.\n", nombre_producto[k], cantidad[k]);
				}
			}
			// Si queremos que se vuelva a ejecutar, se aplica la misma condicional.
			printf("¿Desea reabastecer otro producto?\n");
			scanf("%s", reabastecer);
		}
		
		//Compara la cantidad de productos con 5, y dependiendo de si es menor que este, lo imprime o no.
		printf("Productos en baja existencia\n");
		for(; l <= gestion_producto; l++){
			if(cantidad[l] < 5){
				printf("%s - %d\n", nombre_producto[l], cantidad[l]);
			}
		}

		printf("¿Desea buscar algún producto (Si/No)?\n");
		scanf("%s", buscar);
		
		// Bucle que se ejcuta si compara que el valor que le hemos dado es "Si".
		while(strcmp(buscar, "Si") == 0){
			printf("Ingrese el nombre del producto: ");
			scanf("%s", buspro[1]);

			//Compara la cadena de cadacteres que le hemos dado con los productos que hay en la lista
			for(m = 1; m <= gestion_producto; m++){
				if(strcmp(buspro[1], nombre_producto[m]) == 0){
					printf("Tiene %d stock/s.\n", cantidad[m]); // Imprime el valor del stock del producto, al correspondertel la misma numeración
				}
			}

			printf("¿Desea buscar otro producto?");
			scanf("%s", buscar);
		}
	}
	else{
		printf("Solo puedes gestionar un total del 10\n"); //Si el valor es superior a 10, el programa no se ejecutará
	}

	return EXIT_SUCCESS;
}

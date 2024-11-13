#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <time.h>

#define LIM 20

/*
 * 
 * 	Autor: Bryan Andreu Jiménez Rojas y Lenardo Marescutti Mariñas.
 * 	Curso: DAM_1
 *
*/ 

int main(){
	// Creamos las variables que estarán dentro del Array "Inventario".
	int continente = 2; //(América, Europa).
	int sede = 3;
	int categoría = 4; //(Televisores, Teléfonos, Ordenadores, Electrodomésticos).
	int modelo = 5;
	int lote = 10;
	
	//Examen: Nueva variable a usar para el incremento.
	int incremento;
	//El array inventario contendrá las variables asiganadas con anterioridad.
	int inventario[continente][sede][categoría][modelo][lote];

	// Las variables asignadas dentro de los corchetes del array tiene asignado un número entero, asi que asignamos distintas combinaciones.
	inventario[1][3][2][1][6] = 125;
	inventario[2][1][3][5][9] = 80;
	inventario[2][2][1][2][3] = 90;
	inventario[1][1][1][4][7] = 180;
	inventario[2][3][4][3][8] = 50;

	//Inentario nuevo del examen
	inventario[2][2][1][2][10] = 200;//Europa, Sede 1, televisor, modelo 2, lote 10.
	
	//Los imprimimos por pantalla
	printf("Inventario 1. Hay %d unidades.\n", inventario[1][3][2][1][6]);
	printf("Inventario 2. Hay %d unidades.\n", inventario[2][1][3][5][9]);
	printf("Inventario 3. Hay %d unidades.\n", inventario[2][2][1][2][3]);
	printf("Inventario 4. Hay %d unidades.\n", inventario[1][1][1][4][7]);
	printf("Inventario 5. Hay %d unidades.\n", inventario[2][3][4][3][8]);

	//Examen, imprimir por pantalla
	printf("Inventario 6. Hay %d unidades.\n", inventario[2][2][1][2][10]);
	printf("\n");

	printf("¿Cuántas unidades quieres añadir en el inventario 6?\n");
	scanf("%d", &incremento); //Se guarda en memoria la cantidad que le queremos incrementar.
	
	inventario[2][2][1][2][10] += incremento; //Al inventario 6 le incrementamos el valor que nos ha dado el usuario.

	printf("Ahora el inventario 6 tiene %d unidades.\n", inventario[2][2][1][2][10]); //Imprimos por pantalla el valor incrementado.

	return EXIT_SUCCESS;
}

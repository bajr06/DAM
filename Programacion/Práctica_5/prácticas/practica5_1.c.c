#include <stdio.h>
#include <stdlib.h>

#define DIAS 7

/*
 * 	Autor: Bryan Andreu Jiménez Rojas y Lenardo Marescutti Mariñas.
 * 	Curso: DAM_1
*/ 

int main(){
	char dia[7][10] = {"lunes", "martes", "miercoles", "jueves", "viernes", "sábado", "domingo"};
	float temperatura[7] = {1, 2, 3, 4, 5 ,6 ,7};
	float promedio = 0, mayor = -280, menor = 10000 ;
	int dma, dme, contador = 0, j = 1;

	for(int i = 0; i < DIAS; i++){
		printf("Escribe la temperatura del %s\n", dia[i]); //Imprimirá un texto con el día correspondiente
		scanf("%f", &temperatura[i]); //Guardará la temperatura del día de la semana.

		promedio += temperatura[i];
		
		// Dependiendo de la temperatura.
		if(temperatura[i] > mayor){ // Se guardará aquí si es mayor
			mayor = temperatura[i]; // Su valor máximo
			dma = i; // El día de la semana correspondiente
		}
		else
		if(temperatura[i] < menor){ // Si es menor
			menor = temperatura[i]; //Su valor mínimo
			dme = i; // El día correspondiente
		}
	}

	// Calculamos el promedio diviendo la suma de todos los días por la  semana (Es decir 7).
	promedio = promedio/DIAS;

	do{
		if(temperatura[j]>promedio){ //Si la temperatura supera al promedio
			contador++;    //Al contador se le suma uno
			j++;
		}
		else{
			j++;
		}
	}
	while(j<DIAS);

	printf("Temperatura promedio de la semana:%.2fºC.\n", promedio);
	printf("Temperatura máxima: %.2f°C el día %s\n", mayor, dia[dma]);
	printf("Temperatura mínima: %.2f°C el día %s\n", menor, dia[dme]);
	printf("Número de días con temperaturas superiores al promedio: %d\n", contador);
	printf("Días con temperaturas por debajo del promedio:\n");
	
	for(int k = 0; k < DIAS; k++){
		if(temperatura[k]<promedio){ //Compara el promedio de cada día, y lo imprime si es inferior a este
			printf("%s: %.2fºC\n", dia[k], temperatura[k]);
		}
	}

	return EXIT_SUCCESS;
}
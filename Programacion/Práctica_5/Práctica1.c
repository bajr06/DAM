#include <stdio.h>
#include <stdlib.h>

#define DIAS 7

/*
 * 
 * 	Autor: Bryan Andreu Jiménez Rojas y Lenardo Marescutti Mariñas.
 * 	Curso: DAM_1
 *
*/ 

int main(){
	char dia[7][10] = {"lunes", "martes", "miercoles", "jueves", "viernes", "sábado", "domingo"};
	float temperatura[7] = {1, 2, 3, 4, 5 ,6 ,7};
	float promedio = 0, mayor = -280, menor = 10000 ;
	int dma, dme, contador = 0, j = 1;

	for(int i = 0; i < DIAS; i++){
		printf("Escribe la temperatura del %s\n", dia[i]);
		scanf("%f", &temperatura[i]);
		promedio += temperatura[i];
		

		if(temperatura[i] > mayor){
			mayor = temperatura[i];
			dma = i;
		} 
		else
		if(temperatura[i] < menor){
			menor = temperatura[i];
			dme = i;
		}
	}

	promedio = promedio/DIAS;

	do{
		if(temperatura[j]>promedio){
			contador++;
			j++;
		}
		else{
			j++;
		}
	}
	while(j<DIAS);

	printf("Temperatura promedio de la semana:%.2f\n", promedio);
	printf("Temperatura máxima: %.2f°C el día %s\n", mayor, dia[dma]);
	printf("Temperatura mínima: %.2f°C el día %s\n", menor, dia[dme]);
	printf("Número de días con temperaturas superiores al promedio: %d\n", contador);
	printf("Días con temperaturas por debajo del promedio:\n");
	for(int k = 0; k < DIAS; k++){
		if(temperatura[k]<promedio){
			printf("%s: %.2fºC\n", dia[k], temperatura[k]);
		}
	}

	return EXIT_SUCCESS;
}

#include <stdio.h>
#include <stdlib.h>

#define MINIMO 5

/*
 * 	Autor: Bryan Andreu Jiménez Rojas y Lenardo Marescutti Mariñas.
 * 	Curso: DAM_1
*/ 

int main(){
	
	int cantidad_estudiantes = 1;
	float nota[cantidad_estudiantes];
	float promedio = 0, suspenso = 10, aprobados = 0;
	int cantidad_suspensos = 0, cantidad_aprobados = 0,npromedio = 0, nsuspenso = 0, naprobados = 0;

	printf("Ingrese la cantidad de estudiantes:\n");
	scanf("%d", &cantidad_estudiantes); // Guardamos la cantidad de estudiantes
	
	//Creamos un bucle que vaya pasando nota por nota preguntando y guardando las notas de todos los alumnos.
	for(int i = 1; i <= cantidad_estudiantes; i++){
		printf("Escribe la nota del estudiante:\n");
		scanf(" %f", &nota[i]); // Guardamos el valor de las notas

		promedio += nota[i]; // Sumamos las notas que vayan pasando por el bucle
		
		//La condicional dependerá de:
		if(nota[i] < MINIMO){ //Si la nota es inferior a MINIMO donde se icrementa "cantidad de supensos"
			cantidad_suspensos++; 
		} 
		else
		if(nota[i] >= MINIMO){//O si la nota es superior a MINIMO, donde se incrementa "cantidad_aprobados"
			cantidad_aprobados++;
		}


		//Agregamos otra condional que sigue la misma regla, pero guardando los datos especificos de:
		if(nota[i] > aprobados){
			aprobados = nota[i]; //La nota más alta
			naprobados = i; //Su posición
		}
		else
		if(nota[i] < suspenso){
			suspenso = nota[i]; //La nota más baja
			nsuspenso = i; //Su posición
		}
	}

	promedio = promedio/cantidad_estudiantes; //La variable promedio se divide por la cantidad de estudiantes procesados

	//Imprimimos por pantalla:
	printf("Promedio de notas:%.2f\n", promedio);
	printf("Número de estudiantes aprobados:%d\n", cantidad_aprobados);
	printf("Número de estudiantes suspendidos:%d\n", cantidad_suspensos);
	printf("Nota máxima: %.2f (Estudiante en la posición %d)\n", aprobados, naprobados);
	printf("Mota minima: %.2f (Estudiante en la posición %d)\n", suspenso, nsuspenso);

	//Por último, creamos un nuevo bucle que imprima por pantalla las notas que mayores al promedio
	for(int j = 1; j <= cantidad_estudiantes; j++){
		if(nota[j]>promedio){
			npromedio = j;
			printf("Estudiante en la posición %d: %.2f\n",npromedio, nota[j]);
		}
	}

	return EXIT_SUCCESS;
}

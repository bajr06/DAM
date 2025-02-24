#include <stdio.h>
#include <stdlib.h>
#include <math.h>

/*
 * 	Autor: Bryan Andreu Jiménez Rojas.
 * 	Curso: Primero de Desarrollo de Aplicaciones Multiplataforma.
*/ 	

void es_vocal(){
	char letra;

	printf("Introduce una letra:\n");
	scanf(" %c", &letra);

	if(letra == 'a' || letra == 'e' || letra == 'i' || letra == 'o' || letra == 'u' || letra == 'A' || letra == 'E' || letra == 'I' || letra == 'O' || letra == 'U'){
		printf("La letra %c es una vocal\n", letra);
	} 
	else {
		printf("La letra %c no es una vocal\n", letra);
	}
}

void calcular_area_figura(){
	int calcular;
	double radio;
	double area;
	double lado;

	printf("¿Qué figura deseas calcular (círculo = 1, cuadrado = 2)?\n");
	scanf("%d", &calcular);
	
	switch(calcular){
		case 1:
			printf("Introduce el radio del círculo:\n");
			scanf("%lf", &radio);
			area = radio * radio * 3.1416;
			printf("El área del círculo con radio %lf es %lf\n", radio, area);
			break;
		case 2:
			printf("Introduce el lado del cuadrado:\n");
			scanf("%lf", &lado);
			area = lado * lado;
			printf("El área del cuadrado con lado %lf es %lf\n", lado, area);
			break;
		default:
			printf("Error en la función\n");
		}
}

void calcular_promedio(){
	int cantidad;
	double calcular_promedio_tres_num;
	double calcular_promedio_cuatro_num;
	double num1, num2, num3, num4;

	printf("¿De cuántos números quiere hacer el promedio? (3 o 4)\n");
	scanf("%d", &cantidad);

	if(cantidad == 3){
		printf("Inserte el primer número:\n");
		scanf(" %lf", &num1);
		printf("Inserte el segundo número:\n");
		scanf(" %lf", &num2);
		printf("Inserte el tercer número:\n");
		scanf(" %lf", &num3);

		calcular_promedio_tres_num=(num1 + num2 + num3) / 2;
		printf("El promedio de %lf, %lf y %lf es %lf.\n", num1, num2, num3, calcular_promedio_tres_num);
	}
	else
	if(cantidad == 4){
		printf("Inserte el primer número\n");
		scanf(" %lf", &num1);
		printf("Inserte el segundo número:\n");
		scanf(" %lf", &num2);
		printf("Inserte el tercer número:\n");
		scanf(" %lf", &num3);
		printf("Inserte el cuarto número:\n");
		scanf(" %lf", &num4);

		calcular_promedio_cuatro_num=(num1 + num2 + num3 + num4)/2;

		printf("El promedio de %lf, %lf, %lf y %lf es %lf.\n", num1, num2, num3, num4, calcular_promedio_cuatro_num);
	}
	else{
		printf("Error en la función.\n");
	}
}

void convertir_hora_24_a_12(){
	int hora12;
	int hora24;

	printf("Introduce la hora en formato 24 horas:\n");
	scanf("%d", &hora24);

	if(hora24 >= 0 && hora24 <= 11){
		hora12 = hora24;
		printf("La hora en formato de 12 horas es %d AM\n", hora12);
	}
	else
	if(hora24 >= 12 && hora24 <= 23){
		hora12 = hora24 - 12;
		printf("La hora en formato de 12 horas es %d PM\n", hora12);
	}
	else{
		printf("Hora no válida\n");
	}	
}
void es_primo(){
	int número;
	
	printf("Introduce un número menor de 10:\n");
	scanf("%d", &número);

	if(número > 0 && número <= 10){
		(número == 2||número == 3||número == 5||número == 7)? printf("El número %d es primo.\n", número) : printf("El número %d no es primo.\n", número);
	}
	else{
		printf("Inserte un valor menor o igual al 10.\n");
	}
}

void comparar_3_numeros(){
	int x;
	int y;
	int z;

	printf("Inserte el número 1:\n");
	scanf("%d", &x);
	printf("Inserte el número 2:\n");
	scanf("%d", &y);
	printf("Inserte el número 3:\n");
	scanf("%d", &z);

	if(x > y && x > z){
		printf("Es %d el  número mayor.\n", x);
	}
	else
	if(y > x && y > z){
		printf("Es %d el número mayor.\n", y);
	}
	else
	if(z > x && z > y){
		printf("Es %d el número mayor.\n", z);
	}
	else
	if(x == y && x == z && y == z && z == x && z == y){
		printf("Hay números iguales.\n");
	}
}

int main(){
	int Opción;

	printf("Selecciona una opción:\n");
	printf("1. Verificar si una letra es una vocal.\n");
	printf("2. Calcular el área de una figura (círculo o cuadrado).\n");
	printf("3. Calcular el promedio de 3 o 4 números.\n");
	printf("4. Convertir una hora en formato de 24 horas a 12 horas.\n");
	printf("5. Verificar si un número menor de 10 es primo.\n");
	printf("6. Comparar tres números.\n");
	printf("7. Salir.\n");

	scanf("%d", &Opción);
	
	switch(Opción){
		case 1:
			es_vocal();
			break;
		case 2:
			calcular_area_figura();
			break;
		case 3:
			calcular_promedio();
			break;
		case 4:
			convertir_hora_24_a_12();
			break;
		case 5:
			es_primo();
			break;
		case 6:
			comparar_3_numeros();
			break;
		case 7:
			printf("¡Hasta la próxima!\n");
			break;
		default:
			printf("Operación inválida\n");
	}


	return EXIT_SUCCESS;
}

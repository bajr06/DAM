#include <stdio.h>
#include <stdlib.h>
#include <string.h>

//Definimos constantes
#define MAX_NOMBRE 20
#define MAX_ESTUDIANTE 20
#define MAX_BUFFER 200

/* 
 * 	Autor: Bryan Andreu Jiménez Rojas.
*/ 

//Como funcionan los punteros con los structs
typedef struct{
	char nombre[MAX_NOMBRE];
	int edad;
	float nota;
} estudiante;

/* Esta función no sirve porque dará un resultado que después será borrado
 * (o sería un espacio en el que se podría sobreescribir) */
/* estudiante inicializar(char *nombre, int edad, float nota){
	//Creo una variable de tipo estudiante
	estudiante estudiante_nuevo;

	//Inicializamos el estudiante. e.edad = edad; o...
	
	return estudiante_nuevo;
}*/

// Es válida pero no sabemos utilizarla
/* estudiante *inicializar(char *nombre, int edad, float nota){
	estudiante *estudiante_nuevo = malloc(); // Memoria dinámica
	return &estudiante_nuevo;
} */

void inicializar(estudiante *estudiante_a_rellenar, char *nombre, int *edad, float *nota){
	estudiante_a_rellenar -> edad = *edad;
	//Habría que hacer (*estudiante_a_rellenar).nota = nota.
	// estudiante_a_rellenar.nota = nota; esto no funciona porque es un puntero.
	estudiante_a_rellenar -> nota = *nota;
	// estudiante_a_rellenar_nombre = nombre;
	// Esto no es posible porque lo que hace es igualar las direcciones de memoria, no el contenido
	strcpy(estudiante_a_rellenar -> nombre, nombre);
}

// Tiene que recibir un puntero a estudiante porque va a modificar la variable que va a recibir.
// No es necesario el valor de retorno.
void cumpleanios(estudiante *cumpleanero){
	cumpleanero -> edad++;
}

// Recibe un estudiante, e imprime por pantalla sus datos.
// PASAR POR REFERENCIA.
void imprimir_estudiante(const estudiante *estudiante_a_imprimir){
	printf("Nombre: %s\n",  estudiante_a_imprimir -> nombre);
	printf("\tEdad: %d\n",  estudiante_a_imprimir -> edad);
	printf("\tNota: %f\n",  estudiante_a_imprimir -> nota);
}

void estudianteToString(const estudiante * datos, char *retval){
	
	//snprintf (donde, cuánto, el qué[lo que harías con tu printf])
	snprintf(retval, MAX_BUFFER * sizeof(char) /*200 x 4*/, "El estudiante %s de %d años ha sacado un %f", datos -> nombre, datos -> edad, datos -> nota);

	// Da Warning porque esta función deja de existir cuando deja de existir.
}

void modificarEstudiante(estudiante *estudiante_a_cambiar, char *nuevo_nombre){
	strcpy(estudiante_a_cambiar -> nombre, nuevo_nombre);
}

int main(){
	estudiante listado[MAX_ESTUDIANTE]; //Aquí se reserva la memoria para los estudiantes.
					    //Los 560 bytes se reservan aquí.
	int num_estudiantes;
	float nota;
	int edad;
	char nombre[MAX_NOMBRE];

	printf("%p\n", listado);
	printf("Sizeof listado: %ld\n", sizeof(listado)); //560
	printf("Sizeof estudiante: %ld\n", sizeof(estudiante)); //28

	printf("¿Cuántos estudiantes desea inicializar?\n");
	scanf("%d", &num_estudiantes);

	for(int i = 0; i < num_estudiantes; i++){
		printf("Introduce la edad:\n");
		scanf("%d", &edad);
		printf("Introduce la nota:\n");
		scanf("%f", &nota);
		printf("Introduce el nombre\n");
		scanf("%s", nombre);

		inicializar(listado + i, nombre, &edad, &nota);
	}

	// El estudiante de la primer posición ha cumplido años
	printf("Edad antigua de %s: %d\n", listado[0].nombre, listado[0].edad);
	cumpleanios(&listado[0]);
	printf("Edad nueva: %d.\n", listado[0].edad);
	// printf("%d", (listado+6) -> edad);

	/* Vamos a imrpimir estudiantes */
	imprimir_estudiante(&listado[0]);
	
	char StringARellenar[MAX_BUFFER];
	estudianteToString(&listado[0], StringARellenar);
	printf("%s\n", StringARellenar);
	// El estudiante ... de ... años ha sacado un ... .

	char cambio[MAX_NOMBRE];
	scanf("%s", cambio);
	modificarEstudiante(&listado[0], cambio);

	estudianteToString(&listado[0], StringARellenar);
	printf("%s\n", StringARellenar);

	return EXIT_SUCCESS;
}

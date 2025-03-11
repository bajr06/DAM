#include <stdio.h>
#include <stdlib.h>

void InicializarLista(int * lista, const int cantidad);

void ImprimirLista(int * lista, const int cantidad);

void modificar_elemento(int valor);

void modificar_por_referencia(int * valor);


int main(){
	int cantidad;

	puts("¿De qué cantidad deseas que sea el arraya a reservar?");
	scanf("%d", &cantidad);

	int * lista = (int *)malloc(cantidad * sizeof(int));
	
	if(lista == NULL){
		puts("Error: Falta de memoria");
		return EXIT_FAILURE;
	}

	puts("");

	puts("Inserte los números que desee que esten en la lista.");
	InicializarLista(&lista[0], cantidad);

	printf("\n");

	puts("Esta es la lista que has guardado:");
	ImprimirLista(&lista[0], cantidad);
	
	puts("");

	puts("Ahora vamos a ver las diferencias que hay entre pasar el valor por valor o por referencia cuando le sumemos 10");

	puts("Esta es en el caso de por valor:");
	modificar_elemento(lista[cantidad - 1]);
	printf("Su resultado en el main: %d\n", lista[cantidad - 1]);
	
	printf("\n");

	puts("Este es al pasarlo por referencia:");
	modificar_por_referencia(&lista[cantidad - 1]);
	printf("Su resultado en el main: %d\n", lista[cantidad - 1]);
	
	free(lista);

	return EXIT_SUCCESS;
}

void InicializarLista(int * lista, const int cantidad){
	for(int i = 0; i < cantidad; i++){
		scanf("%d", &lista[i]);
	}
}

void ImprimirLista(int * lista, const int cantidad){
	for(int j = 0; j < cantidad; j++){
		printf("Número [%d]: %d\n", j, lista[j]);
	}
}

void modificar_elemento(int valor){
	valor += 10;
	printf("Su valor en la función: %d\n", valor);
}

void modificar_por_referencia(int * valor){
	(*valor) += 10;
	printf("Su valor en la función: %d\n", (*valor));
}

/*
 * Pregunta 1:
 *
 * Se puede evidenciar que no es lo mismo pasar un número de una lista dada por valor 
 * que por referencia, ya que en el primero solamente se modifica el valor en la función,
 * pero al salir de este se mantendrá el valor que tiene en el main.
 *
 * En el caso de ser pasado por referencia, la función accede al sitio de la memoria donde
 * está guardado el número y lo modifica; esto produce que al imprimirlo en el main, su
 * valor haya cambiado.
 *
 * La conclusión es que al pasarlo por valor, se crea una copia de número dado y este se
 * modifica solamente en la función (al salir de esta deja de existir). Mientras que, al
 * ser pasado por referencia, el valor es cambiado directamente en la memoria. yes debido
 * a ello que el número cambia para siempre ese valor.
*/

/*
 * Pregunta 2:
 *
 * En memoria ocupa la cantidad de números que tenga la lista, multiplicado por los bits
 * del tipo de dato; en este caso double ocupa 8 bits, por lo que su calculo es:
 * cantidad = n * 8;
 *
 * Si se quiere hacer esto mismo pero usando el sizeof, simplemente se escribiría así:
 * cantidad = n * sizeof(double);
*/

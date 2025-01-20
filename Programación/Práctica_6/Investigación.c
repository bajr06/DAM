#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>

/*
 *	Autor: Bryan Andreu Jiménez Rojas.
 *	Curso: Grado Superior de Desarrollo de Aplicaciones Multiplataforma 1.
*/

#define MAX_NOMBRE 50
int MAX_LIBROS = 40;

#define error(memoria){ \
	if(memoria == NULL){ \
		printf("Error, memoria insuficiente\n"); \
		return EXIT_FAILURE; \
	} \
} \


typedef enum{
	FICCION,
	NO_FICCION,
	POESIA,
	TEATRO,
	ENSAYO,
} genero;

typedef struct{
	int identificador;
	char titulo[MAX_NOMBRE];
	char autor[MAX_NOMBRE];
	float precio;
	genero literario;
	int cantidad;
} libro;


void InicializarLibro(libro * inventario, int id, char * nombre, char * escritor, float costo, genero clase, int cuantidad);

char * gen(genero * literario);

void ImprimirLibro(libro * contenido);

void ImprimirEstante(libro * inventario);

int BuscarLibro(libro * imprimir, const int numero);

void AñadirLote(libro * añadir, const int numero, const int nuevacantidad);

void ImprimirCategoria(libro * estante, const int clase);

void BuscarAutor(libro * libreria, const char literato[MAX_NOMBRE]);

libro * AñadirLibro(libro * repositorio, const int nuevo);


int main(int argc, char ** argv){
	libro * catalogo = (libro *)malloc(MAX_LIBROS * sizeof(libro));
	error(catalogo);
	
	InicializarLibro(&catalogo[0], 1, "To Kill a Mockingbird", "Harper Lee", 15.99, FICCION, 10);
	InicializarLibro(&catalogo[1], 2, "1984", "George Orwell", 12.49, FICCION, 5);
	InicializarLibro(&catalogo[2], 3, "The Great Gatsby", "F. Scott Fitzgerald", 10.99, FICCION, 8);
	InicializarLibro(&catalogo[3], 4, "Moby Dick", "Herman Melville", 18.99, FICCION, 12);
	InicializarLibro(&catalogo[4], 5, "War and Peace", "Leo Tolstoy", 20.00, FICCION, 7);
	InicializarLibro(&catalogo[5], 6, "Pride and Prejudice", "Jane Austen", 14.99, FICCION, 9);
	InicializarLibro(&catalogo[6], 7, "The Catcher in the Rye", "J.D. Salinger", 10.00, FICCION, 6);
	InicializarLibro(&catalogo[7], 8, "The Odyssey", "Homer", 17.49, FICCION, 4);
	InicializarLibro(&catalogo[8], 9, "Ulysses", "James Joyce", 25.00, FICCION, 2);
	InicializarLibro(&catalogo[9], 10, "The Divine Comedy", "Dante Alighieri", 22.00, POESIA, 3);
	InicializarLibro(&catalogo[10], 11, "Leaves of Grass", "Walt Whitman", 13.00, POESIA, 11);
	InicializarLibro(&catalogo[11], 12, "The Iliad", "Homer", 18.50, FICCION, 7);
	InicializarLibro(&catalogo[12], 13, "A Brief History of Time", "Stephen Hawking", 15.00, NO_FICCION, 15);
	InicializarLibro(&catalogo[13], 14, "The Art of War", "Sun Tzu", 9.99, NO_FICCION, 20);
	InicializarLibro(&catalogo[14], 15, "Sapiens: A Brief History of Humankind", "Yuval Noah Harari", 16.49, NO_FICCION, 13);
	InicializarLibro(&catalogo[15], 16, "The Selfish Gene", "Richard Dawkins", 14.00, NO_FICCION, 6);
	InicializarLibro(&catalogo[16], 17, "The Road to Serfdom", "F.A. Hayek", 10.50, NO_FICCION, 5);
	InicializarLibro(&catalogo[17], 18, "The Wealth of Nations", "Adam Smith", 30.00, NO_FICCION, 8);
	InicializarLibro(&catalogo[18], 19, "On the Origin of Species", "Charles Darwin", 24.99, NO_FICCION, 4);
	InicializarLibro(&catalogo[19], 20, "The Prince", "Niccolò Machiavelli", 8.99, NO_FICCION, 14);
	InicializarLibro(&catalogo[20], 21, "Hamlet", "William Shakespeare", 11.50, TEATRO, 6);
	InicializarLibro(&catalogo[21], 22, "Macbeth", "William Shakespeare", 9.50, TEATRO, 8);
	InicializarLibro(&catalogo[22], 23, "Othello", "William Shakespeare", 10.99, TEATRO, 7);
	InicializarLibro(&catalogo[23], 24, "A Doll's House", "Henrik Ibsen", 12.50, TEATRO, 5);
	InicializarLibro(&catalogo[24], 25, "Waiting for Godot", "Samuel Beckett", 13.99, TEATRO, 4);
	InicializarLibro(&catalogo[25], 26, "Death of a Salesman", "Arthur Miller", 14.99, TEATRO, 10);
	InicializarLibro(&catalogo[26], 27, "The Glass Menagerie", "Tennessee Williams", 11.00, TEATRO, 9);
	InicializarLibro(&catalogo[27], 28, "Long Day's Journey into Night", "Eugene O'Neill", 19.50, TEATRO, 3);
	InicializarLibro(&catalogo[28], 29, "The Importance of Being Earnest", "Oscar Wilde", 8.50, TEATRO, 15);
	InicializarLibro(&catalogo[29], 30, "The Waste Land", "T.S. Eliot", 6.99, POESIA, 10);
	InicializarLibro(&catalogo[30], 31, "Paradise Lost", "John Milton", 12.00, POESIA, 7);
	InicializarLibro(&catalogo[31], 32, "Beowulf", "Anonymous", 15.00, POESIA, 5);
	InicializarLibro(&catalogo[32], 33, "Essays", "Michel de Montaigne", 20.00, ENSAYO, 4);
	InicializarLibro(&catalogo[33], 34, "Self-Reliance and Other Essays", "Ralph Waldo Emerson", 9.00, ENSAYO, 9);
	InicializarLibro(&catalogo[34], 35, "Civil Disobedience and Other Essays", "Henry David Thoreau", 7.50, ENSAYO, 11);
	InicializarLibro(&catalogo[35], 36, "Meditations", "Marcus Aurelius", 11.99, ENSAYO, 8);
	InicializarLibro(&catalogo[36], 37, "The Federalist Papers", "Alexander Hamilton, James Madison, John Jay", 18.00, ENSAYO, 5);
	InicializarLibro(&catalogo[37], 38, "The Communist Manifesto", "Karl Marx and Friedrich Engels", 5.99, ENSAYO, 12);
	InicializarLibro(&catalogo[38], 39, "The Republic", "Plato", 16.00, ENSAYO, 6);
	InicializarLibro(&catalogo[39], 40, "Thus Spoke Zarathustra", "Friedrich Nietzsche", 14.99, ENSAYO, 10);

	if(argc == 1){
		int escoger;
		printf("Bienvenido a la biblioteca de Pantheon. Escriba el número de una de las siguientes operaciones que deseas ejecutar:\n\
			1. Mostrar todos los libros.\n\
			2. Mostrar el libro que escojas por ID.\n\
			3. Aumentar el stock de un libro através de su ID.\n\
			4. Mostrar todos los libros de una categoría.\n\
			5. Mostrar los libros del autor.\n\
			6. Añadir libros\n\
			7. Salir.\n");
		scanf("%d", &escoger);

		do{
			switch(escoger){
				case 1:
					printf("Estos son todos los libros que tenemos disponibles:\n");
					ImprimirEstante(&catalogo[0]);

					printf("¿Qué función deseas ejecutar?\n");
					scanf("%d", &escoger);
					
					printf("\n");

					break;
				case 2:
					int id;

					printf("Escriba el número del identificador del libro:\n");
					scanf("%d", &id);

					BuscarLibro(&catalogo[0], id);

					printf("¿Qué función deseas ejecutar?\n");
					scanf("%d", &escoger);
					
					printf("\n");

					break;
				case 3:
					int vinculo, nuevacantidad;

					printf("Escriba el número del identificador del libro:\n");
					scanf("%d", &vinculo);
					printf("Escriba la cantidad de libros a añadir: \n");
					scanf("%d", &nuevacantidad);

					AñadirLote(&catalogo[0], vinculo, nuevacantidad);
					
					printf("¿Qué función deseas ejecutar?\n");
					scanf("%d", &escoger);
					
					printf("\n");

					break;
				case 4:
					int tipo;
	
					printf("Los género literarios están divididos en números:\n\
					0 es FICCION;\n\
					1 es NO FICCION;\n\
					2 es POESIA;\n\
					3 es TEATRO;\n\
					4 es ENSAYO\n");
					printf("¿Los libros de qué categoría deseas observar?\n");
					scanf("%d", &tipo);

					ImprimirCategoria(&catalogo[0], tipo);

					printf("¿Qué función deseas ejecutar?\n");
					scanf("%d", &escoger);
					
					printf("\n");

					break;
				case 5:
					char escritor[MAX_NOMBRE];

					printf("Escriba el nombre del autor:\n");
					scanf(" ");
					fgets(escritor, MAX_NOMBRE, stdin);
					escritor[strlen(escritor) - 1] = '\0';

					BuscarAutor(&catalogo[0], escritor);
					
					printf("¿Qué función deseas ejecutar?\n");
					scanf("%d", &escoger);

					printf("\n");

					break;
				case 6:
					int maslibro;

					printf("¿Cuántos libros quieres añadir?\n");
					scanf("%d", &maslibro);
					
					catalogo = AñadirLibro(&catalogo[0], maslibro);

					printf("¿Qué función deseas ejecutar?\n");
					scanf("%d", &escoger);
					
					printf("\n");

					break;
				default:
					printf("El apartado que deseas ejecutar no existe\n");

					printf("¿Estás seguro de salir del programa? Introduce 7 para salir, o un número de una de las funciones disponibles.\n");
					scanf("%d", &escoger);

					printf("\n");
				}
		} while(escoger != 7);
		
		printf("Muchas gracias por usar nuestro programa de inventario, ¡Hasta la próxima!\n");
	}else 
	if(argc == 2){
		if (strcmp(argv[1],"mostrar") == false){
			printf("Ejecutamos ImprimirEstante().\n");
			
			ImprimirEstante(&catalogo[0]);
		}
		else
		if (strcmp(argv[1],"añadir") == false){
			printf("Ejecutamos AñadirLibro().\n");
			
			catalogo = AñadirLibro(&catalogo[0], 1);

		}
	}
	else 
	if(argc == 3){
		if(strcmp(argv[1], "mostrar") == false){
			int id = atoi(argv[2]);
			
			printf("Ejecutamos BuscarLibro().\n");

			BuscarLibro(&catalogo[0], id);
		}
		else
		if(strcmp(argv[1], "categoria") == false){
			int categoria = atoi(argv[2]);
			
			printf("Ejecutamos ImprimirCategoria().\n");

			ImprimirCategoria(&catalogo[0], categoria);
		}
		else
		if(strcmp(argv[1], "autor") == false){
			char * productor = argv[2];
			
			printf("Ejecutamos BuscarAutor().\n");

			BuscarAutor(&catalogo[0], productor);
		}
		else
		if(strcmp(argv[1],"añadir") == false){
			int porcion = atoi(argv[2]);
			
			printf("Ejecutamos AñadirLibro().\n");

			catalogo = AñadirLibro(&catalogo[0], porcion);
		}
	}
	else
	if (argc == 4){
		if(strcmp(argv[1], "cantidad") == false){
			int registro = atoi(argv[2]);
			int suma = atoi(argv[3]);

			printf("Ejecutamos la función AñadirLote().\n");

			AñadirLote(&catalogo[0], registro, suma);
		}
	}
	else{
		printf("No existe lo que tratas de ejecutar.\n");
	}

	free(catalogo);

	return EXIT_SUCCESS;
}


void InicializarLibro(libro * inventario, int id, char * nombre, char * escritor, float costo, genero clase, int cuantidad){
	inventario -> identificador = id;
	strcpy(inventario -> titulo, nombre);
	strcpy(inventario -> autor, escritor);
	inventario -> precio = costo;
	inventario -> literario = clase;
	inventario -> cantidad = cuantidad;
}

char * gen(genero * literario){
	switch(*literario){
		case 0:
			return "FICCION";
			break;
		case 1:
			return "NO FICCION";
			break;
		case 2:
			return "POESIA";
			break;
		case 3:
			return "TEATRO";
			break;
		case 4:
			return "ENSAYO";
			break;
		default:
			return "NO IDENTIFICADO";
	}
}

void ImprimirLibro(libro * contenido){
	printf("%d, %s, %s, %.2f, %s[%d], %d\n", contenido -> identificador, contenido -> titulo, contenido -> autor, contenido -> precio, gen(&contenido -> literario), contenido -> literario ,contenido -> cantidad);
}

void ImprimirEstante(libro * inventario){
	for(int i = 0; i < MAX_LIBROS; i++, inventario++){
		ImprimirLibro(inventario);
	}
}

int BuscarLibro(libro * imprimir, const int numero){
	int pasos = 0;

	while(imprimir -> identificador != numero){
		imprimir++;
		pasos++;

		if(pasos > MAX_LIBROS){
			printf("No existe ese libro.\n");
			return EXIT_FAILURE;
		}
	}

	ImprimirLibro(imprimir);

	return pasos;
}

void AñadirLote(libro * añadir, const int numero, const int nuevacantidad){
	int vueltas;
	
	if(nuevacantidad >= 0){
		printf("Este es el libro que has seleccionado:\n");
		vueltas = BuscarLibro(añadir, numero);

		añadir[vueltas].cantidad += nuevacantidad;
		printf("Ahora la cantidad total de existencias de este libro son %d.\n", añadir[vueltas].cantidad);
	}
	else{
		printf("El valor que has introducido no es válido.\n");
	}
}

void ImprimirCategoria(libro * estante, const int clase){
	for(int k = 0; k < MAX_LIBROS; k++, estante++){
		if(estante -> literario == clase){
			ImprimirLibro(estante);
		}
		else
		if(clase < 0 || clase > 4){
			printf("No existe ese género literario en esta biblioteca.\n");
			break;
		}
	}
}

void BuscarAutor(libro * libreria, const char literato[MAX_NOMBRE]){
	bool control = false;
	
	for(int m = 0; m < MAX_LIBROS; m++, libreria++){
		if(strstr(libreria -> autor, literato) != NULL){
			ImprimirLibro(libreria);
			control = true;
			break;	
		}
	}

	if(!control){
		printf("Autor no encontrado.\n");
	}
}

libro * AñadirLibro(libro * repositorio, const int nuevo){
	int id, cuantidad;
	float costo;
	char nombre[MAX_NOMBRE], escritor[MAX_NOMBRE];
	genero clase;
	
	libro * recatalogo = (libro *)realloc(repositorio, (MAX_LIBROS + nuevo) * sizeof(libro));
	if(recatalogo == NULL){
		printf("Error, memoria insuficiente.\n");
		exit(EXIT_FAILURE);
	}

	for(int o = MAX_LIBROS; o < MAX_LIBROS + nuevo; o++){
		printf("Escriba el id: ");
		scanf("%d", &id);
		getchar();

		printf("Escriba el título: ");
		fgets(nombre, MAX_NOMBRE, stdin);
		nombre[strlen(nombre) - 1] = '\0';

		printf("Escriba el autor: ");
		fgets(escritor, MAX_NOMBRE, stdin);
		escritor[strlen(escritor) - 1] = '\0';
		

		printf("Escriba su costo: ");
		scanf("%f", &costo);

		printf("Escriba su genero: ");
		scanf("%u", &clase);

		printf("Escriba la cantidad: ");
		scanf("%d", &cuantidad);
		
		InicializarLibro(&recatalogo[o], id, nombre, escritor, costo, clase, cuantidad);
		
		printf("Has añadido el siguiente libro:\n");
		ImprimirLibro(&recatalogo[o++]);
	}

	MAX_LIBROS += nuevo;

	return &recatalogo[0];
}

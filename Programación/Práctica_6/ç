#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>

/*
 *	Autor: Bryan Andreu Jiménez Rojas.
 *	Curso: Grado Superior de Desarrollo de Aplicaciones Multiplataforma 1.
*/


/*
 *----------------------------------------------------------
 *------DEFINICIÓN VARIABLES Y TIPO DE DATOS GLOBALES.------
 *----------------------------------------------------------
 *
*/

#define MAX_NOMBRE 50 // Cantidad máxima de carácteres para nombre de libro o autor.
int MAX_LIBROS = 40; // Cantidad máxima de libros, definida como variable local tras posibilidad de ver cambiado su número.


// Macro definido para exponer errores por falta de memoria en la función main.
// Solo se ejecutará si el valor es nulo, mientras no se cumpla esa condición pasará totalmente desapercibida.
#define error(memoria){ \
	if(memoria == NULL){ \
		printf("Error, memoria insuficiente\n"); \
		return EXIT_FAILURE; \
	} \
} \


// Definimos los valores para los géneros de cada libro.
typedef enum{
	FICCION,
	NO_FICCION,
	POESIA,
	TEATRO,
	ENSAYO,
} genero;

// Definimos la variable libro para cada libro que vayamos a usar.
typedef struct{
	int identificador;
	char titulo[MAX_NOMBRE];
	char autor[MAX_NOMBRE];
	float precio;
	genero literario;
	int cantidad;
} libro;


/*
 *-----------------------------------
 *------FUNCIONES DEL PROGRAMA.------
 *-----------------------------------
*/

// Esta es la función encargada de guardar todos los libros dentro del espacio que hemos reservador con anterioridad.
// Le pasamos la dirección de memoria del espacio reservado, en conjunto con los datos de cada libro.
void InicializarLibro(libro * inventario, int id, char * nombre, char * escritor, float costo, genero clase, int cuantidad){
	inventario -> identificador = id; // Guardamos en x dirección de memoria el identificador.
	strcpy(inventario -> titulo, nombre); // Lo mismo que lo anterior, pero debido a que son cadenas de carácteres, es necesario copiar y pegar carácter con carácter (arreglable con la librería string.h)-
	strcpy(inventario -> autor, escritor);
	inventario -> precio = costo;
	inventario -> literario = clase;
	inventario -> cantidad = cuantidad;
}

// Función encargada de casting para imprimir la catégoría real del libro (y no un número).
char * gen(genero * literario){ // Un puntero a genero.
	switch(*literario){ // Dependiendo de el número que se le haya asignado.
		case 0:
			return "FICCION"; // Retornará un valor u otro.
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
			return "NO IDENTIFICADO"; // Si no existe, se le asignará un "NO IDENTIDICADO"
	}
}

// Al usar esta función, imprimiremos el contenido que hay en un espacio de memoria dado con antelación.
void ImprimirLibro(libro * contenido){ // Se envia con anterioridad una dirección de memoria apuntando a un libro en especiífico.
	printf("%d, %s, %s, %.2f, %s[%d], %d\n", contenido -> identificador, contenido -> titulo, contenido -> autor, contenido -> precio, gen(&contenido -> literario), contenido -> literario ,contenido -> cantidad); // Directamente lo imprimimos, haciendo uso de la función de casting hecha con anterioridad para mostrar el género real.
}

// Imprime todos libros que hayan en la dirección de memoria.
void ImprimirEstante(libro * inventario){ // Le pasamos la posición 0 del catálogo con todos los libros.
	for(int i = 0; i < MAX_LIBROS; i++, inventario++){ // Dependiendo de la cantidad máxima de libros, se ejecutará este bucle que posicionará el bucle en un espacio del catálogo
		ImprimirLibro(inventario); // Y haciendo uso de la anterior función creada, imprimeros cada uno de los libros.
	}
}

// Busca un libro basándose en el ID que este posee.
int BuscarLibro(libro * imprimir, const int numero){ // Recibe un puntero a libro en la posición 0 del catálogo, en conjunto con el número del identificador que estamos buscando.
	int pasos = 0; // Creamos una varibale que mida las veces que pasamos por el bucle (para usarla en una función que está más adelante), y un límite para que pase libro por libro.

	while(imprimir -> identificador != numero){ // Creamos un bucle que ocurra siempre y cuando el identificador del libro en que está posicionado no sea igual.
		imprimir++; // Si se cumple la condición, se incrementa una posición en el catálogo (pasamos al siguiente libro).
		pasos++; // Guardamos la cantidad de pasos que hace el bucle.

		if(pasos > MAX_LIBROS){ // Si se da el caso que el bucle se ejecuta más veces de la cantidad de libros que hay.
			printf("No existe ese libro.\n"); // Imprimirá esto.
			return EXIT_FAILURE; // Y terminará el programa totalmente.
		}
	}

	ImprimirLibro(imprimir); // Al salir del bucle tras encontrar un libro que si sea igual, lo imprimirá.

	return pasos; // Y retornará el valor usado para la fuinción AñadirLotes().
}

// Con esta función, dado el identificador del libro, podemos aumentar la cantidad de libros que hay en uno de manera específica.
void AñadirLote(libro * añadir, const int numero, const int nuevacantidad){ // Recibe la dirección de memoria en 0, el número de identificador, y la nueva cantidad que necesita.
	int vueltas; // Variable encargada de guardas el valor de retorno de la función BuscarLibro().
	
	printf("Este es el libro que has seleccionado:\n");
	vueltas = BuscarLibro(añadir, numero); // Se le asigna a la variable creada con aterioridad la cantidad de vueltas dadas.

	añadir[vueltas].cantidad += nuevacantidad; // Nos posicionamos momentaneamente en la dirección de memoria en la que vamos a modificar la cantidad, y la incrementamos.
	printf("Ahora la cantidad total de existencias de este libro son %d.\n", añadir[vueltas].cantidad); // Por último la imprimimos.
}

// Dependiendo de la la categoría literaria que haya en cada libro, se imprimiran uno u otros
void ImprimirCategoria(libro * estante, const int clase){ // Se le pasa la posición de la variable catálogo en 0, en conjunto con el número de la categoría especificado con aterioridad.
	for(int k = 0; k < MAX_LIBROS; k++, estante++){ // Creamos un bucle que pase por todos los libros.
		if(estante -> literario == clase){ // Y si el número coincide con el valor especificado anteriorimente en el enum "categoría".
			ImprimirLibro(estante); // Se imprimirá.
		}
		else
		if(clase < 0 || clase > 4){ // Si no se cumple lo anterior, y además, la clase no existe.
			printf("No existe ese género literario en esta biblioteca.\n"); // Imprimirá esto.
			break; // Y saldrá del bucle.
		}
	}
}

// Con el nombre dado de un autor, se puede imprimir el libro en el que haya participado o creado ese autor.
void BuscarAutor(libro * libreria, const char literato[MAX_NOMBRE]){ // Le pasamos la posición 0 del catálogo en conjunto con el nombre del catálogo
	for(int m = 0; m < MAX_LIBROS; m++, libreria++){ // Creamos un bucle para que vaya pasando libro por libro.
		for(int n = 0; n < MAX_NOMBRE; n++){ // Y otro bucle para pasar letra por letra en cada uno de los nombres de los autores.
			// Y cumpliendo la condición en la que compares el nombre del autor de un libro (empezando desde una sílaba dada con la letra 'n') con la de la variable literato, dada con el tamaño que tiene el nombre del autor dado por el usuario.
			if(strncmp(libreria -> autor + n, literato, strlen(literato)) == 0){
				ImprimirLibro(libreria); // Imprimirá eñ libro.
				break;
			}
		}
	}
}

// Esta función es la encargada de añadir un libro al catálogo, con todos su datos posibles, y mostrando como se guardaría. 
libro * AñadirLibro(libro * repositorio, const int nuevo){ // Creamos un puntero a libro para que, al terminar la función, regrese una dirección de memoria al primer libro del catálogo.
	// Creamos las variables para poder asginarlas en el bucle.
	int id, cuantidad;
	float costo;
	char nombre[MAX_NOMBRE], escritor[MAX_NOMBRE];
	genero clase;
	
	// Realizamos un realoc al catálogo, para volver a reservar espacio, pero con más espacio; reservado para los nuevos libros.
	// Creamos un puntero a libro llamado recatalogo, donde guardaremos el nuevo catálogo.
	// Libera el primer catálogo, reserva un nuevo espacio del tamaño de la cantidad de libros más los nuevos a añadir.
	// Y el tamaño en bits que tendrán serán del sizeof(libro).
	libro * recatalogo = (libro *)realloc(repositorio, (MAX_LIBROS + nuevo) * sizeof(libro));
	if(recatalogo == NULL){ // Si no es posible reservar espacio por falta de memoria.
		printf("Error, memoria insuficiente.\n"); // Imprimirá el programa.
		exit(EXIT_FAILURE); // Y terminará el programa al completo
	}

	for(int o = MAX_LIBROS; o < MAX_LIBROS + nuevo; o++){ // Creamos un bucle que empiece en la primera posición del libro nuevo, y que termine después de llegar al último libro a rellenar
		// Le pasamos todos los datos del libro, uno por uno.
		printf("Escriba el id: ");
		scanf("%d", &id);
		printf("Escriba el título: ");
		scanf("%s", nombre);
		printf("Escriba el autor: ");
		scanf("%s", escritor);
		printf("Escriba su costo: ");
		scanf("%f", &costo);
		printf("Escriba su genero: ");
		scanf("%u", &clase);
		printf("Escriba la cantidad: ");
		scanf("%d", &cuantidad);
		
		// Le pasamos la posición en el catálogo en conjunto con todos los datos del libro a la función Inicializar para que los guarde en ese sitio asignado.
		InicializarLibro(&recatalogo[o], id, nombre, escritor, costo, clase, cuantidad);
		
		printf("Has añadido el siguiente libro:\n");
		ImprimirLibro(&recatalogo[o++]); // Y lo mostramos por pantalla.
	}

	MAX_LIBROS += nuevo; // Incrementamos la cantidad de Libros que hay en total, para evitar que no tome en cuenta los nuevos libros.

	return &recatalogo[0]; // Y retornamos la nueva dirección de memoria del catálogo, debido que al hacer un realoc, esta desapareció en main y solo existe en esta función (pero no se borra al terminar el programa).
}


/*
 *------------------------
 *------FUNCION MAIN------
 *------------------------
*/

int main(int argc, char ** argv){ // Variables necesarias para poder probar el programa desde las líneas de comandos.
	libro * catalogo = (libro *)malloc(MAX_LIBROS*sizeof(libro)); // Reservamos el espacio de memoria para el puntero a libro "catálogo", del tamaño de MAX_LIBROS multiplicado por los bits de la variable de tipo libro.
	error(catalogo); // Si da error, el programa terminará al instante,
	
	// Guardamos cada uno de los datos de cada libro en un espacio de libro asignado.
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

	if(argc == 1){ // Si solamente se ejecuta el programa sin línea de comandos, aparecerá el siguiente menú.
		int escoger; // Creamos la variable escoger para poder utilizar una de las 6 funciones existentes (sin contar el salir como función).
		printf("Bienvenido a la biblioteca de Pantheon. Escriba el número de una de las siguientes operaciones que deseas ejecutar:\n\
			1. Mostrar todos los libros.\n\
			2. Mostrar el libro que escojas por ID.\n\
			3. Aumentar el stock de un libro através de su ID.\n\
			4. Mostrar todos los libros de una categoría.\n\
			5. Mostrar los libros del autor.\n\
			6. Añadir libros\n\
			7. Salir.\n");
		scanf("%d", &escoger);

		// Creamos un bucle que solo ocurra si la variable escoger se encuentra dentro del las 6 posibilidades dadas.
		do{
			switch(escoger){
				case 1: // Si el valor de escoger es 1
					printf("Estos son todos los libros que tenemos disponibles:\n");
					ImprimirEstante(&catalogo[0]); // Imprime todos los libros.

					printf("¿Qué función deseas ejecutar?\n");
					scanf("%d", &escoger); // Y escanea otra respuesta en caso de que el usuario quiera ejecitar otra funciñon (así en todos los casos).
					
					printf("\n");

					break; // Sale del switch.
				case 2:
					int id; // Creamos la variable donde se guardará el identificador del libro a buscar.

					printf("Escriba el número del identificador del libro:\n");
					scanf("%d", &id); // La escaneamos por panatalla.

					BuscarLibro(&catalogo[0], id); // Ejecutamos la función mandandole la dirección de memoria del catálogo junto con su ID.

					printf("¿Qué función deseas ejecutar?\n");
					scanf("%d", &escoger);
					
					printf("\n");

					break;
				case 3:
					int vinculo, nuevacantidad; // Identificador y la nueva cantidad a añadir al libro
				
					// Las añadimos.
					printf("Escriba el número del identificador del libro:\n");
					scanf("%d", &vinculo);
					printf("Escriba la cantidad de libros a añadir: \n");
					scanf("%d", &nuevacantidad);

					AñadirLote(&catalogo[0], vinculo, nuevacantidad); // Le mandamos la información pertienente a la función
					
					printf("¿Qué función deseas ejecutar?\n");
					scanf("%d", &escoger);
					
					printf("\n");

					break;
				case 4:
					int tipo; // Género literario a buscar
	
					printf("Los género literarios están divididos en números:\n\
					0 es FICCION;\n\
					1 es NO FICCION;\n\
					2 es POESIA;\n\
					3 es TEATRO;\n\
					4 es ENSAYO\n");
					printf("¿Los libros de qué categoría deseas observar?\n");
					scanf("%d", &tipo);

					ImprimirCategoria(&catalogo[0], tipo); // Le mandamos su información, en conjunto conuna explicación para evitar problemas de ejecución.

					printf("¿Qué función deseas ejecutar?\n");
					scanf("%d", &escoger);
					
					printf("\n");

					break;
				case 5:
					char escritor[MAX_NOMBRE]; // Creamos la variable donde guardaremos el nombre del escritor que le demos.

					printf("Escriba el nombre del autor:\n");
					scanf(" "); // Escaneamos un espacio en blanco antes debido a que el fgets pilla el "\n" del último printf.
					fgets(escritor, MAX_NOMBRE, stdin); // Lo escaneamos con el tamaño máximo de letras.
					escritor[strlen(escritor) - 1] = '\0'; // Y, tomando en cuenta que fgets escanea hasta enter, nos posicionamos en el último sitio usando el tamaño usar en la variable (restandole 1 para posicionarlos justo en el "\n", y lo cambiamos por el "\0", para que termine de leer la cadena justo ahí.)

					BuscarAutor(&catalogo[0], escritor); // Le pasamos la posición de memoria, en conjunyo con la variable.
					
					printf("¿Qué función deseas ejecutar?\n");
					scanf("%d", &escoger);

					printf("\n");

					break;
				case 6:
					int maslibro; // Cantidad de libros a añadir.

					printf("¿Cuántos libros quieres añadir?\n");
					scanf("%d", &maslibro); // Escaneamos la cantidad deseada.
					
					// Y le mandamos los valores necesarios a la función creada.
					// Cabe recalcar que al realizar un realoc en la función Añadir Libro, el catalogo está apuntando a un espacio de memoria libre, sin reservar (que puede llegar a dar problemas), que nos puede dar errores.
					// Es por ello que retornamos la dirección de memoria creado con el realoc en la posición 0, y le posicionamos en el primer libro del nuevo espacio reservado.
					catalogo = AñadirLibro(&catalogo[0], maslibro);

					printf("¿Qué función deseas ejecutar?\n");
					scanf("%d", &escoger);
					
					printf("\n");

					break;
				}
		} while(escoger == 1 || escoger == 2 || escoger == 3 || escoger == 4 || escoger == 5 || escoger == 6);
		
		// Si el usuario no escoge ninguna de las posibilidades, imprimir este printf, y el programa termina.
		printf("Muchas gracias por usar nuestro programa de inventario, ¡Hasta la próxima!\n");
	}else 
	if(argc == 2){ // Si se recibe 2 argumenos por línea de argumentos.
		if (strcmp(argv[1],"mostrar") == false){ // Y la palabra dada es "mostrar".
			printf("Ejecutamos ImprimirEstante().\n");
			
			ImprimirEstante(&catalogo[0]); // Se ejecuta la función.
		}
		else
		if (strcmp(argv[1],"añadir") == false){ // Si la palabra es "añadir"
			printf("Ejecutamos AñadirLibro().\n");
			
			catalogo = AñadirLibro(&catalogo[0], 1); // Realizamos esta función, recordando la esplicación anteriormente dada.

		}
	}
	else 
	if(argc == 3){ // Si recibe 3 argumentos por línea de comandos.
		if(strcmp(argv[1], "mostrar") == false){ // Y recibe "mostrar"
			int id = atoi(argv[2]); // Además del identificador.
			
			printf("Ejecutamos BuscarLibro().\n");

			BuscarLibro(&catalogo[0], id); // Realiza la función
		}
		else
		if(strcmp(argv[1], "categoria") == false){ // Recibe "categoria"
			int categoria = atoi(argv[2]); // Y el número del género del libro
			
			printf("Ejecutamos ImprimirCategoria().\n");

			ImprimirCategoria(&catalogo[0], categoria); // Ejecutado.
		}
		else
		if(strcmp(argv[1], "autor") == false){ // Recibe "autor"
			char * productor = argv[2]; // Y el nombre del autor
			
			printf("Ejecutamos BuscarAutor().");

			BuscarAutor(&catalogo[0], productor);
		}
		else
		if(strcmp(argv[1],"añadir") == false){ // Recibe "añadir"
			int porcion = atoi(argv[2]); // Pero con la cantidad de libros a procesar
			
			printf("Ejecutamos AñadirLibro().\n");

			catalogo = AñadirLibro(&catalogo[0], porcion);
		}
	}
	else
	if (argc == 4){ // Si recibe un total de 4 argumentos
		if(strcmp(argv[1], "cantidad") == false){ // Y lo que escanea es igual a "cantidad"
			int registro = atoi(argv[2]); // Recibiendo tanto el identificador del libro
			int suma = atoi(argv[3]); // Como la cantidad a sumar.

			printf("Ejecutamos la función AñadirLote().\n");

			AñadirLote(&catalogo[0], registro, suma); // Ejecuta la función.
		}
	}

	free(catalogo); // Siempre que termine el programa, se liberará la memoria reservada.

	return EXIT_SUCCESS; // Y finalizaremos el programa.
}

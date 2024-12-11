#include <stdio.h>
#include <stdlib.h>
#include <string.h>

/* 
 *  Autor: Bryan Andreu Jiménez Rojas.
 *  Curso: Desarrollo de Aplicaciones Multiplataforma 1.
*/ 

// Definición de constantes que se usan pero no cambian.
#define MAX_NOMBRE 50
#define MAX_LIBROS 40
#define MIN_LIBROS 1

// Definición de tipo de dato "genero".
typedef enum{
	FICCION, // = 0
	NO_FICCION, // = 1
	POESIA, // = 2
	TEATRO, // = 3
	ENSAYO, // = 4
} genero;

// Definición del tipo de dato compuesto "libro".
typedef struct{
	int identificador;
	char titulo [MAX_NOMBRE];
	char autor [MAX_NOMBRE];
	float precio;
	genero literario;
	int cantidad;
} libro;

// Transforma el tipo de dato "genero" en un printf de su categoría correspondiente.
char *categoria(genero *tipo){
    switch(*tipo){
        case 0:
            return "FICCION";
            break;
        case 1:
            return "NO_FICCION";
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
            return "GENERO NO ENCONTRADO";
    }
}

// Imprime los datos de cada libro.
void mostrarLibro(libro *libro_a_imprimir){
    printf("%d, %s, %s, %.2f, %s, %d.\n",  libro_a_imprimir -> identificador,  libro_a_imprimir -> titulo,  libro_a_imprimir -> autor,  libro_a_imprimir -> precio, categoria(&libro_a_imprimir -> literario), libro_a_imprimir -> cantidad);
}

// Imprime el libro con el ID que el usuario ha insertado.
void comparar_y_mostrar(libro *inventario, const int busqueda1){
    if(busqueda1 == inventario -> identificador){
        mostrarLibro(inventario); // Ejecutamos la misma función con la que se imprime los datos de cada libro, pero especificando cual.
    }
}

// Dandole un número, lo compara con el ID, y si es igual lo imprime.
void añadir_stock(libro *registro, const int busqueda2, const int suma){
    if(busqueda2 == registro -> identificador){
        registro -> cantidad += suma;
        mostrarLibro(registro);
    }
}

// Pasa por cada uno de los libros, e imprime los que tenga el mismo número de categoría.
void mostrar_por_categoria(libro *memoria, const int buscarcategoria){
    for (int l = 0; l < MAX_LIBROS; ++l){
        // Tenemos SI o SI, recorrer el array de alguna manera, por algo estamos usando el bucle.
        // memoria[l] <-> *(memoria+l); Con esto estamos accediendo al contenido del puntero al que estamos apuntando
        //if(buscarcategoria == memoria[l] . literario){ Esto es una manera de escribirlo.
        if(buscarcategoria == (memoria+l) -> literario){
            mostrarLibro(memoria+l);
        }
        else{
            continue;
        }
    }
}

// Escribiendo el nombre de uno de los autores, imprimirá su o sus libros correspondientes (En construcción).
void mostrar_por_autor(libro *estanteria, const char *librerista){
    for (int m = 0; m < MAX_LIBROS; ++m, estanteria++){
        (strcmp(librerista, estanteria -> autor) == 0) ? mostrarLibro(estanteria+ m) : estanteria+m;
    }
}

int main(){
    int escoger, buscar1, buscar2, stock, buscat;
    char escritor[MAX_NOMBRE];

    // Creamos la variable con tipo de dato libro, que contenga los 40 libros con sus correspondientes datos.
    libro libros[MAX_LIBROS] = {
        {1, "To Kill a Mockingbird", "Harper Lee", 15.99, FICCION, 10},
        {2, "1984", "George Orwell", 12.49, FICCION, 5},
        {3, "The Great Gatsby", "F. Scott Fitzgerald", 10.99, FICCION, 8},
        {4, "Moby Dick", "Herman Melville", 18.99, FICCION, 12},
        {5, "War and Peace", "Leo Tolstoy", 20.00, FICCION, 7},
        {6, "Pride and Prejudice", "Jane Austen", 14.99, FICCION, 9},
        {7, "The Catcher in the Rye", "J.D. Salinger", 10.00, FICCION, 6},
        {8, "The Odyssey", "Homer", 17.49, FICCION, 4},
        {9, "Ulysses", "James Joyce", 25.00, FICCION, 2},
        {10, "The Divine Comedy", "Dante Alighieri", 22.00, POESIA, 3},
        {11, "Leaves of Grass", "Walt Whitman", 13.00, POESIA, 11},
        {12, "The Iliad", "Homer", 18.50, FICCION, 7},
        {13, "A Brief History of Time", "Stephen Hawking", 15.00, NO_FICCION, 15},
        {14, "The Art of War", "Sun Tzu", 9.99, NO_FICCION, 20},
        {15, "Sapiens: A Brief History of Humankind", "Yuval Noah Harari", 16.49, NO_FICCION, 13},
        {16, "The Selfish Gene", "Richard Dawkins", 14.00, NO_FICCION, 6},
        {17, "The Road to Serfdom", "F.A. Hayek", 10.50, NO_FICCION, 5},
        {18, "The Wealth of Nations", "Adam Smith", 30.00, NO_FICCION, 8},
        {19, "On the Origin of Species", "Charles Darwin", 24.99, NO_FICCION, 4},
        {20, "The Prince", "Niccolò Machiavelli", 8.99, NO_FICCION, 14},
        {21, "Hamlet", "William Shakespeare", 11.50, TEATRO, 6},
        {22, "Macbeth", "William Shakespeare", 9.50, TEATRO, 8},
        {23, "Othello", "William Shakespeare", 10.99, TEATRO, 7},
        {24, "A Doll's House", "Henrik Ibsen", 12.50, TEATRO, 5},
        {25, "Waiting for Godot", "Samuel Beckett", 13.99, TEATRO, 4},
        {26, "Death of a Salesman", "Arthur Miller", 14.99, TEATRO, 10},
        {27, "The Glass Menagerie", "Tennessee Williams", 11.00, TEATRO, 9},
        {28, "Long Day's Journey into Night", "Eugene O'Neill", 19.50, TEATRO, 3},
        {29, "The Importance of Being Earnest", "Oscar Wilde", 8.50, TEATRO, 15},
        {30, "The Waste Land", "T.S. Eliot", 6.99, POESIA, 10},
        {31, "Paradise Lost", "John Milton", 12.00, POESIA, 7},
        {32, "Beowulf", "Anonymous", 15.00, POESIA, 5},
        {33, "Essays", "Michel de Montaigne", 20.00, ENSAYO, 4},
        {34, "Self-Reliance and Other Essays", "Ralph Waldo Emerson", 9.00, ENSAYO, 9},
        {35, "Civil Disobedience and Other Essays", "Henry David Thoreau", 7.50, ENSAYO, 11},
        {36, "Meditations", "Marcus Aurelius", 11.99, ENSAYO, 8},
        {37, "The Federalist Papers", "Alexander Hamilton, James Madison, John Jay", 18.00, ENSAYO, 5},
        {38, "The Communist Manifesto", "Karl Marx and Friedrich Engels", 5.99, ENSAYO, 12},
        {39, "The Republic", "Plato", 16.00, ENSAYO, 6},
        {40, "Thus Spoke Zarathustra", "Friedrich Nietzsche", 14.99, ENSAYO, 10}
    }; 


    // El usuario escoje que operación desea realizar de las siguientes
    printf("Bienvenido a la biblioteca de Pantheon. Escriba el número de una de las siguientes operaciones que deseas ejecutar:\n\
        1. Mostrar todos los libros.\n\
        2. Mostrar el libro que escojas por ID.\n\
        3. Aumentar el stock de un libro através de su ID.\n\
        4. Mostrar todos los libros de una categoría.\n\
        5. Mostrar los libros del autor.\n");
    scanf("%d", &escoger);

        // Dependiendo de su respuesta, ejecutará una línea de código o no.
        switch(escoger){
            case 1:
                // Pasa por cada uno de los libros guardado en el array.
                for (int i = 0; i < MAX_LIBROS; ++i){
                    mostrarLibro(&libros[0] + i); 
                    //mostrarLibro(libros + i); // Es lo mismo, porque empieza de manera predeterminada en el 0,.
                }
                break;

            case 2:
                printf("\tInserte el id del libro que desea visualizar:\n");
                scanf("%d", &buscar1);

                // Pasamos por cada libro para que, al comprobar que el número que hemos insertado es igual al ID de uno de los libros, lo imprima.
                if(buscar1 <= MAX_LIBROS && buscar1 >= MIN_LIBROS){
                    int j = 0;
                    while(j < MAX_LIBROS){
                        comparar_y_mostrar(&libros[0] + j, buscar1); // Es necesario enviar la dirección de memoria en 0 porque el último dato que le hemos dado es el libro 40 (anterior función)
                        j++;
                    }
                }
                else{
                    printf("Error: el id que has insertado no existe.\n");
                }
                break;

            case 3:
                printf("\tInserte el ID del libro al que le quiera cambiar el stock:\n");
                scanf("%d", &buscar2);

                printf("¿Cuántos libros deseas añadir al stock?\n");
                scanf("%d", &stock);

                // Al seleccionar un libro, le aumentamos a su stock actual una cantidad que le demos, y después le imprimimos
                if(buscar2 <= MAX_LIBROS && buscar2 >= MIN_LIBROS){
                    int k = 0;
                    do{
                        añadir_stock(&libros[0] + k, buscar2, stock);
                        k++;
                    }
                    while(k < MAX_LIBROS);
                }
                else{
                    printf("Error: el id que has insertado no existe.\n");
                }
                break;

            case 4:
                // Mostrar todos los libros dependiendo de la cateogoría en la que se encuentre.
                printf("¿De qué categoría de libros quieres ver los libros (FICCION = 0, NO_FICCION = 1, POESIA = 2, TEATRO = 3, ENSAYO = 4)?\n");
                scanf("%d", &buscat);

                mostrar_por_categoria(&libros[0], buscat); // La mandamos a función correspondiente.
                break;

            case 5:
                // Por último, imprimiremos el o los libros del autor que el usuario escriba.
                printf("Escriba el nombre del autor de manera totalmente correcta:\n");
                scanf(" "); // Le damos un espacio en blanco para evitar que guarde en entero de la anterior función ejecutada.
                fgets(escritor, MAX_NOMBRE, stdin); // Es una de las maneras que se usan para guardar cadenas de carácteres con espacios intermedios.

                mostrar_por_autor(&libros[0], escritor);
                break;
            default:
                printf("Error, no existe esa numeración\n");
        }

	return EXIT_SUCCESS;
}

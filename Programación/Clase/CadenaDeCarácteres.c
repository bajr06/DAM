#include <stdio.h>
#include <stdlib.h>

int main(){
	char str1[5] = "Hola";
	printf("%s\n", str1);
	printf("%c\n", str1[3]); //Imprime el cuarto carácter, porque empieza a contar en 0, str1[0] = 'h'
	printf("%d\n", str1[4]);
	str1[4]='$'; //Elimina el \0 y se seguirá imprimiendo hasta que haya un \0 en la memora.
	printf("%s\n", str1);


	return EXIT_SUCCESS;
}

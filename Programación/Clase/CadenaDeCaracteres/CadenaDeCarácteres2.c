#include <stdio.h>
#include <stdlib.h>

int main(){
	char str1[100];
	char str2[100];
	printf("Introduce una palabra:\n");
	scanf("%s", str1); //No hace falta el & becasue...
	scanf("%s", str2);  hace falta el & becasue...
	printf("%s%s\n", str1, str2);

	return EXIT_SUCCESS;
}

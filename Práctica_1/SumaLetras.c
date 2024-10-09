#include <stdio.h>
#include <stdlib.h>

int main (){
	char a;
	a='a';

	printf("%c+1=%i\n", a, a+1);
	printf("%c+2=%i\n", a, a+2);
	printf("%c+28=%i\n", a, a+28);

	printf("%c-58=%i\n", a, a-58);
	printf("%c*2=%i\n", a, a*2);
	printf("%c/2=%i\n", a, a/2);

	return EXIT_SUCCESS;
}

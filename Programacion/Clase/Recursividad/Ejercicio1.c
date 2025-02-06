#include <stdio.h>
#include <stdlib.h>

int contar(char * pal, int vul, int cant){
	if(pal[vul] == '\0'){
		return cant;
	}

	if(pal[vul] == 'a' || pal[vul] == 'e' || pal[vul] == 'i' || pal[vul] == 'o' || pal[vul] == 'u' || pal[vul] == 'A' || pal[vul] == 'E' || pal[vul] == 'I' || pal[vul] == 'O' || pal[vul] == 'U'){
		return contar(pal, vul + 1, cant + 1);
	}
	else{
		return contar(pal, vul + 1, cant);
	}
}


int main(){
	char str[10] = "Dinero";
	int vueltas = 0;
	int cantidad = 0;

	printf("La palabra %s tiene %d consonates\n", str, contar(str, vueltas, cantidad));

	return EXIT_SUCCESS;
}

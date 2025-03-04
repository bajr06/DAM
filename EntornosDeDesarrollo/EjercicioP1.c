#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void main(int argc, char ** argv){
	char miFruta[8] = "naranja"; // 1

	if(strcmp(miFruta, "naranja") == 0){ //2
		printf("Iguales.\n"); // 3
	}
	else{
		printf("Distintos.\n"); // 4
	}

	// 5
}

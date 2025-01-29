#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

void main(){
	int SUS = 0;

	while(true){
		SUS++;

		int * BOOM = (int *)malloc(SUS * sizeof(int));
		
		printf("SUS = %d\n", SUS);
	}
}

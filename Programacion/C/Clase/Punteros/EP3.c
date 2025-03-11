#include <stdio.h>

int main(){
	int arr[5] = {10, 20, 30, 40, 50};
	int *p;
	p= arr + 5; //Va directo a la posición 5 del array
	// p = &arr[4]; Mejor porque va di
	//p = &arr[5]; Dirección del sexto elemento.

	for (int i = 5; i >0; i--) {
		printf("Elemento %d: %d\n", i, *(p-i));
  	}
}

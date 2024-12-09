#include <stdio.h>
#include <stdlib.h>

int main(){
	float ingreso;
	char rol;

	printf("Ingrese el monto total de una compra\n");
	scanf("%f", &ingreso);
	
	printf("Escriba la inicial de su rol en el instituto (Estudiante (E), Profesor (P) u Otro(O)):\n");
	scanf(" %c", &rol);

	if(rol == 'E'){
		printf("Su monto total es de %.2f por ser estudiante\n", ingreso * 0.90);
	}
	else
	if(rol == 'P'){
		printf("Su monto total es de %.2f por ser profesor\n", ingreso * 0.85);
	}
	else
	if(rol == 'O'){
		printf("Usted no tiene descuento, por lo que su monto total sigue siendo %.2f\n", ingreso);
	}
	else{
		printf("Usted no tiene descuento, por lo que su monto total sigue siendo %.2f\n", ingreso);
	}
	
	return EXIT_SUCCESS;
}

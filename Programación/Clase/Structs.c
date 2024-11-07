#include <stdio.h>
#include <stdlib.h>

/*
 * 
 * 	Autor: Bryan Andreu Jiménez Rojas.
 *
*/ 

struct fecha{ //Declara el tipo de dato.
	int día;
	int mes;
	int año;
};

struct cuenta{
	int num_cuenta;
	int tipo_cuenta;
	char nombre[80];
	float saldo;
	struct fecha ultimopago;
};

int main(){
	struct cuenta cliente[100];
	// Declarando "hueco" para 100 cuentas.
	
	struct cuenta usuario = {12345, 'R', "Jose", 586.30, {24, 5, 1990}};
		//num_cuenta, tipo_cuenta, nombre, saldo, fecha.dia, fecha.mes, fecha.año
	
	printf("Número de cuenta: %d\n", usuario.num_cuenta);
	printf("Tipo de cuenta: %c", usuario.tipo_cuenta);
	printf("Día del último pago: %d\n", usuario.ultimopago.día);
	
	//No funciona, revisar GitHub de Profesor.

	return EXIT_SUCCESS;
}

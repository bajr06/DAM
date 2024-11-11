#include <stdio.h>
#include <stdlib.h>

/*
 * 
 * 	Autor: Bryan Andreu Jiménez Rojas.
 *
*/ 

struct fecha{ //Declara el tipo de dato.
	int dia;
	int mes;
	int anio;
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
	printf("Día del último pago: %d\n", usuario.ultimopago.dia);
	
	/** Array de clientes */
	cliente[0].ultimopago.dia = 24;
	cliente[0].ultimopago.mes = 5;
	cliente[0].ultimopago.anio = 1990;
	cliente[0].num_cuenta = 12345;
	cliente[0].tipo_cuenta = 'R';
	//strcpy(cliente[0].nombre, "José");  // Usar strcpy para copiar cadenas en C
	cliente[0].saldo = 586.30;

	printf("%d\n",cliente[0].tipo_cuenta);

	// Rellenamos el segundo cliente por pantalla:
	printf("Introduce el número de cuenta: ");
	scanf("%d",&cliente[1].num_cuenta);
	printf("El número de cuenta es: %d\n",cliente[1].num_cuenta);

	return EXIT_SUCCESS;
}

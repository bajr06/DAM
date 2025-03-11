#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

#define MAX_ITEMS 100
/*
 * 
 * 	Autor: Bryan Andreu Jiménez Rojas.
 *
*/ 

typedef struct{
       char nombre2[MAX_ITEMS];
       char direccion[MAX_ITEMS];
       char telefono[MAX_ITEMS];
} Proveedor;

typedef struct{
	char nombre1[MAX_ITEMS];
	float precio;
	Proveedor proveedor;
} Articulo;

typedef struct{
	Articulo articulos[MAX_ITEMS];
	int cantidades[MAX_ITEMS];
	int totalArticulos;
} Inventario;

int main(){
	Inventario miInventario;

	Articulo articulo = {"Detergente", 1.99, {"Familia1", "Av.América.49", "641219751"}};
       	miInventario.articulos[0] = articulo;
	miInventario.cantidades[0] = 10;

	printf("Artículo:%s\n", miInventario.articulos[0].nombre1);
	printf("Precio: %.2f\n", miInventario.articulos[0].precio);
	printf("Proveedor: %s\n", miInventario.articulos[0].proveedor.nombre2);
	printf("Dirección: %s\n", miInventario.articulos[0].proveedor.direccion);
	printf("Teléfono: %s\n", miInventario.articulos[0].proveedor.telefono);
	printf("Cantidad: %d\n", miInventario.cantidades[0]);
		
	return EXIT_SUCCESS;
}

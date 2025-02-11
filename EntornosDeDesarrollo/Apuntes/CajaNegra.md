# Ejemplos de Caja Negra

## Ejemplo 1

```c
#include <stdio.h>
#include <stdlib.h>

int main(){
    puts("FALTA CÓDIGO AQUI AAAAAAAAHHHHHH");
	return EXIT_FAILURE;
}
```

| | While (n <= 10) num | For (for i = 0; i <= n; i++) | Do ... While |
|----|:----:|:----:|:----:|
| 1. Pasar por alto el bucle | 11 | 7 | - | 
| 2. Pasar una sola vez | 10 | 6 | 4 |
| 3. Pasar dos veces | 9 | 5 | 3 |
| 4. Pasar  m < n, n = max vueltas | 5 | - | 2 |
| 5. n - 1 (penúltima) | 9 | 5 | 3 |
| 6. n + 1 | 11 | 7 | 5 |

<br>

## Ejemplo 2

```c
#include <stdio.h>
#include <stdlib.h>

int main(){
	char tienePermiso;
	int edad;

	printf("¿Cuál es su edad? ");
	scanf("%d", &edad);

	if(edad >= 18){
		printf("¿Tienes permiso de conducir? (s/n): ");
		scanf("%c", &tienePermiso);

		if (tienePermiso == 's' || tienePermiso == 'S'){
			printf("Puedes conduncir.\n");
		}
		else{
			printf("No puedes conducir sin permiso.\n");
		}
	}
	else{
		printf("Eres menor de edad. No puedes conducir");
	}

	return EXIT_SUCCESS;
}
```
- D1 -> edad => 18
- D2 -> tienePermiso == 's' || tienePermiso == 'S'

| | | | |  edad| tiene permiso |
|---|:---:|----|:---:|:----:|:---:|
| | **F** | |  | 15 | - |
| **D1** | **V** | **D2** | **F** | 18 | 0 |
| | |  | **V** | 18 | 5 |

<br>

## Ejemplo 3

> Disponemos de un módulo de software de una aplicación  bancaria con los siguientes datos de entrada con su tipo:
> - Código de area: número de 3 dígitos que no empieza por 0 ni por 1
> - Clave identificativa de la operación: 6 caracteres alfanuméricos
> - Ordenes posibles:”cheque”,”deposito”,”pago factura”,”retirada de fondos"


| | Regla Heurística | Clave Válida | Clave inválida | 
| --- | --- | --- | --- |
| **Código de Área** |  Rango de Valores | $200 \leqslant n \leqslant 999;$ Debe ser $n^x$ | $n < 200 n < 999$ |
| **Clave de Identificación (6 carácteres)** | Debe ser cadena alfanumérica | Debe ser cadena $long(cadena) = 6$ | $long(cadena) < 6;$ $long(cadena) > 6$
| **Órdenes** | Conjunto de valores | Ordenes = Cheque; Ordenes = Depósito; Órdenes = Pago Factura; Órdenes = RetiradaFondos | No es órden válida |


| Código de Área | Clave Identificativa | Orden | Cobertura de la Cadena (Clave que se cumpla) |
| :---: | :---: | :---: | :---: |
| 200 | "ABDCEF" | CHEQUE | 1, 2, 6, 7 |
| 100 | "ABC" | "A" | 3, 8, 15 |
| 1000 | "ABCDEFGH" | DEPÓSITO | 4, 9, 12 |
|"A" | "*\*_*%" | PAGO FACTURA | 5, 8, 10 |
| 201 | "abc123" | "Retirada" | 1, 2, 6, 14 |

<br>

## Ejemplo 4

> Página de Seguimientos de pedidos (Usuario (Cadena alfanumérica); contraseña (4 carácteres); CP (5 carácteres); Nº Pedido (12 carácteres numéricos); Nº Control (Nº Entre 100 - 1500))

| Parámetros de Entrada | Regla Heurística | Clase Válida | Clase Inválida |
| --- | --- | --- | --- |
| **Usuario** | Debe ser cadena alfanumérica | $Usuario = [A-Z; a-z; 0-9]$; <br> $3 \leqslant long(cadena) \leqslant 10$ | $Longitud(usuario) < 3$ <br> $Longitud(usuario) > 10$ <br> $Usuario \neq [A-Z; a-z; 0-9]$
| **Contraseña** | Debe de ser cadena | $Contraseña = [A-Z, a-z];$ <br> $long(contraseña) = 4$ | $contraseña \neq [A-Z; a-z; 0-9]$ <br> $log(cantraseña) < 4$ <br> $Longitud > 4$
| **CP** | Rango de Valores | $CP = 280001;$ <br> $CP = 28020$ <br> $CP = 28021$ | No está en el rango |
| **Nº Pedido** | Debe ser Ordena | $NºPed = [A-Z; a-z; 0-9]$ <br> $Log(NºPedido) = 12$ | $Nº Pedido \neq [A-Z; a-z; 0-9]$ <br> $Long(NºPedido) < 12$ <br> $Long(NºPedido) > 12$
| **Nº Control**| Debe ser Nº | $Nº Control = [0-9]*$ <br> $100 \leqslant NºControl \leqslant 1500$ | $NºControl < 100$ <br> $NºControl > 1500$ <br> No es número -> $NºControl \neq [0-9]*$ |


| Usuario | Contraseña | CP | Nº Pedido | Nº Control | Cobertura - Claves Cubiertas |
| :---: | :---: | :---: | :---: | :---: | :---: |
| abcd | abc |  28001 | 1234567891234 | 100 | 1, 2, 6, 7, 15, 16 |
| ab | a | 28020 | 123 | 96 | 1, 3, 6, 7, 20, 22, 15, 18 |
| 123456789 | | | | | 1, 4 | 

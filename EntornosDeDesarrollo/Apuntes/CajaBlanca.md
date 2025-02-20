# Ejercicios de Caja Blanca

## Ejercicio 1

```java
public class Ejercicio01MayorMenor{
    public static void main(String[] args){
        Scanner scanner = new Scanner (System.in);
        int numero1;
        int numero2;
    // Solicitud de datos al usuario
        System.out.println("Este programa pide dos números y calcula cual es mayor.");
        System.out.print("Introduce el primer número:");
        numero1 = scanner.nextInt();
        System.out.print("Introduce el segundo número:");
        numero2 = scanner.nextInt();
    // Realizamos Cálculos y mostramos en pantalla.
        if(numero1 > numero2){
            System.out.println("El primer número, " +numero1 ", es mayor que el número dos," +numero2);
        }
    }
} 
```
| | | Numero 1 | Numero 2 |
| --- | --- | :---: | :---: |
| V | | 5 | 4 |
| F | V | 5 | 6 |
| | F | 5 | 5 |
<!--
V = numero1 > numero2 
F = numero1 < numero2
-->

## Ejercicio 2

```java
// Proximamente habrá código.
```

| | | Cadena |
| --- | --- | :---: |
| V | | 'ab' |
| F | V | 'AZ' |
| | F | |

<!--
if(cadena.comparte to ('A') >= 0)
A = A -> 0
" = A -> -numero
'abc' =  A -> +numero

'AZ' = 'A' > 0
'AZ' = 'Z' > 0
-->
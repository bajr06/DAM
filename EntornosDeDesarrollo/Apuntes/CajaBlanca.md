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
        } else if (numero1 < numero2){
            System.out.println("El segundo número, " +numero2 + ", es mayor que el primer número " +numero1);
        } else {
            System.out.println("Ambos números son iguales, " +numero1);
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
// Inicio del programa y declaración de variables:
public class Ejercicio06LetraMayuscula {
    public static void main(String[] args) {
        Scanner scanner = new Scanner (System.in);
        String cadena;
    // Solicitud de datos al usuario
        System.out.println("Este programa nos pide una cadena y comprueba si es una letra mayúscula.");
        System.out.print("Introduce la cadena que desees: ");
        cadena = scanner.nextLine();
    
    // Realizamos Cálculos y mostramos en pantalla
        if (cadena.length() != 1){
            System.out.println("La cadena no es una letra mayúscula");
    // }else if ((cadena > "A") && (cadena < "Z")) {
        } else if ((cadena.compareTo("A") >= 0) && (cadena.compareTo("Z")<=0)) {
            System.out.println("La cadena es una letra mayúscula.");
        } else {
            System.out.println("La cadena no es una letra mayúscula.");
        }
    }
}
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

## Ejercicio 3

```java
import java.util.Scanner;

// Inicio del programa y declaración de variables:
public class Ejercicio07Potencia {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int base;
        int exponente;
    // Solicitud de datos al usuario
        System.out.println("Calculamos la potencia de un número:");
        System.out.print("Introduce la base de la potencia: ");
        base = scanner.nextInt();
        System.out.print("Introduce el exponente de la potencia: ");
        exponente = scanner.nextInt();
    
    // Realizamos Cálculos y mostramos en pantalla
        if (base >= 1) {
            System.out.println("El resultado es " + (Math.pow(base, exponente)));
        } else if (exponente == 0) {
            System.out.println("El resultado es 1.");
        } else {
            System.out.println("El resultado es " + (Math.pow(base, 1/exponente)));
        }
    }
}
```

| Base | D1 | D2 | | Exponente |
| --- | --- | --- | --- | --- |
| b >= 1 | V | - | 1 | - |
| | F | V | 0 | 0 |
| | | F | 0 | -1 |

## Ejercicio 4

```java
 import java.util.Scanner;
 // Inicio del programa y declaración de variables:
 public class Ejercicio08Solicitud {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int nota;
        int edad;
        String sexo;
    // Solicitud de datos al usuario
        System.out.println("Este programa nos calcula la aceptación de una solicitud" + " en base a los siguientes parámetros:");
        System.out.print("Edad: ");
        edad = scanner.nextInt();
        System.out.print("Nota: ");
        nota = scanner.nextInt(); scanner.nextLine();
        System.out.print("Sexo (M o F): ");
        sexo = scanner.nextLine();
 
    // Realizamos Cálculos y mostramos en pantalla
        if (!sexo.toUpperCase().equals("M") && !sexo.toUpperCase().equals("F")) {
            System.out.println("El valor de sexo introducido es incorrecto.\n" + "por favor, reenvíe el formulario.");
        } else if ((nota >= 5) && (edad >= 18) && (sexo.toUpperCase().equals("M"))) {
            System.out.println("POSIBLE");
        } else if ((nota >= 5) && (edad >= 18) && (sexo.toUpperCase().equals("F"))) {
            System.out.println("ACEPTADA");
        } else {
            System.out.println("NO ACEPTADA");
        }
    }
}
```

| Codicion | D1 | D2 | D3 | Sexo | Nota | Edad |
| --- | --- | --- | --- | --- | --- | --- |
| | V | - | - | S | ¿? | ¿? |
| | F | V | - | M | 5 | 18 |
| | | F | V | F | 5 | 18 |
| | | | F | 
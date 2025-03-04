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


## Ejercicio 5

```java
import java.util.Scanner;

// Inicio del programa y declaración de variables:
public class Ejercicio11Triangulos {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int ladoA;
        int ladoB;
        int ladoC;
        boolean rectangulo = false;
        
    // Solicitud de datos al usuario
        System.out.println("Este programa muestra la clasificación de un triángulo:");
        System.out.print("Introduce el valor del lado A: ");
        ladoA = scanner.nextInt();
        System.out.print("Introduce el valor del lado B: ");
        ladoB = scanner.nextInt();
        System.out.print("Introduce el valor del lado C: ");
        ladoC = scanner.nextInt();
        
    // Realizamos Cálculos y mostramos en pantalla.
    // Para calcular el Teorema de Pitágoras debemos hallar en primer lugar la hipotenusa.
    // Una vez sabemos cual es el lado más largo, comprobamos Pitágoras, si se cumple el valor de rectángulo pasa a true.
        if(ladoA > ladoB && ladoA > ladoC){
            if((Math.pow(ladoA, 2)) == (Math.pow(ladoB, 2)) + (Math.pow(ladoC, 2))){
                rectangulo = true;
            }
        } else if(ladoB > ladoA && ladoB > ladoC) {
            if((Math.pow(ladoB, 2)) == (Math.pow(ladoA, 2)) + (Math.pow(ladoC, 2))) {
                rectangulo = true;
            }
        } else if (ladoC > ladoA && ladoC > ladoB) {
            if ((Math.pow(ladoC,2)) == (Math.pow(ladoA,2)) + (Math.pow(ladoB, 2))) {
                rectangulo = true;
            }
        }
    
    // Una vez sabemos si es rectángulo, continuamos con el resto de comprobaciones.
    // Dos lados iguales
        if((ladoA == ladoB && ladoA != ladoC) || (ladoA == ladoC && ladoA != ladoB) || (ladoB == ladoC && ladoB != ladoA)){
            if (rectangulo) {
                System.out.println("Es un triángulo rectángulo e isósceles.");
            } else {
                System.out.println("Es un triángulo isósceles.");
            }

    // Tres lados iguales
        } else if (ladoA == ladoB && ladoB == ladoC) {
            if (rectangulo) {
                System.out.println("Es un triángulo rectángulo y equilátero.");
            } else {
                System.out.println("Es un triángulo equilátero.");
            }
        } else {
            if (rectangulo) {
                System.out.println("Es un triángulo rectángulo y escaleno.");
            } else {
                System.out.println("Es un triángulo escaleno.");
            }
        }
    }
}
```

- Condicionales 1

    $D1 \rightarrow ladoA \rightarrow LadoB \;\&\&\; ladoA \rightarrow ladoC$

    $D2 \rightarrow Math.pow(ladoA, 2) = Math.pow(ladoB, 2) + (Math.pow(ladoC, 2))$

    $D3 \rightarrow ladoB \rightarrow \;\&\&\; ladoB \rightarrow ladoC$

    $D4 \rightarrow Math.pow(ladoB, 2) = Math.pow(ladoA, 2) + (Math.pow(ladoC, 2))$

    $D5 \rightarrow ladoC \rightarrow ladoA \;\&\&\; ladoC \rightarrow ladoB$

    $D6 \rightarrow Math.pow(ladoC, 2) = Math.pow(ladoA, 2) + (Math.pow(ladoB, 2))$

    | D1 | D2 | D3 | D4 | D5 | D6 | LadoA | LadoB | LadoC |
    | --- | --- | --- | --- | --- | --- | --- | --- | --- |
    | V | - | - | - | - | - | 5 | 4 | 3 |
    | V | F | -| - | - | - | 7 | 3 | 5 |
    | F | - | V | V | - | - | 4 | 5 | 3 |
    | | | | F | - | - | 3 | 7 | 5 |
    | | | F | - | V | V | 4 | 3 | 5 |
    | | | | | | F | 3 | 5 | 7 |
    | | | | | F | - | 3 | 3 | 3 |

<br>

- Condicionales 2
 
    $D1 \rightarrow ((ladoA == ladoB \;\&\&\; ladoA != LadoC) \;||\; (ladoA == ladoC \;\&\&\; ladoA != ladoB) \;||\; (ladoA == ladoC \;\&\&\; ladoA != ladoB))$

    $D2 \rightarrow (rectangulo)$

    $D3 \rightarrow (ladoA == ladoB \;\&\&\; ladoB == ladoC)$

    $D4 \rightarrow (rectangulo)$

    $D5 \rightarrow (rectangulo)$

    | D1 | D2 | D3 | D4 | D5 | LadoA | LadoB | LadoC | Rectangulo |
    | --- | --- | --- | --- | --- | --- | --- | --- | --- |
    | V | V | - | - | - | 4 | 4 | 8 | true |
    | | F | - | - | - | 4 | 4 | 8 | false |
    | F | | V | V | - | 4 | 4 | 4 | true |
    | | | | F | - | 4 | 4 | 4 | false |
    | | - | F | | V | 1 | 2 | 3 | true |
    | | | | | F | 1 | 2 | 3 | false |


## Ejercicio 6

```java
import java.util.Scanner;

// Inicio del programa y declaración de variables:
public class Ejercicio15ViajeEstudios {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int numeroAlumnos;
    
    // Solicitud de datos al usuario
        System.out.println("Este programa calcula el precio a pagar por alumno en " + "el viaje fin de curso, según la cantidad que se apunte.:");
        System.out.print("Número de alumnos: ");
        numeroAlumnos = scanner.nextInt();
    
    // Realizamos Cálculos y mostramos en pantalla
        if (numeroAlumnos >= 100) {
            System.out.println("El pago a la agencia es de " + numeroAlumnos*65 + " " + "euros y cada alumno debe pagar 65 euros");
        } else if (numeroAlumnos <100 && numeroAlumnos >= 50) {
            System.out.println("El pago a la agencia es de " + numeroAlumnos*70 + " " + "euros y cada alumno debe pagar 70 euros");
        } else if (numeroAlumnos < 50 && numeroAlumnos >= 30) {
            System.out.println("El pago a la agencia es de " + numeroAlumnos*95 + " " + "euros y cada alumno debe pagar 95 euros");
        } else {
            System.out.println("El coste del autobús es de 4000 euros y cada alumno " + "debe pagar " + (4000/numeroAlumnos) + " euros.");
        }
    }
}
```

$D1 \rightarrow NºAI < 100 \;\&\&; NºAI >= 50$

$D2 \rightarrow NºAI < 50 \;\&\&; NºAI >= 30$

| D1 | D2 | D3 | NºAI |
| --- | --- | --- | --- |
| V | - | - | 130 |
| F | V | - | 73 |
| | F | V | 45 |
| | | F | 21 |



## Ejercico 7

```java
import java.util.Scanner;

// Inicio del programa y declaración de variables:
public class Ejercicio19NumeroDiasMes {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int mes;
    
    // Solicitud de datos al usuario
        System.out.println("El programa te devuelve el número de días del mes seleccionando:");
        System.out.println(" 1.- Enero.");
        System.out.println(" 2.- Febreo.");
        System.out.println(" 3.- Marzo.");
        System.out.println(" 4.- Abril.");
        System.out.println(" 5.- Mayo.");
        System.out.println(" 6.- Junio.");
        System.out.println(" 7.- Julio.");
        System.out.println(" 8.- Agosto.");
        System.out.println(" 9.- Septiembre.");
        System.out.println("10.- Octubre.");
        System.out.println("11.- Noviembre.");
        System.out.println("12.- Diciembre.");
        mes = scanner.nextInt();
    
    // Realizamos comparaciones y mostramos el resultado
        if (mes == 1 || mes == 3 || mes == 5 || mes == 7 || mes == 8 || mes == 10 || mes == 12){
            System.out.println("El mes seleccionado tiene 31 días");
        } else if (mes ==2){
            System.out.println("Febrero tiene 28 días");
        } else if (mes == 4 || mes == 6 || mes == 9 || mes == 11){
            System.out.println("El mes seleccionado tiene 30 días");
        } else {
            System.out.println("Error, el mes debe estar entre 1-12.");
        }
    }
}
```

$D1 \quad mes == 1 \;||\; 3^{5, 7, 8, 10} \;||\; 12$

$D2 \quad mes == 2$

$D3 mes == 4 \;||\; 6^{9, 11}$

| D1 | D2 | D3 | Mes |
| --- | --- | --- | --- |
| V | - | - | 5 |
| F | V | - | 2 |
| | F | V | 11 |
| | | F | 0 |

# Ejemplos de caminos básicos

## Ejercicio 1

```java
public class Ej01AdivinaNumero {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int numeroAleatorio;
        int intento;
        int contador = 10;

    // Obtención de número aleatorio
        numeroAleatorio = (int) (Math.random()*100+1);
        System.out.println("Intenta adivinar un número aleatorio entre el 1 y 100. " + "Tienes 10 intentos.");
        System.out.println(numeroAleatorio);
    // Realización del ciclo do-while
        do {
            System.out.println("Número contador: " + contador);
            System.out.print("Introduce el número que creas posible: ");
            intento = scanner.nextInt();
            
            if (intento > numeroAleatorio) {
                System.out.println("El número que buscas es menor, te quedan "
                + (contador-1) + " intentos: ");
            } else if (intento < numeroAleatorio){
                System.out.println("El número que buscas es mayor, te quedan "
                + (contador-1) + " intentos: ");
            } else {
                System.out.print("¡CORRECTO! "+ numeroAleatorio + " era el número que estabas " + "buscando, has necesitado " + (10- (contador-1)) +" intentos.");
            }
            
            contador--;
        } while (intento != numeroAleatorio && contador > 0);
        
        if (contador == 0) {
            System.out.println("Has perdido. El numero aleatorio era " + numeroAleatorio);
        }
    }
}
```

### Variables de las que depende el bucle.

- Dependiente del contador.

| | Intento | Número aleatorio | Contador
| --- | :---: | :---: | :---: |
| 1. Pasar de bucle | X | X | X |
| 2. Pasar 1 vez | 3 | 5 | 1 |
| 3. Pasar 2 veces| 3 | 5 | 2 |
| 4. m < n n = maxvueltas | 3 | 5 | 5 |
| 5. n - 1 | 3 | 5 | 9 |
| 6. n + 1 | 3 | 5 | 11 |

- Dependiente del intento.

| | Intento | Número aleatorio | Contador
| --- | :---: | :---: | :---: |
| 1. Pasar de bucle | X | X | X |
| 2. Pasar 1 vez | 5 | 5 | 10 |
| 3. Pasar 2 veces| 3, 5 | 5 | 10 |
| 4. m < n n = maxvueltas | 1, 2, 3, 4 y 5 | 5 | 10 |
| 5. n - 1 | 1, 1, 1, ... 5 | 5 | 10 |
| 6. n + 1 | 3 | 5 | 10 |

<!-- Salidas -->
<!-- 1. No es posible -->
<!-- 2. Puede tener cualquier valor -->
<!-- 3. Por la estructura del do...while siempre se ejecuta al menos una vez-->
<!-- 4. n -->

### Comprobación de condicionales

| D1 | D2 | Intento | Numero aleatorio |
| :---: | :---: | :---: | :--: |
| V | - | 5 | 2 |
| F | V | 3 | 5 |
| F | F | 5 | 5 |

<br>


## Ejercicio 2

```java
public class S05Ejercicio07 {
    public static void main(String[] args) {
        int intentos = 4;
        int numeroIntroducido;
        boolean acertado = false;
        
        do {
            System.out.print("Introduzca la clave de la caja fuerte: ");
            numeroIntroducido = Integer.parseInt(System.console().readLine());
            
            if (numeroIntroducido == 8888) {
                acertado = true;
            } else {
                System.out.println("Clave incorrecta");
            }
            
            intentos--;
        } while((intentos > 0) && (!acertado));
        
        if (acertado) {
            System.out.println("Ha abierto la caja fuerte.");
        } else {
            System.out.println("Lo siento, ha agotado las 4 oportunidades.");
        }
    }
}
```

### Comprobacion de los bucles

- Dependiente de intento

| | Intento | Acertado |
| --- | :---: | :---: |
| 1. Pasar de bucle | - | - |
| 2. Pasar 1 vez | 1 | false |
| 3. Pasar 2 veces| 2 |false |
| 4. m < n n = max vueltas | 2 | false|
| 5. n - 1 | 3 | false |
| 6. n + 1 | 5 | false |

- Dependiente de acertado

| | Intento | Acertado |
| --- | :---: | :---: |
| 1. Pasar de bucle | - | - |
| 2. Pasar 1 vez | 1 | false |
| 3. Pasar 2 veces| 2 | false |
| 4. m < n n = max vueltas | 2 | false |
| 5. n - 1 | 1 | false |
| 6. n + 1 | -1 | false |

### Comprobación de las condicionales

---

<br>


## Ejercicio 3

```java
public class S05Ejercicio13 {
    public static void main(String[] args) {
        
        System.out.println("Por favor, introduzca 10 números enteros: ");
        int negativos = 0;
        int positivos = 0;
        
        for (int i = 0; i < 10; i++) {
            if (Integer.parseInt(System.console().readLine()) < 0) {
                negativos++;
            } else {
                positivos++;
            }
        }
        
        System.out.println("Ha introducido " + positivos + " positivos y " + negativos + " negativos.");
        }
}
```

### Comprobacion bucle

- Bucle for.

| | i |
| --- | :---: |
| 1. Pasar de bucle | 10 |
| 2. Pasar 1 vez | 9 |
| 3. Pasar 2 veces| 8 |
| 4. m < n n = max vueltas | 5 |
| 5. n - 1 | 9 |
| 6. n + 1 | 11 |

<br>


## Ejercicio 4

```java
public class S05Ejercicio16 {
    public static void main(String[] args) {
        System.out.print("Introduzca un número entero y le diré si es primo: ");
        int numeroIntroducido = Integer.parseInt(System.console().readLine());
        boolean esPrimo = true;
        
        for (int i = 2; i < numeroIntroducido; i++) {
            if ((numeroIntroducido % i) == 0) {
                esPrimo = false;
            }
        }
        
        if (esPrimo) {
            System.out.println("El número introducido es primo.");
        } else {
            System.out.println("El número introducido no es primo.");
        }

 // El if anterior se puede abreviar de esta otra manera.
 // Descomenta para probarlo.
 // System.out.println("El número introducido" + (esPrimo ? "" : " no") + " es primo.");
    }
}
```

### Comprobacion del bucle

- Varia numeroIntroducido

| | i | numeroIntroducido |
| --- | :---: | :---: |
| 1. Pasar de bucle | 2 | 1 |
| 2. Pasar 1 vez | 2 | 3 |
| 3. Pasar 2 veces| 2 | 4 |
| 4. m < n n = max vueltas | 2 | - |
| 5. n - 1 | 2 | - |
| 6. n + 1 | 2 | - |

- Varia el valor de i.

| | i | numeroIntroducido |
| --- | :---: | :---: |
| 1. Pasar de bucle | 6 | 5 |
| 2. Pasar 1 vez | 4 | 5 |
| 3. Pasar 2 veces| 3 | 5 |
| 4. m < n n = max vueltas | 2 | 5 |
| 5. n - 1 | 4 | 5 |
| 6. n + 1 | 0 | 5 |

<br>


## Ejercicio 5

```java
public class Ej08CronometroV2 {
    public static void main(String args[]) throws InterruptedException {
        int hora;
        int minuto;
        int segundo;
        String borraAnterior = "\b\b\b\b\b\b\b\b";
    
    // horas
        for (hora=0; hora<=23; hora++) {
            // minutos
            for (minuto=0; minuto<=59; minuto++) {
                // segundos
                for (segundo=0; segundo<=59; segundo++) {
                    // escribe hora:minutos:segundos (actualizandose a medida que va pasando cada segundo)
                    System.out.printf("%02d:%02d:%02d", hora, minuto, segundo);
                    TimeUnit.SECONDS.sleep(1);
                    System.out.print(borraAnterior);
                }
            }
        }
    }
}
```
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
- Variables de las que depende el bucle.

| | Intento | Número aleatorio | Contador
| --- | :---: | :---: | :---: |
| 1. Pasar de bucle | X | X | X |
| 2. Pasar 1 vez | ? | ? | ? |
| 3. Pasar 2 veces| 3 \| 3 | 5 | 2 |
| 4. m<n n=max vueltas | 3...5 | 5 | 5 |
| 5. n-1 | 3...5 | 5 | |
| 6. n+1 | 3...5 | 5 | |

<!--1. While For -->
<!--1. No es posible -->
<!--2- Por la estructura del do...while siempre se ejecuta al menos una vez-->
<!--3. n-->
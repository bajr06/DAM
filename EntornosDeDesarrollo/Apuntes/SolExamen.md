# Ejercicios de Examen de Caja Negra/Blanca

1. **(1,25 puntos)** Realiza la prueba de condición del siguiente código

    ```java
    public class EstructuraCondicionalAnidada1 { 
        public static void main(String[] ar) { 
            Scanner teclado=new Scanner(System.in); 
            int nota1,nota2,nota3; 
            
            System.out.print("Ingrese primer nota:"); 
            nota1=teclado.nextInt(); 
            System.out.print("Ingrese segunda nota:"); 
            nota2=teclado.nextInt(); 
            System.out.print("Ingrese tercer nota:"); 
            nota3=teclado.nextInt(); 
            
            int promedio=(nota1 + nota2 + nota3) / 3; 
                if (nota1>=5)&&(nota2>=7) { 
                    if (nota3>=7)&&(nota2<=9) { 
                        System.out.print("Se puede hacer la media"); 
                    } else 
                        System.out.print("No se puede hacer la media");  
                }else {
                    System.out.print("No son notas válidas");
                }
        }
    }
    ```

2. Among Us

3. Sus

    | | Arreglo.length |
    | --- | --- |
    | 1. Pasar del bucle | 2 |
    | 2. Pasar 1 vez | 3 |
    | 3. Pasar 2 veces | 4 |
    | 4. n = max; m < n | i = 6 (Según ejemplo arreglo.length) |
    | 5. n - 1; n = 14 | i = 13 |
    | 6. n + 1; n = 14 | i = 15 |

    | | Arreglo.length | i |
    | --- | :---: | --- |
    | 1. Pasar del bucle | - | - |
    | 2. Pasar 1 vez | 3 | 2 |
    | 3. Pasar 2 veces | 4 | 2 |
    | 4. n = max; m < n | $j = \frac{12}{2} = 6$ |
    | 5. n - 1; n = 14 | i = 11 |
    | 6. n + 1; n = 14 | i = 13 |

    <!-- 1. No se puede calculcar -->


5. Dios nos salve...

    | Entrada | Regla Heurística | Clave Válida | Clase Inválida |
    | --- | --- | --- | --- |
    | **Código del banco** | Debe ser cadena numérica. <br> Rango de valores. | $Cod.banco = [""]$ <br> $Cod.banco = [2 \| 3 \| 4 \| 5 \| 6 \| 7 \| 8 \| 9] [0-9] \{2\}$ <br> $long(Cod.banco) = 3$ <br> $long(Cod.banco) = 0$ | $Cod.banco \neq [""]$ <br> $Cod.banco \neq [2 \| 3 \| 4 \| 5 \| 6 \| 7 \| 8 \| 9] [0-9] \{2\}$ <br> $long(Cod.banco) \neq 3$ <br> $long(Cod.banco) \neq 0$ |
    | **Código de sucursal** | Debe ser cadena numéroca. <br> Rango de valores. | $Cod.sucursal = [1 \| 2 \| 3 \| 3 \| 4 \| 5 \| 6 \| 7 \| 8 \| 9] [0-9] \{3\}$ <br> $long(Cod.sucursal) = 4$ | $Cod.sucursal \neq [1 \| 2 \| 3 \| 3 \| 4 \| 5 \| 6 \| 7 \| 8 \| 9] [0-9] \{3\}$ <br> $long(Cod.sucursal) \neq 4$ |
    | **Número de Cuenta** |
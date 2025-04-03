# Examen de Entornos de Desarrollo 03/2025

## Pregunta 1

$D1 \rightarrow \left(n > m\right) \|\| \left(n == 15\right)$

$D2 \rightarrow \left(n == 5\right) \&\& \left(m == 10\right)$

$D3 \rightarrow !\left(n == 6\right)$

$D4 \rightarrow n > 5$


| D1 | D2 | D3 | D4 | n | m |
| --- | --- | --- | --- | --- | --- |
| V | - | - | - | 15 | 10 |
| F | V | - | - | 5 | 10 |
| F | F | V | - | 7 | 10 |
| F | F | F | V | 6 | 10 |
| F | F | F | F | - | - |

<br>


## Pregunta 2

i < n - 1

| | i | n |
| --- | --- | --- |
| 1. Pasar bucle | 0 | 1 |
| 2. Pasar una vez | 0 | 2 |
| 3. Pasar dos veces | 0 | 3 |
| 4. n - 1 (la vuelta antes de parar) | 4 | 6 |
| 5. n + 1 (la vuelta después de valor de parada) | 6 | 6 |
| 6. n = max;  m < n | 3 | 6 |


j < n - i - 1

| j | n | i |
| --- | --- | --- |
| 0 | 5 | 4 |
| 0 | 5 | 3 |
| 0 | 5 | 2 |
| 0 | 5 | 3 |
| 2 | 5 | 3 |
| 1 | 5 | 2 |

<br>


## Pregunta 3

$D1 \rightarrow num > 0$

$D2 \rightarrow num % 2 == 0$

| D1 | D2 | num |
| --- | --- | --- |
| V | - | 5 |
| F | - | 0 |
| - | V | 4 |
| - | F | 3 |


i <= num

| | i | num |
| --- | --- | --- |
| 1. Pasar bucle | 1 | 0 |
| 2. Pasar una vez | 1 | 1 |
| 3. Pasar dos veces | 1 | 2 |
| 4. n - 1 (la vuelta antes de parar) | 3 | 6 |
| 5. n + 1 (la vuelta después de valor de parada) | 6 | 6 |
| 6. n = max;  m < n | 8 | 6 |

num % 2 == 0

| i | num |
| --- | --- |
| 1 | 0 |
| 2 | 2 |
| 1 | 2 |
| 3 | 6 |
| 6 | 6 |
| 8 | 6 |

<br>


## Pregunta 4

| <!-- --> | <!-- --> | <!-- --> | <!-- --> |
| --- | --- | --- | --- |
| **NumMatricula** | Es numero con rango de valores | $NumeroMatricula \in Z$; <br> $0001 < n < 7999$ | $NumMatricula \notin Z$; <br> $n < 0001$; <br> $n > 7999$ |
| **Curso** | Conjunto valores | $Curso 1º$; <br> $Curso 2º$; <br> $Curso 3º$; <br> $Curso 4º$ | Curso no existente |
| **Pagado** | Conjunto Valores | $Pagado = Si$; <br> $Pagado = No$ | $Pagado \neq [Si, No]$ |

<br>


## Pregunta 5

| <!-- --> | <!-- --> | <!-- --> | <!-- --> |
| --- | --- | --- | --- |
| **Nombre** | Ser cadena alfabética; <br>Rango de valores | $Nombre = [a - z A - Z]*$ <br> $0 \leqslant long(Nombre) \leqslant 20$ | $Nombre \neq [a - z A - Z]*$; <br> $long(Nombre) > 20$ |
| **Edad** | Debe ser numero | $Edad \in N$; <br> $18 \leqslant Edad \leqslant 99$ | $Edad \notin N$; <br> $Edad < 18$; <br> $Edad > 100$ |
| **Correo** | Cadena alfanumerica; <br> Rango de valores | $Correo = [A - Z a - z 0 - 9]+ /@ [A - Z] + [a - z] \{3\}$; <br> $long(Correo) \geqslant 6$ | $Correo \neq [A - Z a - z 0 - 9]+ /@ [A - Z] + [a - z] \{3\}$; <br> $long(Correo) < 6$ |
| **Telefono** | Debe ser cadena; <br> Rango de Valores | $Telefono = [0 - 9] \{10\}$; <br> $long(Telefono) = 10$ |  $Telefono \neq [0 - 9] \{10\}$; <br> $long(Telefono) \neq 10$ |

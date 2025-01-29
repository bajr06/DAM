# Sistemas de Numeración

Un sistema de numeración es un conjunto de reglas que permiten nombrar y escribir todos los números utilizando un reducido número de palabras y signos.

Cada sistema se basa por un base de referencia. El más usado por el ser humano es el **decimal** (del 1 al 10), pero las máquinas utilizan habitualmente el sistema **binario** (0 y 1). Aunque tambien pueden utilizar otros sistemas, como el **octadecimal** (del 1 al 8) o el **hexadecimal** (del 1 a la F).

Los sistemas de númeración que usamos se basan según su posición que ocupa en la cifra (de ahí que se diga que son _sistemas posicionales_). Las bases de estos sistemas son aquellos números por los que hay que multiplicar a una unidad inferior para obtener la inmediada superior (aparte de coincidir con el número de símbolos utilizandos).

Cabe recalcar que para saber la cantidad de símbolos que posee un sistema, basta con restar la base de este menos 1. Además, para indicar la base de un número se lo coloca como subindice del número con un paréntesis delante de este, un ejemplo: $32_("(10$")

## ¿Cómo calcularlo?

Ejemplo: 

- Queremos pasar el 379 de decimal a binario
    - 379/2 = 189, Resto = **1**;
    - 189/2 = 94, Resto = **1**;
    - 94/2 = 47, Resto = **0**;
    - 47/2 = 23, Resto **1**;
    - 23/2 = 11, Resto = **1**;
    - 11/2 = 5, Resto = **1**;
    - 5/2 = 2, Resto = **1**;
    - 2/2 = **1**, Resto = **0**;
Contamos desde la última división y tomamos los Restos desde abajo hacia arriba. No queda en total **101111011(2**.

- Pasarlo a octadecimal
    - 379/8 = 47, Resto = **3**;
    - 47/8 = **5**, Resto = **7**;
Hacemos lo mismo, lo que nos deja un total de **573(8**.

- Pasarlo a decimal
Estando ya en Decimal, no hay que hacer ninguna conversión.

- A Hexadecimal
    - 379/16 = 23, Resto = **11** = **B**;
    - 23/16 = **1**, Resto **7**;
Nos da como resultado **17B**.

- Pasarlo de un sistema a otro.
Nos servirá con incrementar su valor dependiendo de cada cuanto sea su incremento. Si estamos en Binario y lo queremos pasar a Decimal, tendremos que sumar su valor dependiendo del bit en el que se esté.

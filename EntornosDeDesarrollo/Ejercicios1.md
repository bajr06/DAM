# Ejercicios de Particion Equivalente

| Entrada | Regla Heuristica | Clase Válida | Clave Inválida |
| :---: | :---: | :---: | :---: |
| **Nombre usuario** | Debe de ser cadena alfanumérica. Rango de Valores. | Nombre = [A-Z. a- z, 0-9] <br> $5 \leq long(nombre) \leq 15$ | $Nombre \neq [a-z, A-Z, 0.9]*;$ <br> $long(Nombre) < 5 <br> long(Nombre) > 15.$ |
| **Contraseña** | Debe de ser una cadena alfanumérica. Rango de valores <br> | Contraseña = [a-z]*[\@, \#, \$]; <br> $8 \leq long(Contraseña) \leq 16$ | $Contraseña \neq [a-z] * [@, \#, \$]$ <br> $long(Contraseña) <$ <br> $8 long(Contraseña) > 16$ |
| **Correo Electrónico** | Debe ser cadena. <br> Rango de Valores. | ||
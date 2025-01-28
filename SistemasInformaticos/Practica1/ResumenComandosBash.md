# Bash

- Comandos **ls**.
```bash
ls # Muestra los archivos no ocultos de un directorio.
ls -a # Muestra todos los archivos, inclusive los ocultos.
ls -l # Muestra los datos del archivo (tipo, cantidad de carpetas, fecha de creación, nombre).
ls -la # Funciona igual que el "ls -l", pero muestra las carpetas anteriores a esta (con . o ..).
```


- Comandos **cd**.
```bash
cd directorio # Cambiar de directorio
cd # Cambia al directorio inicial.
cd .. # Retrocede al directorio anterior.
```


- Comandos **rm**.
```bash
rm * # Borra todo lo que se encuentre en el directorio en el que estes situado.
rm *.extension # Borra todo lo que termine en alguna extension (.py, .c, .cpp, .css, .html, etc).
```


- Comandos **cat**.
```bash
cat archivo # Mostrar contenido del archivo.
```


- Comandos **diff**.
```bash
diff archivo1 archivo2 # Comparar el contenido del archivo.
diff -y archivo1 archivo2 # Mustra las diferencias entre dos archivos linea a linea.
```


- Comandos **grep** (funciona con cualquier archivo de texto).
```bash
grep "Nombre" archivo # Buscar en el contenido del archivo una palabra en específico.
grep "^Nombre" archivo # Busca la las lineas del archivo que empiezan por esa palabra.
grep "Nombre$" archivo # Busca la las lineas del archivo que terminan por esa palabra.
grep "^$" archivo # Busca las lineas vacias.
```


- Comandos **find** (funciona con cualquier archivo de texto).
```bash
find . -type d # Busca recursivamente en el directorio en el que estes los subdirectorios
```


- Añadido **—help**.
```bash
comando --help # la ayuda del comando
```


- Comando **man**.
```bash
man comando # Manual de un comando.
```


- Comando **head**.
```bash
head archivo # Te muestra el principio de un archivo.
head -n 2 archivo # Te muestra las dos primeras lineas de un archivo (el número puede variar dependiendo de las líneas que quieras selecionar).
```


- Comando **tail**.
```bash
tail archivo # Te muestra el final de un archivo.
tail -n 19 # Muestra las 19 últimas líneas.
```


- Comando **less**.
```bash
less archivo # Te permite irte moviendo por el archivo si es muy grande.
```


- Enlazar comandos **PIPES**.
```bash
cat archivo | grep "Nombre$" # Ejemplo de concatenaciónon de comandos.
grep "error" file1.txt | wc --word < archivo # Concatenar y crear archivo con el contenido de la salida de los comandos.
```


- Comandos **sed**.
```bash
sed 's/Palabra a remplazar/Remplazo/g' archivo # Reemplaza una palabra por otra de un archivo.
sed '/^$/d' archivo # Borra las líneas vacias
sed '/^$/d' | uniq archivo # Borra dos lineas seguidas que esten vacias
sed '/^$/d' archivo | sort | uniq # Ordenas y borras las lineas vacias que esten seguidas
sed '5,95d' archivo # Borra las lineas que hay entre las lineas 5 y 95 del archivo.
```


- Comandos **wc**.
```bash
wc -w archivo # Cuenta la cantidad de palabras que hay en un archivo.
wc -l archivo # Cuenta la cantidad de líneas.
```


- Comando **sort**.
```bash
sort archivo # Ordena alfabeticamente las líneas del archivo.
sort -b archivo # Cuentas las líneas de un archivo, ignorando los espacios en blanco
```


- Comando **uniq**.
```bash
uniq archivo # Borra las líneas duplicadas del archivo.
uniq -D archivo # Muestra las líneas duplicadas.
```


- Comando **pwd**.
```bash
pwd # Ruta entera de donde te encuetras.
```


- Comando **>**.
```bash
archivo1 > archivo2 # Pasa la informacion del archivo1 al archivo2 (sobreescribe).
archivo3 >> archivo2 # Añade la informacion del archivo3 al archivo2 (a continuación))
```

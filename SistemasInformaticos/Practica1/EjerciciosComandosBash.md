# Ejercicios de la Práctica 1

1. Encuentra todas las líneas que terminen con "error" en el archivo `file1.txt` y guarda el resultado en `output1.txt`.
```bash
grep "error" file1.txt > output1.txt
```
![output1.png](img/image.png)


2. Reemplaza todas las ocurrencias de "DEBUG" por "INFO" en el archivo `file1.txt` y guarda el resultado en `output2.txt`.
```bash
sed 's/DEBUG/INFO/g' file1.txt > output2.txt
```
![output2.png](img/image-1.png)


3. Muestra las primeras 5 líneas de `file1.txt` que contengan "ERROR" y guarda el resultado en `output3.txt.`
```bash
head -n 5 file.txt | grep "error" > output3.txt
```
![output3.png](img/image-2.png)


4. Cuenta el número de archivos `.txt` en el directorio actual y guarda el resultado en `output4.txt`.
```bash
ls *.txt | wc -l > output4.txt
```
![output4.png](img/image-3.png)


5. Ordena las líneas del archivo `file1.txt` alfabéticamente, elimina duplicados, y guarda el resultado en `output5.txt`.
```bash
sort file1.txt | uniq > output5.txt
```
![output5.png](img/image-20.png) 


6. Divide el archivo `file6_large.txt` en dos archivos: uno con las primeras 100 líneas (`out6.1.txt`) y otro con el resto (`out.6.txt`).
```bash
head -n 100 file6_large.txt > out6.1.txt | sed '1,100d' file6_large.txt > out.6.txt
```
![output6.1.png](img/image-4.png)
![output6.png](img/image-5.png)


7. Elimina todas las líneas en blanco del archivo `file4.txt` y guarda el resultado en `output7.txt`.
```bash
sed '/^$/d' file4.txt | uniq > output7.txt
```
![output7.png](img/image-6.png)


8. Reemplaza todas las comas por tabulaciones en el archivo `file2.csv` y guarda el resultado en `output8.csv`.
```bash
 sed 's/','/\t/g' file2.csv > output8.csv 
```
![output8.png](img/image-7.png) 


9. Inserta el prefijo "INICIO:" antes de cada línea que comience con una vocal en el archivo `file5.txt` y guarda el resultado en `output9.txt`.
```bash
sed '/^[aeiouAEIOU]/s/^/INICIO:/' file5.txt > output9.txt
```
![output9.png](img/image-8.png)


10. Cuenta cuántas líneas en el archivo `file1.txt` contienen la palabra "ERROR" y guarda el resultado en `output10.txt`.
```bash
 grep "error" file1.txt | wc -l > output10.txt
```
![output10.png](img/image-9.png)


11. Crea un script que muestre el número total de archivos en el directorio actual y escribe el resultado en `output11.txt`. 
```bash
 ls *.* -A | wc -l
```

![output11.png](img/image-10.png)


12. Encuentra líneas duplicadas en el archivo `file7_duplicates.txt`, muestra cuántas veces se repiten, y guarda el resultado en `output12.txt`.
```bash
uniq -D file7_duplicates.txt > output12.txt
```
![output12.png](img/image-11.png)


13. Extrae las primeras 100 líneas del archivo `file6_large.txt` y guarda el resultado en `output13.txt`.
```bash
head -n 100 file6_large.txt > output13.txt
```
![output13.png](img/image-12.png)


14. Busca todas las líneas que contengan números en el archivo `file1.txt` y guarda el resultado en `output14.txt`.
```bash
grep '[0-9]' file1.txt > output14.txt
```
![output14.png](img/image-13.png)


15. Convierte el archivo `file2.csv` en un archivo delimitado por punto y coma y guarda el resultado en `output15.csv`.
```bash
 sed 's/$/;/g' file2.csv > output15.csv
```
![output15.png](img/image-14.png)


16. Inserta un prefijo "MODIFICADO:" antes de las líneas que contengan la palabra "ERROR" en el archivo `file1.txt` y guarda el resultado en `output16.txt`.
```bash
sed '/error/s/^/MODIFICADO: /' file1.txt > output16.txt
```
![output16.png](img/image-15.png)


17. Extrae las líneas del archivo `file3.txt` que contengan números pares y guarda el resultado en `output17.txt`.
```bash
 grep [02468] file3.txt > output17.txt
 ```
![output17.png](img/image-16.png)


18. Busca recursivamente en todos los subdirectorios del directorio actual archivos que contengan la palabra "ERROR" y guarda las coincidencias en `output18.txt`.
```bash
grep -r "error" ./sub* > output18.txt
```
![output18.png](img/image-17.png)


19. Extrae las últimas 50 líneas del archivo `file6_large.txt` y guarda el resultado en `output19.txt`.
```bash
tail -n 50 file6_large.txt > output19.txt
```
![output19.png](img/image-18.png)


20. Lista todos los archivos, incluidos los ocultos, de forma recursiva desde el directorio actual y guarda el resultado en `output20.txt`.
```bash
find | wc -l > output20.txt
```
![output20.png](img/image-19.png)


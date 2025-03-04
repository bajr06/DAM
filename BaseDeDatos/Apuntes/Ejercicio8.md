# Ejercicio 04.8 de Algebra Relacional

## Ejercicio 1

1. Mostrar el nombre y nº de la seguridad social de los pacientes que aún no han hecho ni una sola consulta

    $T1 \leftarrow \Pi_{ID\_Paciente} \left(PACIENTE\right) - \Pi_{ID\_Paciente} \left(CONSULTA\right)$

    $\Pi_{Nombew, NSS} \left(T1 \bowtie PACIENTE\right)_{T1.ID\_Paciente = PACIENTE.ID\_Paciente}$


## Ejercicio 2

2. Mostrar el nombre de los profesionales sanitarios que han tenido consulta con el o la paciente número 205

    $T1 \leftarrow \Pi_{ID\_Sanitario} \left(\sigma_{ID\_Paciente = '205'} (CONSULTA)\right)$

    $\Pi_{Nombre} \left(T1 \bowtie SANITARIOS\right)_{T1.ID\_Sanitario = SANITARIOS-ID\_Sanitario}$


## Ejercicio 3

3. Pacientes (nombre e identificador) que no han tenido consulta con ningún enfermero o enfermera.

    $T1 \leftarrow \Pi_{ID\_Sanitario} \left(\sigma_{Profesion = 'enfermero/a'} (SANITARIOS)\right)$

    $T2 \leftarrow \Pi_{ID\_Sanitario} \left(CONSULTA\right)$

    $T3 \leftarrow \Pi_{ID\_Sanitario} \left(T1 - T2\right)$
    <!-- No son enfermeros, pero si han tenido consulta. -->
    
    $T4 \leftarrow \Pi_{ID\_Paciente} \left(T3 \bowtie CONSULTAS\right)_{T3.ID\_Sanitario = CONSULTAS.ID\_Sanitario}$

    $\Pi_{ID\_Paciente, Nombre} \left(T4 \bowtie PACIENTES\right)_{T4.ID\_Paciente = PACIENTES.ID\_Paciente}$


## Ejercicio 4

4. Pacientes (nombre e identificador) que han tenido consulta con el personal sanitario número 189 y número 230.

    $T1 \leftarrow \Pi_{ID\_Sanitario} \left(\sigma_{ID\_Sanitario = '189' or ID\_Sanitario = '230'} (SANITARIOS)\right)$

    $T2 \leftarrow \Pi_{Nombre, ID\_Paciente} \left(T1 \bowtie PACIENTES\right)_{T1.ID\_Paciente = PACIENTES.ID\_Paciente}$


## Ejercicio 5
5. Pacientes (nombre e identificador) a los que nunca se les ha recetado nada.

    $T1 \leftarrow \Pi_{ID\_Paciente} \left(PACIENTES\right) - \Pi_{ID\_Paciente} \left(CONSULTA\right)$

    $T2 \leftarrow \Pi_{ID\_Consulta} \left(CONSULTA\right)$

    $T3 \leftarrow \Pi_{ID\_Consulta} \left(RECETA\right)$

    $T4 \leftarrow T2 - T3$ <!-- Consultas SIN Receta -->

    $T5 \leftarrow \Pi_{ID\_Paciente} \left(T4 \bowtie CONSULTAS\right)_{T4.ID\_Consultas = CONSULTAS.ID\_Consulta}$

    $T6 \leftarrow T1 \cup T5$

    $\Pi_{ID\_Paciente, Nombre} \left(T6 \bowtie PACIENTE\right)_{T6.ID\_Paciente = PACIENTE.ID\_Paciente}$


## Ejercicio 6
6. ...
    
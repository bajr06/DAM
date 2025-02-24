# Ejercico 04.7 de Algebra Relacional

## Ejercicio 1

$T1 \leftarrow \Pi_{ID\_Equipo} \left(\sigma_{Nombre = 'Real Madrid'} (EQUIPO)\right)$
<br>

$\Pi_{Nombre} \left(T1 \bowtie JUGADORES\right)_{T1.ID\_Equipo = JUGADORES.ID\_Equipo}$


## Ejercicio 2

$T1 \leftarrow \Pi_{ID.Equipo\_Fuera, ID.Equipo\_Casa, Goles\_Casa, Goles\_Fuera} \left(\sigma_{Goles\_Casa = Goles\_Fuera}(PARTIDO)\right)$
<br>

$T2 \leftarrow \Pi_{Nombre \varphi Equipo\_Casa, Goles\_Casa, ID.EQUIPO\_Fuera, Goles\_Fuera}\left(T1 \bowtie EQUIPOS\right)_{T1.ID.EQUIPO\_Casa = EQUIPOS.ID.EQUIPO}$
<br>

$\Pi_{Equipo\_Casa, Goles\_Casa, Nombre \varphi Equipo\_Fuera, Goles\_Fuera} \left(T2 \bowtie EQUIPOS\right)_{T2.ID.EQUIPO\_Fuera = EQUIPOS.ID.EQUIPO}$
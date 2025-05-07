// Donde el indice es el número de cuadrados que tengo
let barcos = [4, 3, 2, 1];
// Tablero del usuario -> Matriz que guarda los barcos
let tableroUsuario:

// Posicion es la cadena que nos devuelve el id. Ejemplo id -> u01.
/*
function esBarco2(posicion1, posicion2, m) {
	if(m[i][j] == m[][])
}
*/

function guardarBarco(event) {
	alert("Guardo el Barco");
	let i = event.target.name[1];
	let j = event.target.name[2];

	if(i = event.target.id[0] === 'u') {
		tableroUsuario[i][j] = 'x';
	}
	console.log("Posición guardada: " + event.target.name);
}


function principal() {
	// Devuelve un array de elementos que tienen "celda".
	let celdasTabla = document.querySelectorAll(".celda");
	celdasTabla.forEach(celda => celda.addEventListener("keydown", guardarBarco));
}
window.addEventListener("DOMContentLoaded", principal, false);

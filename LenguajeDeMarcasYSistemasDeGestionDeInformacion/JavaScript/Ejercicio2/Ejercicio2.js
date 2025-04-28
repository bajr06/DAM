function cuentaAtras() {
	let cuenta = 0;
	clearInterval(cuenta);

	// event.preventDefault();

	let valorTiempo = document.getElementById("tiempo").value;
	let contador = document.getElementById("contador");

	cuenta = setInterval(() => {
		if(valorTiempo > 0) {
			contador.textContent = valorTiempo--;
		} else {
			clearInterval(cuenta);
			contador.textContent = "El tiempo ha expirado.";
		}
	}, 1000);
}

function rellenarTabla() {
	//let numero = 9;
	let numero = document.querySelectorAll("#tablaPrimera td").length;

	for(let i = 1; i <= numero; i++) {
		document.getElementById(`${i}`).textContent = i;
	}
}

function rellenarTabla2() {
	let celdas = document.querySelectorAll("#tablaSegunda td");
	
	celdas.forEach((td, i) => td.textContent = i + 1);
}

function random(number) {
	return Math.floor(Math.random() * (number + 1));
}

function cambiarColor() {
	let color = `rgb(${random(255)}, ${random(255)}, ${random(255)})`;

	document.getElementById("cambiarColor").style.background = color;
}

function ahorcado(event) {
	let palabras = ["Perro", "Gato", "Tortuga", "Pez", "Caiman"];
	let palabraSeleccionada = palabras[random(palabras.length)];

	console.log(event.target.value.textContent);
}


function carga() {
	/* Ejercicio 1 */
	let botonNumero = document.getElementById("numeroAleatorio");
	
	botonNumero.addEventListener("click", () => {
		let numero = Math.floor(Math.random() * 100);
		
		document.getElementById("mostrarNumero").textContent = numero;
	}
	);

	/* Ejercicio 2 */
	let botonAtras = document.getElementById("cuentaAtras");
	botonAtras.addEventListener("click", cuentaAtras);

	/* Ejericicio 3 */
	let tabla = document.getElementById("tabla");
	tabla.addEventListener("click", rellenarTabla);

	let tabla2 = document.getElementById("tabla2");
	tabla2.addEventListener("click", rellenarTabla2);

	/* Ejercicio 4 */
	let caja = document.getElementById("cambiarColor");
	caja.addEventListener("mousemove", cambiarColor);

	/* Ejercicio 5 */
	let letras = document.querySelectorAll(".ejercicio5");
	letras.forEach(botonesLetras => botonesLetras.addEventListener("click", ahorcado));
}
window.addEventListener("DOMContentLoaded", carga, false);

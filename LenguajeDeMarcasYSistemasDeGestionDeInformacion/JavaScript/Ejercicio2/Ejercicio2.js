function cuentaAtras() {
	let cuenta = 0;
	clearInterval(cuenta);

	let valorTiempo = document.getElementById("tiempo").value;
	let contador = document.getElementById("contador");

	cuenta = setInterval(x, 1000);
}


function carga() {
	/* Ejercicio 1 */
	let botonNumero = document.getElementById("numeroAleatorio");
	
	botonNumero.addEventListener("click", () => {
		let numero = Math.floor(Math.random() * 100);
		
		document.getElementById("mostrarNumero").textContent = Numero;
	}
	);

	/* Ejercicio 2 */
	let botonAtras = document.getElementById("cuentaAtras");
	botonAtras.addEventListener("submit", cuentaAtras);
}
window.addEventListener("DOMContentLoaded", carga, false);

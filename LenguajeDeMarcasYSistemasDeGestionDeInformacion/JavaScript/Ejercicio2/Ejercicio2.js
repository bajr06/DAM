function cuentaAtras() {
	let cuenta = 0;
	clearInterval(cuenta);

	event.preventDefault();

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
}
window.addEventListener("DOMContentLoaded", carga, false);

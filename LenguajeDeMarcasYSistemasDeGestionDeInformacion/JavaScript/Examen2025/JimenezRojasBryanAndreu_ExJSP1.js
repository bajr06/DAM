function repostaje(cantidad) {
}

function carga() {
	// Ejercicio 1
	let matricula = document.getElementById("matricula");
	let cantidad = document.getElementById("cantidad");
	let boton1 = document.getElementById("boton1");
	let boton2 = document.getElementById("boton2");

	boton1.addEventListener("click", () => {
		const reGex = `/^[0-9](4)[A-Z](3)/`;

		if(reGex.test(matricula)) {
			document.getElementById("respuesta1").textContent = "Matrícula Válida";
		} else {
			document.getElementById("respuesta1").textContent = "Matrícula Inválida";
		}
	});

	let respuesta2 = boton2.addEventListener();

}
window.addEventListener("DOMContentLoaded", carga);

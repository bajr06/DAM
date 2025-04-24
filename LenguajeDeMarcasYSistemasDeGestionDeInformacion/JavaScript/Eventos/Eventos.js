function random(number) {
	return Math.floor(Math.random() * (number + 1));
}

function cambiarFondo() {
	document.body.style.background = `rgb(${random(255)}, ${random(255)}, ${random(255)})`;
}

function cambiarTexto() {
	document.body.innerHTML = "<h1> Hola </h1>";
}

function mostrarDatos(event) {
	event.preventDefault();
	let nombre = document.getElementById("nombre").value;

	document.getElementById("resultado").innerHTML = `valor: ${nombre}`;
}


function carga() {
	let boton = document.querySelector("button");
	let boton2 = document.getElementById("boton2");
	let cuadroTexto = document.getElementById("cuadroTexto");
	let boton3 = document.getElementById("boton3");
	let zona = document.getElementById("zona");
	let formulario = document.getElementById("formulario");

	// Eventos
	boton.addEventListener("click", cambiarFondo, false);
	boton2.addEventListener("click", cambiarTexto, false);
	cuadroTexto.addEventListener("keydown", (event) => (document.getElementById("textoSalida").textContent += `${event.key}`));
	boton3.addEventListener("click",(event) => console.log(event));
	zona.addEventListener("mousemove", (event) => (document.getElementById("coordenadas").textContent = `Coordenadas : X = ${event.clientX} e Y = ${event.clientY}`));
	formulario.addEventListener("submit", mostrarDatos);
}
window.addEventListener("DOMContentLoaded", carga, false);

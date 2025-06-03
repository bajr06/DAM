	let oc = aleatorio(2) + 10;

function comprobarMatricula(matricula)  {
	const regex = /^[A-Z]{3}[0-9]{4}$/; 

	if(regex.test(matricula)) {
		return true;
	} else {
		return false;
	}
}

function calcularPrecio(cantidad) {
	const precioPorLitro = 1.26;

	return cantidad * precioPorLitro;
}

function ejercicio1(event) {
	event.preventDefault(); // Evita que el formulario se envíe y recargue la página
	let matricula = document.getElementById("matricula").value;
	let resultado1 = comprobarMatricula(matricula);
	let respuesta1 = document.getElementById("respuesta1");

	if(resultado1) {
		let cantidad = parseInt(document.getElementById("cantidad").value);
		let precio = calcularPrecio(cantidad);

		respuesta1.textContent = `La matrícula es correcta. El precio total es: ${precio}€`;
	} else {
		respuesta1.textContent = "La matrícula es incorrecta. Debe tener el formato ABC1234.";
	}
}

function aleatorio(numero) {
	return Math.floor(Math.random() * (numero + 1));
}

function agregarLetras(posicion, numero, letra) {
	for(let i = 0; i < numero; i++) {
		document.getElementById(`${posicion}`).textContent += letra;
	}
}

function ejercicio2() {
	let numeroMax = document.querySelectorAll("#tabla1 td").length;
	let letras = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I'];

	for(let i = 0; i < numeroMax; i++) {
		document.getElementById(`${i + 1}`).textContent = " ";
		agregarLetras(i + 1, aleatorio(10), letras[i]);
	}
}

function ejercicio3(event) {
	let oe = event.target.id;

	if(oe == oc) {
		document.getElementById(`${oe}`).textContent = 'O';
		document.getElementById("resultado3").textContent = "Acertado";
	} else {
		// document.querySelector('.' +`${oe}`).disabled = true;
	}
}

function carga() {
	// Ejercicio 1
	let boton1 = document.getElementById("boton1");

	boton1.addEventListener("click", ejercicio1);

	// Ejercicio 2
	let boton2 = document.getElementById("boton2");

	boton2.addEventListener("click", ejercicio2);

	// Ejercicio 3
	let botones = document.querySelectorAll(".seleccionar");

	botones.forEach(opciones => opciones.addEventListener("click", ejercicio3));
}
window.addEventListener("DOMContentLoaded", carga);

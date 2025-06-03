let oc = aleatorio(2) + 10;
const azul = `rgb(0, 0, 255)`;
const amarillo = `rgb(255, 255, 0)`;
const verde = `rgb(0, 255, 0)`;
const naranja = `rgb(255, 102, 0)`;
const rosa = `rgb(255, 153, 204)`;
const morado = `rgb(153, 0, 204)`;
const marron = `rgb(102, 51, 51)`;
const cyan = `rgb(0, 255, 255)`;
const turquesa = `rgb(255, 0, 255)`;
const gris = `rgb(128, 128, 128)`;

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

function cambiarColor(valor) {
	let cambiarColor = document.getElementById("cambiarColor");

	switch(valor) {
		case 0:
			cambiarColor.style.background = azul;
			break;
		case 1:
			cambiarColor.style.background = amarillo;
			break;
		case 2:
			cambiarColor.style.background = verde;
			break;
		case 3:
			cambiarColor.style.background = naranja;
			break;
		case 4:
			cambiarColor.style.background = rosa;
			break;
		case 5:
			cambiarColor.style.background = morado;
			break;
		case 6:
			cambiarColor.style.background = marron;
			break;
		case 7:
			cambiarColor.style.background = cyan;
			break;
		case 8:
			cambiarColor.style.background = turquesa;
			break;
		case 9:
			cambiarColor.style.background = gris;
	}
}

function ejercicio4() {
	let cuenta = 0;
	clearInterval(cuenta);

	let valor = 0;
	let valorTotal = 0;
	let contador = document.getElementById("contador");

	cuenta = setInterval(() => {
		contador.textContent = valorTotal++;
		console.log(valor);
		if(valor >= 0 && valor <= 8) {
			cambiarColor(valor);
			valor++;
		} else if(valor == 9){
			cambiarColor(valor);
			valor -= 9;
		}
	}, 1000);

}


function carga() {
	// Ejercicio 1
	let boton1 = document.getElementById("boton1");

	boton1.addEventListener("click", ejercicio1);

	// Ejercicio 2
	let boton2 = document.getElementById("boton2");

	boton2.addEventListener("click", ejercicio2);

	// Ejercicio 3
	let botones3 = document.querySelectorAll(".seleccionar");

	botones3.forEach(opciones => opciones.addEventListener("click", ejercicio3));

	// Ejercicio 4
	let boton4 = document.getElementById("boton4");

	boton4.addEventListener("click", ejercicio4);
}
window.addEventListener("DOMContentLoaded", carga);

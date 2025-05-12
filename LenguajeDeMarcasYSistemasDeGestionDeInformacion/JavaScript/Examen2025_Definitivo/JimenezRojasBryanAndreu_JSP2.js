function verificacion(respuesta) {
	const reGexp = /^a-zA-Z/;

	if(/*reGexp.test(respuesta) &&*/ respuesta.length <= 10) {
		return true;
	} else {
		return false;
	}
}

function ejercicio1() {
	let respuesta = prompt("Escriba una palabra menor a 10 caracteres:");
	let resultado = verificacion(respuesta);
	let respuestaEjercicio1 = document.getElementById("resultadoEjercicio1");

	if(resultado){
		respuestaEjercicio1.textContent = "Palabra Correcta";
	} else {
		respuestaEjercicio1.textContent = "Palabra Incorrecta";
	}
}

function aleatorio(numero) {
	return Math.floor(Math.random() * (numero + 1));
}

function color() {
	let color = `rgb(${aleatorio(255)}, ${aleatorio(255)}, ${aleatorio(255)})`;

	document.querySelector("table").style.background = color;
}

function ejercicio2() {
	let casilla = document.querySelector("table");

	casilla.addEventListener("mouseover", color);
}

function ejercicio3() {
	let palabra1 = document.getElementById("palabra1");
	let palabra2 = document.getElementById("palabra2");
	let palabra3 = document.getElementById("palabra3");
	let vocales = /^aeiou+$/

	palabra1.addEventListener("keydown", () => {
		if(vocales.test(palabra1)){
			document.getElementById("res1").textContent = "Contiene vocales";
		} else {
			document.getElementById("res1").textContent = "No contiene vocales";
		}
	});
}

function ejercicio4() {
	let numero1 = 0;
	let numero2 = 1
	let intermedio = null;
	let limite = prompt("¿Hasta que número quieres que sea la serie de Fibonacci?");

	Fibonacci.textContent = numero1;
	Fibonacci.textContent += ", " + numero2 + ", ";

	for(let i = 0; i < limite; i++) {
		intermedio = numero1 + numero2;
		numero1 = numero2;
		numero2 = intermedio;

		if(i < 100) {
			Fibonacci.textContent += intermedio + ", ";
		} else {
			Fibonacci.textContent += intermedio + ".";
		}
	}
}


function carga() {
	// Ejercicio 1
	ejercicio1();

	// Ejercicio 2
	ejercicio2();

	// Ejercicio 3
	ejercicio3();

	// Ejercicio 4
	ejercicio4();

}
window.addEventListener("DOMContentLoaded", carga);

let abecedario = "abcdefghijklmnopqrstuvwxyz";
let letraAdivinar;
let coordenadaI;
let coordenaadaJ;
let intervalo;

function traduccion(letra) {
	let numero = 0;
	let esta = false;

	while(!esta) {
		if(abecedario[numero] === letra) {
			esta = true;
		} else {
			// En el caso de que no este entre las letras del abecedario.
			if(abecedario.length === 26) {
				numero =- 1;
				esta = true;
			} else {
				numero++;
			}
		}
	}

	return numero + 1;
}

function codificarTexto(event) {
	let salida = document.getElementById("textoCodificado");
	let letra = event.key;

	salida.textContent += traduccion(letra) + "-";
}

function random(numero) {
	return Math.floor(Math.random() * (numero + 1));
}

function generarDatos() {
	letra = abecedario[random(26)];
	coordenadaI = random(1);
	coordenadaJ = random(1);
	document.getElementById("letra").textContent = letra;
	document.getElementById("i").textContent = coordenadaI;
	document.getElementById("j").textContent = coordenadaJ;
}

// Corregir
function colocarCasillas(event) {
	let i = event.target.name[0];
	let j = event.target.name[1];
	let letra = event.target.value;

	if(i === coordenadaI && j === coordenadaJ && letraAdivinar === letra) {
		document.getElementById(event.target.name).textContent = letra;
	} else {
		alert("¡Has fallado!");
	}
}


function principal() {
	// Ejercicio 1
	let texto = document.getElementById("textoACodificar");
	texto.addEventListener("keydown", codificarTexto);

	// Ejercicio 2
	intervalo = setInterval(generarDatos, 2000);

	let letras = document.querySelectorAll(".letra");
	letras.forEach(i => i.addEventListener("input", colocarCasilla))
}

window.addEventListener("DOMContentLoaded", principal);

let matrizColores=[[0,0],[0,0]];
function verificacion(respuesta) {
	const reGexp = /^[a-zA-Z]+$/;
	
	if(reGexp.test(respuesta) && respuesta.length <= 10) {
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

function color(event) {
	let id = event.target.id;
	let color1=aleatorio(255);
	let color2=aleatorio(255);
	let color3=aleatorio(255);
	console.log(id);
	matrizColores[id[0]][id[1]]=color1+","+color2+","+color3;
	let color = `rgb(${aleatorio(255)}, ${aleatorio(255)}, ${aleatorio(255)})`;

	document.getElementById(id).style.background = color;
}

function ejercicio2() {
	let casillas= document.querySelectorAll(".casilla");

	casillas.forEach(casilla=>casilla.addEventListener("mouseover", color));
}

function ejercicio3() {
	let palabra1=document.getElementById("palabra1").value;
	console.log(palabra1);
	// let palabra2 = document.getElementById("palabra2");
	// let palabra3 = document.getElementById("palabra3");
	let reGexp = /^[aeiou]+$/
	let a = document.getElementById("a");
	let e = document.getElementById("e");
	let i = document.getElementById("i");
	let o = document.getElementById("o");
	let u = document.getElementById("u");

	let contador = [0, 0, 0, 0, 0];

	for(let i = 0; i < palabra1.length; i++){
		if(reGexp.test(palabra1[i])) {
			if(palabra1[i] === 'a') {
				contador[0] += 1;
			} else if(palabra1[i] === 'e') {
				contador[1] += 1;
			} else if(palabra1[i] === 'i') {
				contador[2] += 1;
			} else if(palabra1[i] === 'o') {
				contador[3] += 1;
			} else if(palabra1[i] === 'u') {
				contador[4] += 1;
			}
		}
	}
	
	a.textContent = contador[0];
	e.textContent = contador[1];
	i.textContent = contador[2];
	o.textContent = contador[3];
	u.textContent = contador[4];

	/*
	palabra1.addEventListener("keydown", () => {
		if(vocales.test(palabra1)){
			document.getElementById("res1").textContent = "Contiene vocales";
		} else {
			document.getElementById("res1").textContent = "No contiene vocales";
		}
	});
*/
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
	//ejercicio1();

	// Ejercicio 2
	ejercicio2();

	// Ejercicio 3
	let elemento1 = document.getElementById("palabra1");
	let elemento2 = document.getElementById("palabra2");
	let elemento3 = document.getElementById("palabra3");

	elemento1.addEventListener("keydown",ejercicio3);
	elemento2.addEventListener("keydown",ejercicio3);
	elemento3.addEventListener("keydown",ejercicio3);

	// Ejercicio 4
	//ejercicio4();

}
window.addEventListener("DOMContentLoaded", carga);

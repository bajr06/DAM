function Ejercicio1(){
	alert("Hello World!");
}

function Ejercicio2(){
	document.writeln("Hola Mundo <br>");
}

function Ejercicio3(){
	let a = 3;
	let b = 5;
	let suma = a + b;

	console.log("La suma de los números es " + suma + "<br>");
}

function Ejercicio4(){
	let nombre = prompt("¿Cuál es tu nombre?", "Bryan");
	document.writeln("Hola, mi nombre es " + nombre + "<br>");
}

function Ejercicio5(){
	let numero1 = prompt("Escribe un número:");
	let numero2 = prompt("Escribe otro número:");

	let resultado = parseInt(numero1) + parseInt(numero2);

	document.writeln("El resultado de la suma es " + resultado + "<br>");
}

function Ejercicio6(){
	let numero01 = parseInt(prompt("Escriba nuevamente un número:"));
	let numero02 = parseInt(prompt("Escriba nuevamente otro número:"));

	if(numero01 > numero02){
		document.writeln("El numero " + numero01 + " es mayor que el número " + numero02 + "<br>");
	} else if(numero01 == numero02){
		document.writeln("El numero " + numero02+ " es igual al número " + numero01 + "<br>");
	} else {
		document.writeln("El numero " + numero02 + " es mayor que el número " + numero01 + "<br>");
	}
}

/*
function Ejercicio7(){
	let nuevo1 = parseInt(prompt("Escriba otra vez, nuevamente, un número:"));
	let nuevo2 = parseInt(prompt("Escriba otra vez, nuevamemnte, otro número:"));
	let nuevo3 = parseInt(prompt("Escriba otro de otro de otro número:"));

	if(nuevo1 > nuevo2){
		if(nuevo1 > nuevo3){
			if(nuevo2 > nuevo3){
				console.log("El número " + nuevo1 + "es el número mayor <br>");
			}
		}
	}
	// Ver apuntes

}
*/

// Ejercicio 8: num1 % 2 === 0;

function Ejercicio9(){
	let frase = prompt("Escriba una frase:");
	let contador = 0;

	for(let i = 0; i < frase.lenght; i++){
		//frase.charAt(i);
		if(frase[i].toLowerCase() === 'a'){
			contador++;
		}
	}

	document.writeln("El número de a es: " + contador);

	// let cuenta = frase.split('a').lenght - 1; // Investigar sobre la funcion .split
	
	/*
	let letra='a';

	for(let j of frase){
		if(frase.includes(letra)){
			contador++;
		}
	}
	*/
	
}


// Función que llama a todas las funcoones y tiene el funcionamiento del main.
function carga(){
	Ejercicio1();
	Ejercicio2();
	Ejercicio3();
	Ejercicio4();
	Ejercicio5();
	Ejercicio6();
	// Ejercicio7();
	// Ejercicio8();
	Ejercicio9();
}
window.addEventListener("DOMContentLoaded", carga, false); // Se puede omitir el false

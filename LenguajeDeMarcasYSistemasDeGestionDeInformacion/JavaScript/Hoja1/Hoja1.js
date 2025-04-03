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


function Ejercicio7(){
	let nuevo1 = parseInt(prompt("Escriba otra vez, nuevamente, un número:"));
	let nuevo2 = parseInt(prompt("Escriba otra vez, nuevamemnte, otro número:"));
	let nuevo3 = parseInt(prompt("Escriba otro de otro de otro número:"));

	if(nuevo1 > nuevo2){
		if(nuevo1 > nuevo3){
			if(nuevo2 > nuevo3){
				console.log("El número mayor es:" + nuevo1 + ", " + nuevo2 + ", " + nuevo3);
			} else if(nuevo3 > nuevo2){
				console.log("El número mayor es:" + nuevo1 + ", " + nuevo2 + ", " + nuevo3);
			} else {
				console.log("El número mayor es:" + nuevo1 + ", " + nuevo2 + " = " + nuevo3);
			}
		} else if(nuevo1 < nuevo3){
			console.log("El número mayor es:" + nuevo3 + ", " + nuevo1 + ", " + nuevo2);
		} else {
			console.log("El número mayor es:" + nuevo1 + " = " + nuevo3 + ", " + nuevo2);
		}
	} else if(nuevo1 < nuevo2){
		if(nuevo1 > nuevo3){
			console.log("El orden:" + nuevo2 + " > " + nuevo1 + " > " + nuevo3);
		} else if(nuevo3 > nuevo1){
			console.log("El orden:" + nuevo2 + " > " + nuevo3 + ", " + nuevo1);
		} else {
			console.log("El orden:" + nuevo2 + ", " + nuevo3 + " = " + nuevo1);
		}
	} else {
		console.log("El orden:" + nuevo2 + " = " + nuevo3 + " = " + nuevo3);
	}
}

function Ejercicio8(){
	let numero1 = parseInt(prompt("Escribe un número:"));

	if(numero1 % 2 === 0){
		console.log("Es divisible entre 2.");
	} else {
		console.log("No es divisible entre 2.");
	}
}

function Ejercicio9(){
	let frase = prompt("Escriba una frase:");
	let contador = 0;

	for(let i = 0; i < frase.lenght; i++){
		//frase.charAt(i);
		if(frase[i].toLowerCase() === 'a'){
			contador++;
		}
	}

	document.writeln("El número de a es: " + contador + "<br>");
}

function Ejercicio9A(){
	let frase = prompt("Escribe una frase:");
	let cuenta = frase.split('a').lenght - 1; // Investigar sobre la funcion .split

	document.writeln("El número de a es: " + cuenta + "<br>");
}

function Ejercicio9B(){
	let frase = prompt("Escriba una frase:");
	let letra='a';
	let contador = 0:

	for(let j = 0; j < frase.length; j++){
		if(frase.includes(letra)){
			contador++;
		}
	}

	alert(contardor);
}

function Ejercicio9C(){
	let frase = "Hola, ¿Qué tal?";
	let contador = 0;

	for(let char of frase){
		if(char.toLowerCase() === 'a'){
			contador++;
		}
	}
	
	document.writeln(contador "<br>");
}

function Ejercicio10(){
	let frase = prompt("Escribe una frase cualquiera:");
	let vocales = "aeiouAEIOU";
	let vocales_encontradas = "";
	let contador = 0;

	for(let char of frase){
		if(vocales.includes(char)){
			if(!vocales_encontradas.includes(char)){
				vocales_encontradas += char;
			}

			contador++;
		}
	}

	document.writeln("Vocales: " + vocales_encontradas + "; Número de vocales encontradas: " + contador + ". <br>");
}

function Ejercicio11(){
	let frase = prompt("Escribe una frase cualquiera:");
	let vocales = "aeiouAEIOU";
	let vocales_encontradas = "";
	let contador = 0;

	for(let char of frase){
		if(vocales.includes(char)){
			vocales_encontradas += char;
		}

		contador++;
	}

	document.writeln("Vocales encontradas: " + vocales_encontradas + "; Total: " + contador + ". <br>");
}

function Ejercicio12(){
	let frase = prompt("Escribe una frase cualquiera:");
	let vocales = "aeiou";
	let vocales_encontradas = {a:0, e:0, i:0, o:0, u:0};

	for(let char of frase){
		if(vocales.includes(char.toLowerCase())){
			vocales_encontradas[char,toLowerCase()]++;
		}
	}

	document.writeln("Vocales: " + JSON.stringify(vocales_encontradas) + ". <br>");
}

function Ejercicio14(){
	let num = parseInt(prompt("Introduce un número: "));
	let divisibles = [];
	 
	if(num % 2 === 0){
		divisibles.push("2");
	} else if(num % 3 === 0){
		divisibles.push("3");
	} else if(num % 5 === 0){
		divisibles.push("5");
	} else if(num % 7 === 0){
		divisibles.push("7");
	}

	if(divisibles.length > 0){
		document.writeln(divisibles.join(", ") ". <br>");
	} else {
		document.writeln("No es divisible. <br>");
	}
}

function EjemploSplit(){
	let frase="Hola que tal estas";
	let palabras=frase.split(" ");

	for(let i=0;i<palabras.length;i++){
		document.writeln(palabras[i]+"<br>");
	}

	let veces=frase.split(" ").length-1;
	document.writeln(veces);
}

// Función que llama a todas las funcoones y tiene el funcionamiento del main.
function carga(){
	Ejercicio1();
	Ejercicio2();
	Ejercicio3();
	Ejercicio4();
	Ejercicio5();
	Ejercicio6();
	Ejercicio7();
	Ejercicio8();
	Ejercicio9();
	Ejercicio9A();
	Ejercicio9B();
	EjemploSplit();
	Ejercicio9C();
	Ejercicio10();
	Ejercicio11();
	Ejercicio12();
	Ejercicio14();
}
window.addEventListener("DOMContentLoaded", carga, false); // Se puede omitir el false

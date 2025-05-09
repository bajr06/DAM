function exp1(){
	// Empiece por A mayúscula y minúscula.
	// let expReg = /^A|a/;
	// let palabra = "Hola"; No empieza por A.
	// let palabra = "arbol";
	
	// Copiar.

	let expReg =  "Cazador"; 

	if(expReg.test(palabra)){
		document.writeln("<h2> Empieza por A. <h2>");
	} else {
		document.writeln("<h2> No empieza por A. <h2>");
	}
}

function load(){
	exp1();
}

window.addEventListener("DOMContentLoaded", load, false);

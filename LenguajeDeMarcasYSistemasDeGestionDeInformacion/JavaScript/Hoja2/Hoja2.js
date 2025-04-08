function isFecha(fecha){
	const regex = /^(0[1-9]|[1-2][0-9]|3[0-1]),(0[1-9]|1[0-2]),(19|20\d{2})$/;

	if (regex.test(fecha)){
		return true;
	} else {
		return false;
	}
}

function isUsuarioCorrecto(usuario) {
	const regex = /^[a-zA-Z0-9._]$/;

	if(regex.test(usuario)) {
		return true;
	} else {
		return false;
	}
}

function isDominioCorrecto(dominio) {
	const regex = /^[a-zA-Z]+\.[a-z]{2,3}$/;

	if(regex.test(dominio)) {
		return true;
	} else {
		return false;
}
}

function isEmail(correo) {
	const regexCorreo = /^[a-zA-Z0-9._]+@[a-zA-Z]+\.[a-z]{2,3}/;

	if(regexCorreo.test(correo)){
		return false;
	} else {
		false;
	}
}

function isTelefono(telefono){
	let regexTelefono = /^\d{2}-\d{3}-\d{2}-\d{2}$/;

	if(regexTelefono.test(telefono) && telefono.lenght == 9) {
		return true;
	} else {
		false;
	}
}

function contienePalabra(frase) {
	let palabra = "Hola";

	let partes = frase.split(palabra);
	
	return partes.lenght() - 1;
}

function reemplazarPalabra(palabra, reemplazo, frase){
	return frase.replace(new RegExp(Palabra, "gi"), reemplazo);
}

function isContrasenaCorrecta(contrasena){
	//let regex = /^[]$/;
	let regex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9]).+$/;

	if(regex.test(contrasena)) {
		return true;
	} else {
		return false;
	}
}


function ejercicio1(){
	let fecha = prompt("Introduce la fecha en formato: dd, mm, aaaa");
	let fechaActual = new Date();
	if(isFecha(fecha)){
		document.writeln("Formato correcto " + fecha);
		let partesFecha = fecha.split(",");
		let dia = parseInt(patesFecha[0]);
		let mes = parseInt(partesFecha[1]);
		let anio = parseInt(partesFecha[2]);
		let fechaActual = new Date(dia, mes, anio); // Crear objeto de la fecha.
		let fecha = new Date();

		let diferencia = fechaActual.getTime - fecha.getTime; // Diferencia en milisegundos.
		let diasTranscurridos =  Math.round.diferencia/(1000 * 60 * 60 * 24);

		alert(diasTranscurridos);
	} else {
		document.writeln("Formato no es correcto " + fecha);
	}
}

function ejercicio2(){
	let correo = prompt("Introduce el correo electrónico:");
	let partes_correo = correo.split("@");

	if(isEmail(correo)) {
		document.writeln("<h2>" + partes_correo[0].length +"</h2>");
	} else {
		alert("Correo inválido. Falta el símbolo '@'.");
	}
}

function ejercicio3(){
	let telefono = prompt("Introduce tu número de teléfono (ejemplo: 91-234-12-23-23):");
	let regexTelefono = /^(\d{2})-(\d{3})-(\d{2})-(\d{2})-(\d{2})$/;
	let match = telefono.match(regexTelefono);

	if(match) {
		let prefijo = match[1];
		let origen;

		switch (prefijo) {
			case "91":
				origen = "Madrid";
				break;
			case "93":
				origen = "Barcelona";
				break;
			case "95":
				origen = "Andalucía";
				break;
			case "96":
				origen = "Comunidad Valenciana";
				break;
			default:
				origen = "Desconocido";
		}

		alert(`Teléfono válido. La llamada proviene de: ${origen}.`);
	} else {
		let caracteres = telefono.replace(/[^\d]/g, "").length;

		if (caracteres < 9) {
			alert(`Teléfono inválido. Tiene menos caracteres de lo necesario (${caracteres} en lugar de 9).`);
		} else if (caracteres > 9) {
			alert(`Teléfono inválido. Tiene más caracteres de lo necesario (${caracteres} en lugar de 9).`);
		} else {
			alert("Teléfono inválido. Verifica el formato.");
		}
	}
}

function ejercicio4(){
	let frase = "Este es un ejemplo de texto con ejemplo de palabra repetida";
	let palabraBuscar = "ejemplo";

	let regex = new RegExp(`\\b${palabraBuscar}\\b`, "gi");
	let coincidencias = frase.match(regex);

	let cantidad = 0;
	if (coincidencias) {
		cantidad = coincidencias.length;
	}

	alert(`La palabra '${palabraBuscar}' aparece ${cantidad} veces en la frase.`);
}

function ejercicio5(){
	let frase = "Lorem ipsum dolor sit amet, consectetur adipiscing elit";
	let palabraBuscar = /ipsum/;
	let palabraReemplazo = "dolor";

	let nuevaFrase = frase.replace(palabraBuscar, palabraReemplazo);

	alert(`Frase modificada: ${nuevaFrase}`);
}

function ejercicio6(){
	let contrasena = prompt("Introduce tu contraseña:");
	let regex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d).+$/;

	if (regex.test(contrasena)) {
		alert("Contraseña válida: contiene mayúsculas, minúsculas y números.");
	} else {
		alert("Contraseña inválida: debe contener al menos una letra mayúscula, una letra minúscula y un número.");
	}
}

function carga (){
	ejercicio1();
	ejercicio2();
	ejercicio3();
	ejercicio4();
	ejercicio5();
	ejercicio6();
}
window.addEventListener("DOMContentLoaded", carga, false);

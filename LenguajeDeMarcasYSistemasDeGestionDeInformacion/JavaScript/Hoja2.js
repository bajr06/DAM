function Is_Fecha(Fecha){
	// Formato fecha dd, mm, aaaa.
	const Regex = /^(0[1-9]|[1-2][0-9]|3[0-1]), (0[1-9]|1[0-2]), (19|20\d{2})$/;
	// /\b[0-9]\b/;

	if(Regex.test(Fecha)){
		return true;
	} else {
		return false;
	}
}

function Ejercicio1(){
	let Fecha = prompt("Introduzca una fecha con el siguiente formato (dd, mm, aaaa):");

	if(Is_Fecha(Fecha)){
		document.writeln("Formato de la fecha correcto: " + Fecha);

		let Fecha_Por_Partes = Fecha.split(",");
		let Dia = parseInt(Fecha_Por_Partes[0]);
		let Mes = parseInt(Fecha_Por_Partes[1]);
		let Año = parseInt(Fecha_Por_Partes[2]);

		let Fecha_Introducida = new Date(Dia, Mes, Año);
	} else {
		document.writeln("Formato de la fecha incorrecto: " + Fecha);
	}
}

function Carga(){
	Ejercicio1();
}
window.addEventListener("DOMContentLoaded", Carga, false);

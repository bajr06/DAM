function verificarCorreo(correo) {
    const regex = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
    
    if(regex.test(correo)) {
        return true;
    } else {
        return false;
    }
}
function verificarTelefono(telefono) {
    const regex = /^\d{9}$/;

    if(regex.test(telefono)) {
        return true;
    } else {
        return false;
    }
}

function ejercicio1(event) {
    event.preventDefault();
    let esCorreo = verificarCorreo(document.getElementById("correo1").value);
    let esTelefono = verificarTelefono(document.getElementById("telefono1").value);

    if(esCorreo && esTelefono) {
        document.getElementById("respuesta1").textContent = "Los datos que has introducido son correctos.";
    } else {
        document.getElementById("respuesta1").textContent = "Alguno o los dos datos que has introduzcido, son incorrectos.";
    }
}

function aleatorio(numero) {
    return Math.floor(Math.random() * (numero + 1));
}

function ejercicio2(event) {
    const abecedario = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', `N`, 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'];
    const tamAbc = abecedario.length - 1;

    let identificador = event.target.id;
    let aleatorioAbc = aleatorio(tamAbc);
    let asignarLetra = abecedario[aleatorioAbc];

    document.getElementById(identificador).value = aleatorioAbc;
    document.getElementById(`${identificador}`).textContent = asignarLetra;

    if(document.getElementById("00").value == document.getElementById("01").value) {
        document.getElementById("respuesta2").textContent = "Has ganado";
    } else if(document.getElementById("00").value == document.getElementById("10").value) {
        document.getElementById("respuesta2").textContent = "Has ganado";
    } else if(document.getElementById("11").value == document.getElementById("10").value) {
        document.getElementById("respuesta2").textContent = "Has ganado";
    } else if(document.getElementById("11").value == document.getElementById("01").value) {
        document.getElementById("respuesta2").textContent = "Has ganado";
    } else {
        document.getElementById("respuesta2").textContent = "Intentalo de nuevo";
    }
}

function cambiarColor(numero) {
    let color = `rgb(${aleatorio(255)}, ${aleatorio(255)}, ${aleatorio(255)})`;

    document.body.style.background = color;
}

function ejercicio3() {
    let vueltas = 0;
    let valor = 1;
    let contador = document.getElementById("respuesta3");

    vueltas = setInterval(() => {
		contador.textContent = valor;
		console.log(valor);
		if(valor % 5 == 0) {
			cambiarColor(valor);
		}

        valor++;
	}, 1000);
}


function ejercicio4() {
    let numero = document.getElementById("numero4").value;
    let tabla4 = document.querySelectorAll("#tabla4 td");

    document.querySelector(".valor4").textContent = numero;

    for(let i = 0; i < tabla4.length; i++) {
        document.getElementById(`${i}`).textContent = numero * i;
    }
}


function carga() {
    // Ejercicio 1
    let boton1 = document.getElementById("boton1");

    boton1.addEventListener("click", ejercicio1);

    // Ejercicio 2
    let tabla2 = document.querySelectorAll(".casilla");

    document.getElementById("00").value = 50;
    document.getElementById("01").value = 51;
    document.getElementById("10").value = 52;
    document.getElementById("11").value = 53;

    tabla2.forEach(casilla => casilla.addEventListener("mouseover", ejercicio2));

    // Ejercicio 3
    let boton3 = document.getElementById("boton3");

    boton3.addEventListener("click", ejercicio3);

    // Ejercicio 4
    let boton4 = document.getElementById("boton4");

    boton4.addEventListener("click", ejercicio4);
}
window.addEventListener("DOMContentLoaded", carga);
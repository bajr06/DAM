// package Ejercicio4;

public class PersonaInstituto {
	public int getDni() {
		return dni;
	}
	public void setDni(int dni) {
		this.dni = dni;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getApellidos() {
		return apellidos;
	}
	public void setApellidos(String apellidos) {
		this.apellidos = apellidos;
	}
	public int getSalario() {
		return salario;
	}
	public void setSalario(int salario) {
		this.salario = salario;
	}

	public PersonaInstituto(int dni, String nombre, String apellidos, int salario) {
		this.dni = dni;
		this.nombre = nombre;
		this.apellidos = apellidos;
		this.salario = salario;
	}

	@Override
	public String toString() {
		return "PersonaInstituto [DNI = " + dni + ", Nombre = " + nombre + ", Apellidos = " + apellidos + ", Salario = " + salario + "]";
	}


	int dni;
	String nombre;
	String apellidos;
	int salario;
}

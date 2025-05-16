enum Sexo {MASCULINO, FEMENINO};

public class Alumno {
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

	public int getFechaNacimiento() {
		return fechaNacimiento;
	}
	public void setFechaNacimiento(int fechaNacimiento) {
		this.fechaNacimiento = fechaNacimiento;
	}

	public Sexo getGenero() {
		return genero;
	}
	public void setGenero(Sexo genero) {
		this.genero = genero;
	}
	
	public boolean isRepetidor() {
		return repetidor;
	}
	public void setRepetidor(boolean repetidor) {
		this.repetidor = repetidor;
	}

	public Alumno(int dni, String nombre, String apellidos, int fechaNacimiento, Sexo genero, boolean repetidor, Modulo modulos) {
		// super();
		this.dni = dni;
		this.nombre = nombre;
		this.apellidos = apellidos;
		this.fechaNacimiento = fechaNacimiento;
		this.genero = genero;
		this.repetidor = repetidor;
		this.modulos = modulos;
	}

	@Override
	public String toString() {
		return "Alumno [DNI = " + dni + ", Nombre = " + nombre + ", Apellidos = " + apellidos + ", Fecha de Nacimiento = " + fechaNacimiento + ", Genero = " + genero + ", Repetidor = " + repetidor + ", Modulos = " + modulos.toString() + "]";
	}

	int dni;
	String nombre;
	String apellidos;
	int fechaNacimiento;
	Sexo genero;
	boolean repetidor;
	Modulo modulos;
}

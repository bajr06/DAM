enum Turno {MANIANA, TARDE};

public class Directivo {
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
	
	public boolean isSalesiano() {
		return salesiano;
	}
	public void setSalesiano(boolean salesiano) {
		this.salesiano = salesiano;
	}

	public Turno getPeriodo() {
		return periodo;
	}
	public void setPeriodo(Turno periodo) {
		this.periodo = periodo;
	}

	public Directivo(int dni, String nombre, String apellidos, int salario, boolean salesiano, Turno periodo) {
		this.dni = dni;
		this.nombre = nombre;
		this.apellidos = apellidos;
		this.salario = salario;
		this.salesiano = salesiano;
		this.periodo = periodo;
	}

	@Override
	public String toString() {
		return "Directivo [DNI = " + dni + ", Nombre = " + nombre + ", Apellidos = " + apellidos + ", Salario = " + salario + ", Salesiano = " + salesiano + ", Periodo = " + periodo + "]";
	}

	int dni;
	String nombre;
	String apellidos;
	int salario;
	boolean salesiano;
	Turno periodo;
}

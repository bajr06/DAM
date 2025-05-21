public class Administracion extends PersonaInstituto {
	public String getEstudios() {
		return estudios;
	}
	public void setEstudios(String estudios) {
		this.estudios = estudios;
	}

	public int getAntiguedad() {
		return antiguedad;
	}
	public void setAntiguedad(int antiguedad) {
		this.antiguedad = antiguedad;
	}

	public Administracion(int dni, String nombre, String apellidos, int salario, String estudios, int antiguedad) {
		super(dni, nombre, apellidos, salario);
		this.estudios = estudios;
		this.antiguedad = antiguedad;
	}

	@Override
	public String toString() {
		return super.toString() + "; Administracion [Estudios = " + estudios + ", Antiguedad = " + antiguedad + "]";
	}

	String estudios;
	int antiguedad;
}

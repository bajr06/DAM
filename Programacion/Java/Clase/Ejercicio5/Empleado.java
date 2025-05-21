// package Programacion.Java.Practica_12.Ejercicio5;

public class Empleado {
	public String getNombreCompleto() {
		return nombreCompleto;
	}
	public void setNombreCompleto(String nombreCompleto) {
		this.nombreCompleto = nombreCompleto;
	}

	public int getPermanencia() {
		return permanencia;
	}
	public void setPermanencia(int permanencia) {
		this.permanencia = permanencia;
	}
	
	public float getSalario() {
		return salario;
	}
	public void setSalario(float salario) {
		this.salario = salario;
	}
	public void setSalario(float salario, float porcentaje) {
		porcentaje = (float)(porcentaje * 0.010);
		salario += salario * porcentaje;
	}
	public void setSalario(int porcentaje) {
		this.salario = salario + salario * (porcentaje / 100);
	}

	public String getClasificacion() {
		return clasificacion;
	}

	private String clasificacionPermanencia() {
		if(permanencia <= 3) {
			clasificacion = "Principiante";
		} else if(permanencia > 3 && permanencia < 18) {
			clasificacion = "Intermedio";
		} else if(permanencia >= 18) {
			clasificacion = "Senior";
		}

		return clasificacion;
	}
	
	public Empleado(String nombreCompleto, int permanencia, float salario) {
		this.nombreCompleto = nombreCompleto;
		this.permanencia = permanencia;
		this.salario = salario;
		clasificacion = clasificacionPermanencia();
	}

	@Override
	public String toString() {
		return "Empleado\n[NombreCompleto = " + nombreCompleto + "\nPermanencia = " + permanencia + " años\nSalario = " + salario + "\nLa clasificacion por antiguedad es de " + clasificacionPermanencia() + "]";
	}
	

	private String nombreCompleto;
	private int permanencia;
	private float salario;
	private String clasificacion;
}

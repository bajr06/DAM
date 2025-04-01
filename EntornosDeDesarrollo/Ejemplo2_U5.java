package P1;
import java.io.ByteArrayInputStream;

public class Ejemplo2_U5() {
	public static void main(String[] args) {
		// Mi primer objeto de tipo coche que C1...
		Coche C1 = new Coche("Ford", "Orion", 12);
		System.out.println(C1.toString());
		Coche C2 = new Coche("F", "O");
		System.out.println(C2.toString());
	}
}

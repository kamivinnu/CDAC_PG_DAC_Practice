import java.lang.Math;

class Hypotenuse {
	public static void main(String[] args) {
		double a = Double.parseDouble(args[0]);
		double b = Double.parseDouble(args[1]);
		double c = Math.sqrt(a * a + b * b);

		System.out.println("Hypotenuse of a" + a + "and b " + b + "is :" + c);
	}
}
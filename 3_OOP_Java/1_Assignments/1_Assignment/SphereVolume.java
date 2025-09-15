class SphereVolume {
	public static final double PI = 3.14159;
	public static void main(String[] args) {
		double radius = Double.parseDouble(args[0]);

		double volume = 4.0/3 * PI * Math.pow(radius, 3);

		System.out.println("Vloume of Sphere: " + volume);
	}
}
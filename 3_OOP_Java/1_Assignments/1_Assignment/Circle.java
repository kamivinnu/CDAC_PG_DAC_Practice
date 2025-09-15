class Area_of_circle {
	public static double PI = 3.14159; // class-level constant
	public static void main(String[] args) {
		double radius = Double.parseDouble(args[0]);
		double ac = PI * (radius*radius);
		System.out.println("Area_of_circle: " + ac);
	}
}
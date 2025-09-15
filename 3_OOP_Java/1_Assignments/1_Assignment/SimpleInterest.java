class SimpleInterest {
	public static void main(String[] args) {
		double p = Double.parseDouble(args[0]);
		double t = Double.parseDouble(args[1]);
		double r = Double.parseDouble(args[2]);
		double si = (p * t * r)/100;

		System.out.println("SimpleInterest: " + si);
	}
}
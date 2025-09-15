class CompoundInterest {
	public static void main(String[] args) {
		double p = Double.parseDouble(args[0]);
		double r = Double.parseDouble(args[1]);
		double t = Double.parseDouble(args[2]);
		double n = Double.parseDouble(args[3]);

		double ci = p * Math.pow((1 + (r / 100 * n)), n * t);

		System.out.println("CompoundInterest: " + ci);
	}
}
class SumOfNumbers {
	public static void main(String[] args) {
		double n = Double.parseDouble(args[0]);

		double s = (n * (n + 1))/2;

		System.out.println("Sum of numbers: " + s);
	}
}
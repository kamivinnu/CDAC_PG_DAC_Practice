class Miles {
	public static void main(String[] args) {
		double km = Double.parseDouble(args[0]);
		double miles = km * 0.621371;

		System.out.println(miles);
	}
}
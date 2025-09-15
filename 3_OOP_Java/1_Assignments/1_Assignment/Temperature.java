class Temperature {
	public static void main(String[] args) {
		double celsius = Double.parseDouble(args[0]);
		double fahrenheit = (celsius * 9/5) + 32;
		System.out.println("celsius to fahrenheit value is : " + fahrenheit);
	}
}
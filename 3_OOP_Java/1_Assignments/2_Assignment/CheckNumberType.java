class CheckNumberType {
	public static void main(String[] args) {
		int check = Integer.parseInt(args[0]);

		if (check == 0)
			System.out.println("Zero");
		else if (check > 0)
			System.out.println("Positive Number");
		else
			System.out.println("Negative");
	}
}
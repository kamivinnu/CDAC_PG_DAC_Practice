class _8Palindrome {
	public static void main(String[] args) {

		int num = 101 + (int) (Math.random() * 900);
		int original = num;
		int reversed = 0;

		while (num != 0) {
			int digit = num % 10;
			reversed = (reversed * 10) + digit;
			num /= 10;
		}
		if (original == reversed) 
			System.out.println(original + " is a Palindrome");
		else 
			System.out.println(original + " is not a Palindrome");
	}
}
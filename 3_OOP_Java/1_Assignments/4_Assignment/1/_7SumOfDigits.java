class _7SumOfDigits {
	public static void main(String[] args) {
		int num = 101 + (int) (Math.random() * 900);
		int sum = 0;
		int temp = num;
		
		while (temp != 0) {
			int digit = temp % 10;
			sum += digit;
			temp /= 10;
		}
		System.out.println("Sum of digits of "+num+" is :" + sum);
	}
}
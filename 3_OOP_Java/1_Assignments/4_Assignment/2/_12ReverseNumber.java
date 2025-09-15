class _12ReverseNumber {
	public static void main(String[] args) {
		int num = 101 + (int) (Math.random() * 900);
		int reverse = 0;
		int n = num;
		while(n != 0) {
			int digit = n % 10;
			reverse = (reverse * 10) + digit;
			n /= 10;
		}
		System.out.println("The reverse of "+num+" is: "+reverse);
	}
}
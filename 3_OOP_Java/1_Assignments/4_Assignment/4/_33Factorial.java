class _21Factorial {
	public static void main(String[] args) {
		System.out.println("Factorial of Numbers from 1 to 10: ");

		long factorial = 1;
		for (int i=1; i<=10; i++) {
			factorial *= i;
			System.out.println(i + "! = " + factorial);
			}
		}
	}
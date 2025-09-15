import java.util.Scanner;
class _14GCD {
	static int gcd(int a, int b) {
		while (b != 0) {
			int temp = b;
			b = a % b;
			a = temp;
		}
		return a;
	}
	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		System.out.print("Enter First Number: ");
		int num1 = scanner.nextInt();
		System.out.print("Enter Second Number: ");
		int num2 = scanner.nextInt();

		// compute GCD
		int result = gcd(num1, num2);

		System.out.println("GCD of "+num1+" and "+num2+" is: "+result);
	}
}
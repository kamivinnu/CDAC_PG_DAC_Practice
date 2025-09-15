import java.util.Scanner;
class _28ProductDigit {
	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		System.out.print("Enter a Number: ");
		int num = scanner.nextInt();

		int n = num;
		int product = 1;

		while (n != 0) {
			int digit = n % 10;
			product *= digit;
			n /= 10;
		}
		System.out.println("Product of digits " + num + " is: "+ product);
	}
}
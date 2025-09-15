import java.util.Scanner;
class _35PerfectSquare {
	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		System.out.print("Enter a Number: ");
		int num = scanner.nextInt();
		int i;
		// negative numbers are not perfect square
		// zero is a perfect square
		for (i=0; i*i <= num; i++) {
			if (i*i == num) {
				System.out.println(num + " is a Perfect Square");
				break;
			}
		}
		if (i*i > num) {
			System.out.println(num + " is not a Perfect Square");
		}
	}
}
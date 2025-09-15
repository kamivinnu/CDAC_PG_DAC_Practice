import java.util.Scanner;
class _3MultiplicationTable {
	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		System.out.println("Enter the Number to do MultiplicationTable: ");
		int n = scanner.nextInt();

		for (int i=1; i<=10; i++) {
			System.out.println(n +" * "+ i + " = " + n*i);
		}
	}
}
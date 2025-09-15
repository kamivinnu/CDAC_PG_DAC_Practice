import java.util.Scanner;
class EvenOdd {
	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		System.out.print("Enter a Number: ");
		int n = scanner.nextInt();

		if (n % 2 == 0)
			System.out.println("'"+n+"' is even");
		else 
			System.out.println("'"+n+"' is odd");
	}
}
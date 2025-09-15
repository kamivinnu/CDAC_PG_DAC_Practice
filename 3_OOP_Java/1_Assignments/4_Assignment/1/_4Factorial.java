import java.util.Scanner;
class _4Factorial {
	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		System.out.print("Enter a Number to find factorial: ");
		int f = scanner.nextInt();
		int total = 1;
		for(int i=0; i<f; i++) {
			total *= (f-i);
		}
		System.out.println("The factorial of "+f+" is "+total);
	}
}
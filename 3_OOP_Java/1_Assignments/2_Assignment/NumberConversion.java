import java.util.Scanner;
class NumberConversion {
	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		System.out.print("Enter a Number between 0 to 5: ");
		int num = scanner.nextInt();

		switch (num) {
		case 0: System.out.println("Zero"); break;
		case 1: System.out.println("One"); break;
		case 2: System.out.println("Two"); break;
		case 3: System.out.println("Three"); break;
		case 4: System.out.println("Four"); break;
		case 5: System.out.println("Five"); break;
		}
	}
}
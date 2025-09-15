import java.util.Scanner;
class _13PowerCalc {
	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		System.out.print("Enter a Base Number: ");
		int base = scanner.nextInt();
		System.out.print("Enter a exponent: ");
		int exp = scanner.nextInt();

		long result = 1;

		for(int i=0; i<exp; i++){
			result *= base;
		}
		System.out.println(base+" to the power of "+exp+" = "+result);
	}
}
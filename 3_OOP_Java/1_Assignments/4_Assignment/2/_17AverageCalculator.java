import java.util.Scanner;
class _17AverageCalculator {
	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		System.out.print("Enter the count of numbers: ");
		int n = scanner.nextInt();

		double sum = 0;

		for(int i=1; i<=n; i++) {
			double num = scanner.nextDouble();
			sum += num;
		}

		double avg = sum/n;

		System.out.println("Average = "+avg);
	}
}
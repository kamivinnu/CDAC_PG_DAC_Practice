import java.util.Scanner;
class IncomeTaxCalcElseIf {
	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		System.out.print("Enter your Income: ");

		// check if input is numeric
		if (!scanner.hasNextDouble()){
			System.out.println("Invalid Input");
			return;
		}

		double income = scanner.nextDouble();

		// validate the range
		if (income <= 0) {
			System.out.println("Please enter Income greater than 0");
			return;
		}
		double tax;

		if (income <= 250000) {
			tax = 0;
		}
		else if (income > 250000 && income <= 500000) {
			tax = (income - 250000) * (5.0/100);
		}
		else if (income > 500000 && income <= 1000000) {
			tax = (250000 * (5.0/100)) + ((income - 500000) * (20.0/100)) ;
		}
		else {
			tax = (250000 * (5.0/100)) + (500000 * (20.0/100)) + ((income - 1000000) * (30.0/100));
		}
		System.out.println("The tax for income " + income + " is : " + tax);
	}
}
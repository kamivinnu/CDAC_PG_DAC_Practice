import java.util.Scanner;
class ElectrcityBillCalculationElseIf {
	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		System.out.print("Enter the Electricity consumed units: ");
		// check if input 
		if (!scanner.hasNextDouble()) {
			System.out.println("Invalid Input");
			return;
		}

		double units = scanner.nextDouble();

		// validate the range
		if (units <= 0){
			System.out.println("Please enter the units greater than 0");
			return;
		}
		
		double amount;

		if (units <= 100) {
			amount = units * 5;
			System.out.println("Electricity Bill Amount: " + amount);
		}
		else if (units > 100 && units <= 200) {
			amount = (100 * 5) + ((units - 100) * 6);
			System.out.println("Electricity Bill Amount: " + amount);
		}
		else if (units > 200 && units <= 300) {
			amount = (100 * 5) + (100 * 6) + ((units - 200) * 7);
			System.out.println("Electricity Bill Amount: " + amount); 
		}
		else {
			amount = (100 * 5) + (100 * 6) + (100 * 7) + ((units - 300) * 8);
			System.out.println("Electricity Bill Amount: " + amount); 
		}
	}
}
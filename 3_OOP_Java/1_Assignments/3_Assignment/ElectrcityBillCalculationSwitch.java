import java.util.Scanner;
class ElectrcityBillCalculationSwitch {
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
		
		int u = (int) (units / 100);

		double amount;

		switch (u) {
		case 0: {
			amount = units * 5;
			System.out.println("Electricity Bill Amount: " + amount);
			break;
		}
		case 1: {
			amount = (100 * 5) + ((units - 100) * 6);
			System.out.println("Electricity Bill Amount: " + amount);
			break;
		}
		case 2: {
			amount = (100 * 5) + (100 * 6) + ((units - 200) * 7);
			System.out.println("Electricity Bill Amount: " + amount);
			break;
		}
		default: {
			amount = (100 * 5) + (100 * 6) + (100 * 7) + ((units - 300) * 8);
			System.out.println("Electricity Bill Amount: " + amount);
		}
		}
	}
}
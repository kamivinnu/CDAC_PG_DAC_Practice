import java.util.Scanner;
class IncomeTaxCalcSwitch {
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
		double tax = 0.0;

		int slab;

		// decide slab index
		if (income <= 250000) {
			slab = 0;
		}
		else if (income <= 500000){
			slab = 1;
		}
		else if (income <= 1000000){
			slab = 2;
		}
		else {
			slab = 3;
		}

		switch (slab) {
		case 0: // upto 2.5L
			tax = 0; break;
		case 1: // upto 5L
			tax = (income - 250000) * (5.0/100); break;
		case 2: // upto 10L
			tax = (250000 * (5.0/100)) + ((income - 500000) * (20.0/100)) ;
			break;
		case 3: // above 10l
			tax = (250000 * (5.0/100)) + (500000 * (20.0/100)) + ((income - 1000000) * (30.0/100));
			break;
		default:
			System.out.println("Error in Calculating Tax");
		}
		System.out.println("The tax for income " + income + " is : " + tax);
	}
}
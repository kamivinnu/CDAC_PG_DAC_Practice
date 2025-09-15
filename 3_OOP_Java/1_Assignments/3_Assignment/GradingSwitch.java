import java.util.Scanner;
class GradingSwitch {
	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);

		System.out.print("Enter your percentage: ");

		// check if input is numeric
		if (!scanner.hasNextDouble()) {
			System.out.println("Invalid Input: Please enter the values between 0 to 100");
			return;
		}

		double percentage = scanner.nextDouble();

		// validate percentage range
		if (percentage < 0 || percentage > 100){
			System.out.println("Invalid Percentage");
			return;
		}

		int grade = (int) (percentage / 10);

		switch (grade){
		case 10:
		case 9: System.out.println("Grade: A"); break;
		case 8: System.out.println("Grade: B"); break;
		case 7: System.out.println("Grade: C"); break;
		case 6: System.out.println("Grade: D"); break;
		default:
			System.out.println("Grade: F");
			break;
		}
	}
}
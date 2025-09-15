import java.util.Scanner;
class PercentageElseIf{
	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		// taking percentage from the end user
		System.out.print("Enter your percentage: ");

		// check if input is numeric
		if (!scanner.hasNextDouble()){
			System.out.println("Invalid Input: Enter a number between 0 to 100");
			return;
		}

		double percentage = scanner.nextDouble();

		// validate percentage range
		if (percentage < 0 || percentage > 100) {
			System.out.println("Invalid Percentage! Please enter a value between 0 and 100");
			return;
		}

		int grade = (int) (percentage / 10);

		if (grade >= 9 && grade <= 10) 
			System.out.println("Grade: A");
		else if (grade >= 8 && grade < 9) 
			System.out.println("Grade: B");
		else if (grade >= 7 && grade < 8)
			System.out.println("Grade: C");
		else if (grade >= 6 && grade < 7)
			System.out.println("Grade: D");
		else
			System.out.println("Grdae: F");
	}
}
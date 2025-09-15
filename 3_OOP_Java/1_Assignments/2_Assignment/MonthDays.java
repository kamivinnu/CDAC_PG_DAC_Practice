import java.util.Scanner;
class MonthDays {
	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		System.out.print("Enter a Month number (1 to 12): ");
		int month = scanner.nextInt();
		int days = 0;
		switch (month) {
		case 1: // january
		case 3: // march
		case 5: // may
		case 7: // july
		case 8: // august
		case 10: // october
		case 12: // december
			days = 31;
			break;

		case 4: // april
		case 6: // june
		case 9: // september 
		case 11: // november
			days = 30;
			break;

		case 2: days = 28; break;
		}
		System.out.println("Number of Days =" + days);
	}
}
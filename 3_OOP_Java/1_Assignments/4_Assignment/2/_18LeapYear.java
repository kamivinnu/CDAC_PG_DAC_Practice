import java.util.Scanner;

class _18LeapYear {
	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		System.out.print("Emter a year: ");
		int year = scanner.nextInt();

		if ((year%400==0) || ((year%4==0) && (year%100!=0)))
			System.out.println(year + " is a Leap Year");
		else
			System.out.println(year + " is not a Leap Year");
	}
}
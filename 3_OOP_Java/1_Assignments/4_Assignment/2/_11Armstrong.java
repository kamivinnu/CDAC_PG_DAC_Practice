import java.util.Scanner;
class _11Armstrong {
	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		System.out.print("Enter a Number: ");
		int num = scanner.nextInt();

		int sum = 0;
		int n = num;

		while (n != 0){
			int digit = n % 10;
			sum += Math.pow(digit, 3);
			n /= 10;
		}
		if (num == sum)
			System.out.println(num + " is an Armstrong Number");
		else 
			System.out.println(num + " is not an Armstrong Number");
	}
}
import java.util.Scanner;

class _26PerfectNumber {
	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		System.out.print("Enter a Number: ");
		int num = scanner.nextInt();

		// int sum = 0;
		
		// // find divisors and add

		// for (int i=1; i<=num/2; i++) {
		// 	if (num % i == 0) 
		// 		sum += i;
		// }

		// Efficient Java Implementation (O(√n))
		if (num <= 1){
			System.out.println(num + " is not a Perfect Number");
		}

		int sum = 1; // 1 is always a divisor

		// Check divisors up to sqrt(num)

		for (int i=2; i*i <= num; i++) {
			if (num % i == 0) {
				sum += i;
				if (i != num / i) {
                    sum += num / i; // add the pair divisor
                }
			}
		}

		// check perfect number
		if (num == sum && num > 0)
			System.out.println(num + " is a Perfect Number");
		else 
			System.out.println(num + " is not a Perfect Number");
	}
}
import java.util.Scanner;

class _36SinglDigitRoot {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter a number: ");
        int num = sc.nextInt();

        // Reduce until single digit
        int result = num;
        while (result >= 10) {
            result = sumOfDigits(result);
        }

        System.out.println("The single digit sum is: " + result);
    }

    public static int sumOfDigits(int n) {
        int sum = 0;
        while (n > 0) {
            sum += n % 10; // add last digit
            n /= 10;       // remove last digit
        }
        return sum;
    }
}
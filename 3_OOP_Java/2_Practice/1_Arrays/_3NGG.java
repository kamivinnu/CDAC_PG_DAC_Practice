import java.util.Scanner;

class NumberGuessGame {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        int targetNumber = (int) (Math.random() * 101);  // Random number between 0 and 100
        int guess;
        int attempts = 0;

        System.out.println("Guess a number between 0 and 100:");

        while (true) {
            System.out.print("Your guess: ");
            guess = sc.nextInt();
            attempts++;

            if (guess == targetNumber) {
                System.out.println("🎉 You won in " + attempts + " attempts!");
                break;
            } else if (guess < targetNumber) {
                System.out.println("Too low. Try again.");
            } else {
                System.out.println("Too high. Try again.");
            }
        }

        sc.close();
    }
}

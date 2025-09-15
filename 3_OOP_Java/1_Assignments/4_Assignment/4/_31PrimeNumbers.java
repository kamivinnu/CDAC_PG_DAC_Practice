class _31PrimeNumbers {

    public static void main(String[] args) {
        System.out.println("Prime numbers from 1 to 100 are:");

        int sum = 0;
        for (int i = 2; i <= 100; i++) {
            boolean isPrime = true;

            // This is an optimized approach, as a number's factors repeat after its square root.
            for (int j = 2; j <= Math.sqrt(i); j++) {
                // If the number is divisible by any 'j', it's not prime.
                if (i % j == 0) {
                    isPrime = false;
                    break; 
                }
            }
            if (isPrime) {
                System.out.print(i + " ");
                sum += i;
            }
        }
        System.out.println("Sum of 1 to 100 primes = " + sum);
    }
}

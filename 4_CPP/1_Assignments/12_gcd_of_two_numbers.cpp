#include <iostream>
using namespace std;
/**
 * Calculates the greatest common divisor (GCD) of two numbers.
 *
 * The GCD of two numbers is the largest number that divides both of them without leaving a remainder.
 *
 * This function uses the Euclidean algorithm to calculate the GCD.
 *
 * @param a The first number.
 * @param b The second number.
 * @return The greatest common divisor of a and b.
 */
int gcd(int a, int b) {
    // Base case: if b is 0, the GCD is a
    if (b == 0) return a;

    // Recursive case: calculate the GCD of b and a % b
    return gcd(b, a % b);
}

/**
 * The main function of the program.
 *
 * Reads two numbers from the user and prints the greatest common divisor of the two numbers.
 *
 * @return 0 if the program runs successfully.
 */
int main() {
    int a, b;
    // Read two numbers from the user
    cin >> a >> b;

    // Print the greatest common divisor of a and b
    cout << gcd(a, b) << endl;

    return 0;
}

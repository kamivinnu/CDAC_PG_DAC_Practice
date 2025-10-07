#include <iostream>
using namespace std;
/**
 * Prints the first n terms of the Fibonacci series.
 *
 * The Fibonacci series is a sequence of numbers in which each number is the sum of the two preceding numbers.
 *
 * @param n The number of terms to print.
 */
void print_fibonacci_series(int n) {
    int a = 0, b = 1, c;
    if (n == 0) return;
    cout << a << " ";
    if (n == 1) return;
    cout << b << " ";
    for (int i = 2; i < n; i++) {
        c = a + b;
        cout << c << " ";
        a = b;
        b = c;
    }
}

/**
 * The main function of the program.
 *
 * Prompts the user to enter a number, then uses that number to print the first n terms of the Fibonacci series.
 *
 * @return 0 if the program runs successfully.
 */
int main() {
    int n;
    cout << "Enter the number of terms: ";
    cin >> n;

    // Print the first n terms of the Fibonacci series
    print_fibonacci_series(n);

    return 0;
}

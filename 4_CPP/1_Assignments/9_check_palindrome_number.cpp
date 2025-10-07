#include <iostream>
using namespace std;

/**
 * Checks if a given number is a palindrome.
 *
 * @param n The number to check.
 * @return true if the number is a palindrome, false otherwise.
 */ 
bool is_palindrome_number(int n) {  
    int reversed = 0;
    int original = n;
    
    while (n > 0) {
        int digit = n % 10;
        reversed = reversed * 10 + digit;
        n /= 10;
    }
    
    return original == reversed;
}

/**
 * Example program that demonstrates the use of the is_palindrome_number function.
 */
int main() {
    int n;
    cout << "Enter a number: ";
    cin >> n;
    
    if (is_palindrome_number(n)) {
        cout << n << " is a palindrome number." << endl;
    } else {
        cout << n << " is not a palindrome number." << endl;
    }
    
    return 0;
}

/**
 * Checks if a given number is a palindrome.
 *
 * A palindrome is a number that reads the same backwards as forwards.
 *
 * @param n The number to check.
 * @return true if the number is a palindrome, false otherwise.
 */

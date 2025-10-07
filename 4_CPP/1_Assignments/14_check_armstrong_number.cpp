#include <iostream>
#include <cmath>
using namespace std;

bool is_armstrong_number(int n) {
    int digits = 0;
    int original = n;
    int sum = 0;

    while (n > 0) {
        n /= 10;
        digits++;
    }

    n = original;
    while (n > 0) {
        int digit = n % 10;
        sum += pow(digit, digits);
        n /= 10;
    }

    return sum == original;
}

int main() {
    int n;
    cout << "Enter a number: ";
    cin >> n;

    if (is_armstrong_number(n)) {
        cout << n << " is an Armstrong number." << endl;
    } else {
        cout << n << " is not an Armstrong number." << endl;
    }

    return 0;
}
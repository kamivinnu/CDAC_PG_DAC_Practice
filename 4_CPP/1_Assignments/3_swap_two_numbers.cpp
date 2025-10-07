#include <iostream>
using namespace std;

int main() {
    int a, b;

    cout << "Enter two numbers: ";
    cin >> a >> b;

    cout << "\nBefore swapping: a = " << a << ", b = " << b << endl;

    // Method 1: Using arithmetic operations
    a = a + b;
    b = a - b;
    a = a - b;

    // Alternative Method 2: Using bitwise XOR (uncomment to test)
    // a = a ^ b;
    // b = a ^ b;
    // a = a ^ b;

    cout << "After swapping: a = " << a << ", b = " << b << endl;

    return 0;
}

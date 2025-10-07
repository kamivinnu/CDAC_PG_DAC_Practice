#include <iostream>
using namespace std;

// Function to print Pascal's Triangle
void print_pascal_triangle(int n) {
    for (int i = 0; i < n; i++) {
        int value = 1; // First element of every row is 1
        
        // Print leading spaces for alignment
        for (int space = 0; space < n - i - 1; space++) {
            cout << "  ";
        }

        // Print values in the row
        for (int j = 0; j <= i; j++) {
            cout << value << "   ";
            value = value * (i - j) / (j + 1); // Compute next value in row
        }

        cout << endl;
    }
}

int main() {
    int n;
    cout << "Enter the number of rows: ";
    cin >> n;
    cout << "\nPascal's Triangle (" << n << " rows):\n";
    print_pascal_triangle(n);

    return 0;
}

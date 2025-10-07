#include <iostream>
#include <cstdlib>  // For rand() and srand()
#include <ctime>    // For time()
using namespace std;

int main() {
    int n;

    cout << "Enter the number of elements: ";
    cin >> n;

    if (n <= 0) {
        cout << "Invalid input! Number of elements must be greater than zero." << endl;
        return 1;
    }

    int arr[n];

    // Seed the random number generator
    srand(time(0));

    cout << "\nGenerated random numbers:\n";
    for (int i = 0; i < n; i++) {
        arr[i] = rand() % 100; // random values between 0 and 99
        cout << arr[i] << " ";
    }
    cout << endl;

    int largest = arr[0];

    for (int i = 1; i < n; i++) {
        if (arr[i] > largest) {
            largest = arr[i];
        }
    }

    cout << "\nThe largest number is: " << largest << endl;

    return 0;
}

#include <iostream>
using namespace std;

/**
 * Reverses the elements of an array in place.
 *
 * @param arr The array to reverse.
 * @param n The number of elements in the array.
 */
void reverse_array(int arr[], int n) {
    int start = 0;
    int end = n-1;
    while (start < end) {
        int temp = arr[start];
        arr[start] = arr[end];
        arr[end] = temp;
        start++;
        end--;
    }
}


/**
 * Example program that demonstrates the use of the reverse_array function.
 */
int main() {
    int arr[] = {1, 2, 3, 4, 5};
    int n = sizeof(arr) / sizeof(arr[0]);

    // Reverse the array in place
    reverse_array(arr, n);

    // Print the reversed array
    for (int i = 0; i < n; i++) {
        cout << arr[i] << " ";
    }
    cout << endl;

    return 0;
}
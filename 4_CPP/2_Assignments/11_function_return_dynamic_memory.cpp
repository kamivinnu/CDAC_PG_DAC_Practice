#include <iostream>
using namespace std;

int* createArray(int n) {
    int *arr = new int[n];
    cout << "Enter " << n << " integers: ";
    for (int i = 0; i < n; i++)
        cin >> arr[i];
    return arr;
}

int main() {
    int n = 5;
    int *ptr = createArray(n);

    cout << "Array elements: ";
    for (int i = 0; i < n; i++)
        cout << ptr[i] << " ";

    delete[] ptr;
    return 0;
}

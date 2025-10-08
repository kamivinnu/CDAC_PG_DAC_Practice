#include <iostream>
using namespace std;

int main() {
    int n = 3;
    int *arr = new int[n];

    cout << "Enter 3 integers: ";
    for (int i = 0; i < n; i++)
        cin >> arr[i];

    int newSize = 5;
    int *newArr = new int[newSize];

    for (int i = 0; i < n; i++)
        newArr[i] = arr[i];

    cout << "Enter 2 more integers: ";
    for (int i = n; i < newSize; i++)
        cin >> newArr[i];

    cout << "New array: ";
    for (int i = 0; i < newSize; i++)
        cout << newArr[i] << " ";

    delete[] arr;
    delete[] newArr;
    return 0;
}

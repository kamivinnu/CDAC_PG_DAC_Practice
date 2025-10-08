#include <iostream>
using namespace std;

int main() {
    int size;
    cout << "Enter the size of string: ";
    cin >> size;

    char *str = new char[size];
    cout << "Enter string: ";
    cin.ignore();
    cin.getline(str, size);

    cout << "You entered: " << str << endl;

    delete[] str;
    return 0;
}

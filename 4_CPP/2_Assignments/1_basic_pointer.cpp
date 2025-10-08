#include <iostream>
using namespace std;

int main() {
    int num = 10;
    int *ptr = &num;

    cout << "Value of num: " << num << endl;
    cout << "Address of num using pointer: " << ptr << endl;
    cout << "Value accessed through pointer: " << *ptr << endl;
    return 0;
}

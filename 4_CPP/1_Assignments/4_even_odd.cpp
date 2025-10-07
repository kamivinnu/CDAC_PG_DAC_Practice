#include <iostream>
using namespace std;

bool is_even(int n) {
    return n % 2 == 0;
}

int main() {
    int n;
    cout << "Enter a number: ";
    cin >> n;
    
    if (is_even(n)) {
        cout << n << " is even." << endl;
    } else {
        cout << n << " is odd." << endl;
    }
    
    return 0;
}
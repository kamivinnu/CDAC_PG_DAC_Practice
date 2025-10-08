#include <iostream>
using namespace std;

void updateValue(int *p) {
    *p = *p + 10;
}

int main() {
    int num = 5;
    cout << "Before update: " << num << endl;

    updateValue(&num);

    cout << "After update: " << num << endl;
    return 0;
}

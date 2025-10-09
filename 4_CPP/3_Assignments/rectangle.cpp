#include <iostream>
using namespace std;

class Rectangle {
    float length, width;

public:
    void input() {
        cout << "Enter length and width: ";
        cin >> length >> width;
    }

    float area() {
        return length * width;
    }

    float perimeter() {
        return 2 * (length + width);
    }

    void display() {
        cout << "Area: " << area() << endl;
        cout << "Perimeter: " << perimeter() << endl;
    }
};

int main() {
    Rectangle r;
    r.input();
    r.display();
    return 0;
}

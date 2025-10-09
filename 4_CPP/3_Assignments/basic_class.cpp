#include <iostream>
using namespace std;

class Car {
    string name;
    int speed;

public:
    void setData(string n, int s) {
        name = n;
        speed = s;
    }

    void display() {
        cout << "Car Name: " << name << endl;
        cout << "Speed: " << speed << " km/h" << endl;
    }
};

int main() {
    Car c1, c2;
    c1.setData("BMW", 220);
    c2.setData("Audi", 200);

    cout << "Car 1 Details:" << endl;
    c1.display();
    cout << "\nCar 2 Details:" << endl;
    c2.display();
    return 0;
}

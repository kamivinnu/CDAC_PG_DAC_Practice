#include <iostream>
using namespace std;

class Employee {
    int id;
    string name;
    float salary;

public:
    Employee(int i, string n, float s) {
        id = i;
        name = n;
        salary = s;
    }

    void display() {
        cout << "ID: " << id << ", Name: " << name << ", Salary: " << salary << endl;
    }
};

int main() {
    Employee e1(101, "Vinod", 50000);
    Employee e2(102, "Kumar", 60000);

    e1.display();
    e2.display();
    return 0;
}

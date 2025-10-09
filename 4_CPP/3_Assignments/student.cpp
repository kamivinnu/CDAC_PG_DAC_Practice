#include <iostream>
using namespace std;

class Student {
    int rollNo;
    string name;
    float marks;

public:
    void input() {
        cout << "Enter Roll No, Name, and Marks: ";
        cin >> rollNo >> name >> marks;
    }

    void display() {
        cout << "Roll No: " << rollNo << ", Name: " << name << ", Marks: " << marks << endl;
    }
};

int main() {
    Student s[3];
    cout << "Enter details for 3 students:\n";
    for (int i = 0; i < 3; i++) {
        s[i].input();
    }

    cout << "\nStudent Details:\n";
    for (int i = 0; i < 3; i++) {
        s[i].display();
    }
    return 0;
}

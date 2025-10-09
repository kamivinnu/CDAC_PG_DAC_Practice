#include <iostream>
#include <string>
#include <iomanip>
using namespace std;

// ============================
// Base Class: Employee
// ============================
class Employee {
private:
    string name;
    int id;
    float baseSalary;

protected:
    float bonus;

public:
    // Parameterized Constructor
    Employee(const string& name_, int id_, float baseSalary_)
        : name(name_), id(id_), baseSalary(baseSalary_), bonus(0.0f) {}

    // Virtual Function - Base version
    virtual void calculateBonus() {
        bonus = 0.0f;  // Base class: no bonus
    }

    // Virtual Display Function
    virtual void display() const {
        cout << left << setw(15) << name
             << setw(8) << id
             << setw(12) << fixed << setprecision(2) << baseSalary
             << setw(12) << bonus
             << setw(15) << "Employee"
             << setw(12) << baseSalary + bonus
             << endl;
    }

    // Virtual Destructor
    virtual ~Employee() {
        cout << "Destroying Employee object: " << id << " (" << name << ")\n";
    }

protected:
    // Protected getters for derived class access
    string getName() const { return name; }
    int getId() const { return id; }
    float getBaseSalary() const { return baseSalary; }
};

// ============================
// Derived Class: Manager
// ============================
class Manager : public Employee {
public:
    Manager(const string& name_, int id_, float baseSalary_)
        : Employee(name_, id_, baseSalary_) {}

    void calculateBonus() override {
        bonus = 0.40f * getBaseSalary();  // 40% of base salary
    }

    void display() const override {
        cout << left << setw(15) << getName()
             << setw(8) << getId()
             << setw(12) << fixed << setprecision(2) << getBaseSalary()
             << setw(12) << bonus
             << setw(15) << "Manager"
             << setw(12) << getBaseSalary() + bonus
             << endl;
    }

    ~Manager() override {
        cout << "Destroying Manager object: " << getId() << "\n";
    }
};

// ============================
// Derived Class: Developer
// ============================
class Developer : public Employee {
public:
    Developer(const string& name_, int id_, float baseSalary_)
        : Employee(name_, id_, baseSalary_) {}

    void calculateBonus() override {
        bonus = 0.25f * getBaseSalary();  // 25% of base salary
    }

    void display() const override {
        cout << left << setw(15) << getName()
             << setw(8) << getId()
             << setw(12) << fixed << setprecision(2) << getBaseSalary()
             << setw(12) << bonus
             << setw(15) << "Developer"
             << setw(12) << getBaseSalary() + bonus
             << endl;
    }

    ~Developer() override {
        cout << "Destroying Developer object: " << getId() << "\n";
    }
};

// ============================
// Helper Function: Header
// ============================
void printHeader() {
    cout << left
         << setw(15) << "Name"
         << setw(8)  << "ID"
         << setw(12) << "BaseSalary"
         << setw(12) << "Bonus"
         << setw(15) << "Role"
         << setw(12) << "TotalSalary"
         << endl;
    cout << string(74, '-') << endl;
}

// ============================
// Main Function
// ============================
int main() {
    int n;
    cout << "Enter the number of employees: ";
    cin >> n;

    Employee** employees = new Employee*[n]; // Array of base pointers

    for (int i = 0; i < n; ++i) {
        cout << "\nEnter details for employee #" << i + 1 << ":\n";

        string name;
        int id, choice;
        float salary;

        cout << "Name: ";
        cin >> ws;
        getline(cin, name);
        cout << "ID: ";
        cin >> id;
        cout << "Base Salary: ";
        cin >> salary;

        cout << "Select Role (1 - Manager, 2 - Developer): ";
        cin >> choice;

        if (choice == 1)
            employees[i] = new Manager(name, id, salary);
        else
            employees[i] = new Developer(name, id, salary);

        // Calculate bonus for each employee
        employees[i]->calculateBonus();
    }

    // Display all employee details
    cout << "\n\nEmployee Payroll Details:\n";
    printHeader();
    for (int i = 0; i < n; ++i) {
        employees[i]->display();
    }

    // Cleanup
    cout << "\nCleaning up memory:\n";
    for (int i = 0; i < n; ++i) {
        delete employees[i];
    }
    delete[] employees;

    cout << "All employee objects destroyed successfully.\n";
    return 0;
}

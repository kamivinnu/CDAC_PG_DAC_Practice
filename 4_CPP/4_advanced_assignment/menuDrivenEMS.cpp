#include <iostream>
#include <string>
#include <vector>
#include <iomanip>
using namespace std;

// ======================================
// Base Class: Employee
// ======================================
class Employee {
private:
    string name;
    int empID;

protected:
    float salary;

public:
    // Parameterized constructor
    Employee(const string& name_, int empID_)
        : name(name_), empID(empID_), salary(0.0f) {}

    // Display basic info
    void displayBasic() const {
        cout << left << setw(15) << name
             << setw(10) << empID;
    }

    // Getter
    float getSalary() const { return salary; }

    int getID() const { return empID; }
    string getName() const { return name; }

    // Virtual destructor
    virtual ~Employee() {
        cout << "Destroying Employee: " << empID << " (" << name << ")\n";
    }

    // Virtual functions to override
    virtual void calculateSalary() = 0;
    virtual void displayDetails() const = 0;
};

// ======================================
// Derived Class: FullTimeEmployee
// ======================================
class FullTimeEmployee : public Employee {
private:
    float basicPay;
    float bonus;

public:
    FullTimeEmployee(const string& name_, int empID_, float basicPay_, float bonus_)
        : Employee(name_, empID_), basicPay(basicPay_), bonus(bonus_) {}

    void calculateSalary() override {
        salary = basicPay + bonus;
    }

    void displayDetails() const override {
        displayBasic();
        cout << setw(15) << "Full-Time"
             << setw(12) << fixed << setprecision(2) << salary
             << setw(12) << basicPay
             << setw(12) << bonus
             << endl;
    }

    ~FullTimeEmployee() override {
        cout << "Cleaning up FullTimeEmployee object (ID=" << getID() << ")\n";
    }
};

// ======================================
// Derived Class: PartTimeEmployee
// ======================================
class PartTimeEmployee : public Employee {
private:
    int hoursWorked;
    float hourlyRate;

public:
    PartTimeEmployee(const string& name_, int empID_, int hoursWorked_, float hourlyRate_)
        : Employee(name_, empID_), hoursWorked(hoursWorked_), hourlyRate(hourlyRate_) {}

    void calculateSalary() override {
        salary = hoursWorked * hourlyRate;
    }

    void displayDetails() const override {
        displayBasic();
        cout << setw(15) << "Part-Time"
             << setw(12) << fixed << setprecision(2) << salary
             << setw(12) << hoursWorked
             << setw(12) << hourlyRate
             << endl;
    }

    ~PartTimeEmployee() override {
        cout << "Cleaning up PartTimeEmployee object (ID=" << getID() << ")\n";
    }
};

// ======================================
// Helper Function: Display Header
// ======================================
void displayHeader() {
    cout << left << setw(15) << "Name"
         << setw(10) << "EmpID"
         << setw(15) << "Type"
         << setw(12) << "Salary"
         << setw(12) << "Basic/Hrs"
         << setw(12) << "Bonus/Rate"
         << endl;
    cout << string(76, '-') << endl;
}

// ======================================
// Search Function
// ======================================
Employee* searchEmployee(vector<Employee*>& employees, int id) {
    for (auto* e : employees) {
        if (e->getID() == id)
            return e;
    }
    return nullptr;
}

// ======================================
// Delete Function
// ======================================
void deleteEmployee(vector<Employee*>& employees, int id) {
    for (auto it = employees.begin(); it != employees.end(); ++it) {
        if ((*it)->getID() == id) {
            delete *it; // Free memory
            employees.erase(it);
            cout << "Employee with ID " << id << " deleted successfully.\n";
            return;
        }
    }
    cout << "Employee with ID " << id << " not found.\n";
}

// ======================================
// Main Function
// ======================================
int main() {
    vector<Employee*> employees;
    int choice;

    do {
        cout << "\n=========== Employee Management System ===========\n";
        cout << "1. Add Full-Time Employee\n";
        cout << "2. Add Part-Time Employee\n";
        cout << "3. Display All Employees\n";
        cout << "4. Search Employee by ID\n";
        cout << "5. Delete Employee by ID\n";
        cout << "6. Exit\n";
        cout << "Enter your choice: ";
        cin >> choice;

        switch (choice) {
        case 1: {
            string name;
            int id;
            float basic, bonus;
            cout << "Enter name: ";
            cin >> ws;
            getline(cin, name);
            cout << "Enter ID: ";
            cin >> id;
            cout << "Enter Basic Pay: ";
            cin >> basic;
            cout << "Enter Bonus: ";
            cin >> bonus;

            Employee* e = new FullTimeEmployee(name, id, basic, bonus);
            e->calculateSalary();
            employees.push_back(e);
            cout << "Full-Time Employee added successfully!\n";
            break;
        }

        case 2: {
            string name;
            int id, hours;
            float rate;
            cout << "Enter name: ";
            cin >> ws;
            getline(cin, name);
            cout << "Enter ID: ";
            cin >> id;
            cout << "Enter Hours Worked: ";
            cin >> hours;
            cout << "Enter Hourly Rate: ";
            cin >> rate;

            Employee* e = new PartTimeEmployee(name, id, hours, rate);
            e->calculateSalary();
            employees.push_back(e);
            cout << "Part-Time Employee added successfully!\n";
            break;
        }

        case 3: {
            if (employees.empty()) {
                cout << "No employees to display.\n";
            } else {
                displayHeader();
                for (auto* e : employees)
                    e->displayDetails();
            }
            break;
        }

        case 4: {
            int id;
            cout << "Enter Employee ID to search: ";
            cin >> id;
            Employee* emp = searchEmployee(employees, id);
            if (emp) {
                displayHeader();
                emp->displayDetails();
            } else {
                cout << "Employee not found.\n";
            }
            break;
        }

        case 5: {
            int id;
            cout << "Enter Employee ID to delete: ";
            cin >> id;
            deleteEmployee(employees, id);
            break;
        }

        case 6: {
            cout << "Exiting program...\n";
            break;
        }

        default:
            cout << "Invalid choice. Please try again.\n";
        }

    } while (choice != 6);

    // Cleanup before exit
    cout << "\nCleaning up all remaining employee objects...\n";
    for (auto* e : employees)
        delete e;
    employees.clear();

    cout << "All memory released successfully.\n";
    return 0;
}

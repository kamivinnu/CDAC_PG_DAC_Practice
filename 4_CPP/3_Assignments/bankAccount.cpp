#include <iostream>
using namespace std;

class BankAccount {
    int accountNumber;
    double balance;

public:
    void openAccount(int accNo, double bal) {
        accountNumber = accNo;
        balance = bal;
    }

    void deposit(double amount) {
        balance += amount;
        cout << "Deposited: " << amount << endl;
    }

    void withdraw(double amount) {
        if (amount <= balance) {
            balance -= amount;
            cout << "Withdrawn: " << amount << endl;
        } else {
            cout << "Insufficient balance!" << endl;
        }
    }

    void displayBalance() {
        cout << "Account Number: " << accountNumber << ", Balance: " << balance << endl;
    }
};

int main() {
    BankAccount acc1;
    acc1.openAccount(1001, 5000);
    acc1.deposit(2000);
    acc1.withdraw(1500);
    acc1.displayBalance();
    return 0;
}
#include <iostream>
using namespace std;

class Book {
    string title, author;
    float price;

public:
    void input() {
        cout << "Enter Title, Author, and Price: ";
        cin >> title >> author >> price;
    }

    void display() {
        cout << "Title: " << title << ", Author: " << author << ", Price: " << price << endl;
    }

    float getPrice() {
        return price;
    }
};

int main() {
    Book b[5];
    cout << "Enter details for 5 books:\n";
    for (int i = 0; i < 5; i++) {
        b[i].input();
    }

    int maxIndex = 0;
    for (int i = 1; i < 5; i++) {
        if (b[i].getPrice() > b[maxIndex].getPrice())
            maxIndex = i;
    }

    cout << "\nBook with Highest Price:\n";
    b[maxIndex].display();
    return 0;
}

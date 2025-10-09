#include <iostream>
#include <string>
#include <vector>
#include <iomanip>

using namespace std;

// ItemType helps us manage pointer-to-object relationships without virtual functions.
enum class ItemType {
    BASE,
    ELECTRONICS,
    GROCERIES
};

// ----------------------
// Base Class: Item
// ----------------------
class Item {
private:
    string name;
    int id;
    float price;

protected:
    int quantity;
    ItemType type; // store the actual runtime type (set by derived classes)

public:
    // Parameterized constructor
    Item(const string& name_, int id_, float price_, int quantity_)
        : name(name_), id(id_), price(price_), quantity(quantity_), type(ItemType::BASE) {
    }

    // Display base item details
    void display() const {
        cout << left << setw(15) << name
             << setw(8) << id
             << setw(10) << fixed << setprecision(2) << price
             << setw(10) << quantity;
    }

    // Return total value: price * quantity
    float getTotalValue() const {
        return price * quantity;
    }

    // Accessors
    string getName() const { return name; }
    int getId() const { return id; }
    float getPrice() const { return price; }
    ItemType getType() const { return type; }

    // Destructor (non-virtual by requirement)
    ~Item() {
        cout << "Destroying Item (id=" << id << ", name=\"" << name << "\")\n";
    }
};

// ----------------------
// Derived Class: Electronics
// ----------------------
class Electronics : public Item {
private:
    int warrantyMonths; // additional member

public:
    Electronics(const string& name_, int id_, float price_, int quantity_, int warrantyMonths_)
        : Item(name_, id_, price_, quantity_), warrantyMonths(warrantyMonths_) {
        // mark derived type
        // Access protected member 'type' from base class
        type = ItemType::ELECTRONICS;
    }

    void display() const {
        // Call base display for common fields
        Item::display();
        cout << setw(15) << warrantyMonths << endl;
    }

    int getWarranty() const { return warrantyMonths; }

    ~Electronics() {
        cout << "Destroying Electronics specific resources (id=" << getId() << ")\n";
    }
};

// ----------------------
// Derived Class: Groceries
// ----------------------
class Groceries : public Item {
private:
    string expiryDate; // example: "2025-12-31"

public:
    Groceries(const string& name_, int id_, float price_, int quantity_, const string& expiryDate_)
        : Item(name_, id_, price_, quantity_), expiryDate(expiryDate_) {
        type = ItemType::GROCERIES;
    }

    void display() const {
        Item::display();
        cout << setw(15) << expiryDate << endl;
    }

    string getExpiry() const { return expiryDate; }

    ~Groceries() {
        cout << "Destroying Groceries specific resources (id=" << getId() << ")\n";
    }
};

// ----------------------
// Helper: print header
// ----------------------
void printInventoryHeader() {
    cout << left << setw(15) << "Name" << setw(8) << "ID" << setw(10) << "Price" << setw(10) << "Qty";
    cout << setw(15) << "Extra" << endl;
    cout << string(58, '-') << endl;
}

// ----------------------
// Main demo
// ----------------------
int main() {
    // We'll keep pointers to base class but store runtime type in each object.
    vector<Item*> items;

    // Dynamically allocate different derived objects
    items.push_back(new Electronics("SmartPhone", 101, 19999.00f, 5, 24));    // warranty 24 months
    items.push_back(new Groceries("Rice", 201, 59.50f, 50, "2026-01-15"));    // expiry
    items.push_back(new Electronics("Laptop", 102, 55999.99f, 2, 12));
    items.push_back(new Groceries("Milk", 202, 45.00f, 30, "2025-10-20"));

    // Display inventory
    cout << "\nCurrent Inventory:\n";
    printInventoryHeader();
    for (const Item* it : items) {
        if (it->getType() == ItemType::ELECTRONICS) {
            // safe because we know actual type via stored enum
            const Electronics* e = static_cast<const Electronics*>(it);
            e->display();
        } else if (it->getType() == ItemType::GROCERIES) {
            const Groceries* g = static_cast<const Groceries*>(it);
            g->display();
        } else {
            // base-only item
            it->display();
            cout << endl;
        }
    }

    // Compute and print total inventory value
    float grandTotal = 0.0f;
    for (const Item* it : items) {
        grandTotal += it->getTotalValue();
    }
    cout << "\nGrand Total Value of Inventory: INR " << fixed << setprecision(2) << grandTotal << "\n";

    // Proper cleanup: delete via the actual derived type pointer.
    // IMPORTANT: since base destructor is NOT virtual, do NOT delete using 'delete items[i]' when
    // items[i] is typed Item* and actually points to a derived object. We instead cast to derived
    // pointer type and delete via that pointer.
    cout << "\nCleaning up dynamically allocated objects:\n";
    for (Item* it : items) {
        ItemType t = it->getType();
        if (t == ItemType::ELECTRONICS) {
            Electronics* e = static_cast<Electronics*>(it);
            delete e; // deletes derived then base destructor
        } else if (t == ItemType::GROCERIES) {
            Groceries* g = static_cast<Groceries*>(it);
            delete g;
        } else {
            // If there were plain Item objects allocated directly, we'd delete them like this:
            delete it;
        }
    }

    items.clear();
    cout << "All objects cleaned up.\n";

    return 0;
}

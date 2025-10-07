#include <string>
#include <iostream>
using namespace std;
/**
 * Counts the number of vowels in a given string.
 *
 * @param str The string to count the vowels from.
 * @return The number of vowels in the string.
 */
int count_vowels(const string& str) {
    int count = 0;
    for (char c : str) {
        switch (c) {
            case 'a':
            case 'e':
            case 'i':
            case 'o':
            case 'u':
                count++;
                break;
            default:
                break;
        }
    }
    return count;
}

/**
 * The main function of the program.
 *
 * Prompts the user to enter a string, then uses the count_vowels function to count the number of vowels in the string.
 *
 * @return 0 if the program runs successfully.
 */
int main() {
    string str;
    cout << "Enter a string: ";
    cin >> str;
    int count = count_vowels(str);
    cout << "Number of vowels: " << count << endl;
    return 0;
}

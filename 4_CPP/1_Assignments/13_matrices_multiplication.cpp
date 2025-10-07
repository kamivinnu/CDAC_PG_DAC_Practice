#include <iostream>
#include <cstdlib>   // for rand() and srand()
#include <ctime>     // for time()
using namespace std;

/**
 * Multiplies two matrices.
 *
 * @param m1 The first matrix.
 * @param m2 The second matrix.
 * @return The product of the two matrices.
 */
int** multiply_matrices(int** m1, int rows1, int cols1, int** m2, int rows2, int cols2) {
    if (cols1 != rows2) {
        throw invalid_argument("The number of columns in the first matrix must match the number of rows in the second matrix.");
    }

    // Allocate memory for result matrix
    int** result = new int*[rows1];
    for (int i = 0; i < rows1; i++) {
        result[i] = new int[cols2];
        for (int j = 0; j < cols2; j++) {
            result[i][j] = 0; // initialize to 0
        }
    }

    // Matrix multiplication
    for (int i = 0; i < rows1; i++) {
        for (int j = 0; j < cols2; j++) {
            for (int k = 0; k < cols1; k++) {
                result[i][j] += m1[i][k] * m2[k][j];
            }
        }
    }

    return result;
}

// Utility function to print a matrix
void print_matrix(int** matrix, int rows, int cols, const string& name) {
    cout << "\n" << name << " (" << rows << "x" << cols << "):\n";
    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < cols; j++) {
            cout << matrix[i][j] << "\t";
        }
        cout << endl;
    }
}

int main() {
    srand(time(0)); // Seed random number generator

    int rows1, cols1, rows2, cols2;

    cout << "Enter number of rows and columns for the first matrix: ";
    cin >> rows1 >> cols1;

    cout << "Enter number of rows and columns for the second matrix: ";
    cin >> rows2 >> cols2;

    if (cols1 != rows2) {
        cout << "Matrix multiplication not possible! Columns of first must equal rows of second.\n";
        return 1;
    }

    // Allocate and fill first matrix with random values
    int** m1 = new int*[rows1];
    for (int i = 0; i < rows1; i++) {
        m1[i] = new int[cols1];
        for (int j = 0; j < cols1; j++) {
            m1[i][j] = rand() % 10; // random values between 0–9
        }
    }

    // Allocate and fill second matrix with random values
    int** m2 = new int*[rows2];
    for (int i = 0; i < rows2; i++) {
        m2[i] = new int[cols2];
        for (int j = 0; j < cols2; j++) {
            m2[i][j] = rand() % 10;
        }
    }

    // Display input matrices
    print_matrix(m1, rows1, cols1, "Matrix 1");
    print_matrix(m2, rows2, cols2, "Matrix 2");

    // Multiply matrices
    int** result = multiply_matrices(m1, rows1, cols1, m2, rows2, cols2);

    // Display result
    print_matrix(result, rows1, cols2, "Resultant Matrix (M1 x M2)");

    // Free allocated memory
    for (int i = 0; i < rows1; i++) delete[] m1[i];
    delete[] m1;

    for (int i = 0; i < rows2; i++) delete[] m2[i];
    delete[] m2;

    for (int i = 0; i < rows1; i++) delete[] result[i];
    delete[] result;

    return 0;
}

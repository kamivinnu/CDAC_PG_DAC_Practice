class _12MatrixDaignolSum {
	public static void main(String[] args) {
		int[][] myMatrix = {
            {1, 2, 3},
            {4, 5, 6},
            {7, 8, 9}
        };

        System.out.println("The matrix is:");
        for (int i = 0; i < myMatrix.length; i++) {
            for (int j = 0; j < myMatrix[i].length; j++) {
                System.out.print(myMatrix[i][j] + " ");
            }
            System.out.println();
        }

        int principalDiagonalSum = 0;
        int secondaryDiagonalSum = 0;
        int matrixSize = myMatrix.length; // Assuming a square matrix

        for (int i = 0; i < matrixSize; i++) {
            // Sum of principal diagonal elements
            principalDiagonalSum += myMatrix[i][i];

            // Sum of secondary diagonal elements
            secondaryDiagonalSum += myMatrix[i][matrixSize - 1 - i];
        }

        System.out.println("Sum of Principal Diagonal elements: " + principalDiagonalSum);
        System.out.println("Sum of Secondary Diagonal elements: " + secondaryDiagonalSum);
    }
	}

class _10MatrixAddition {
	public static void main(String[] args) {
		// Define two matrices
        int[][] matrixA = {
            {1, 2, 3},
            {4, 5, 6},
            {7, 8, 9}
        };

        int[][] matrixB = {
            {9, 8, 7},
            {6, 5, 4},
            {3, 2, 1}
        };

        // Get the dimensions of the matrices
        int rows = matrixA.length;
        int cols = matrixA[0].length;

        // Check if matrices can be added (same dimensions)
        if (rows != matrixB.length || cols != matrixB[0].length) {
            System.out.println("Matrices cannot be added. Dimensions mismatch.");
            return;
        }

        // Create a result matrix to store the sum
        int[][] sumMatrix = new int[rows][cols];

        // Perform matrix addition
        for (int i = 0; i < rows; i++) {
            for (int j = 0; j < cols; j++) {
                sumMatrix[i][j] = matrixA[i][j] + matrixB[i][j];
            }
        }

        for (int i = 0; i < sumMatrix.length; i++) {
            for (int j = 0; j < sumMatrix[0].length; j++) {
                System.out.print(sumMatrix[i][j] + " ");
            }
            System.out.println();
        }
	}
}
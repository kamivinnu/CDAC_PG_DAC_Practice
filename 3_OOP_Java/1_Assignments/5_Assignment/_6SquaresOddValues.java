class _6SquaresOddValues {
	// Sum of squares of Odd Index Values
	public static void main(String[] args) {
		int[] arr = new int[10];

		for(int i=0; i<arr.length; i++)
			arr[i] = 1 + (int) (Math.random()*100);

		// original array
		for(int x:arr)
			System.out.print(x + " ");
		System.out.println();

		long sum = 0;
		for(int i=1; i<arr.length; i++){
			if (i % 2 !=0){
				sum += arr[i] * arr[i];
			}
		}
		System.out.println("Sum of squares of Odd Index Values: " + sum);
}
}
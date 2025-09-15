class _7FirstSecondHalfSum {
	public static void main(String[] args) {
		int[] arr = new int[10];

		for(int i=0; i<arr.length; i++)
			arr[i] = 1 + (int) (Math.random()*100);

		// original array
		for(int x:arr)
			System.out.print(x + " ");
		System.out.println();

		int first = 0;
		int second = 0;

		for(int i=0; i<arr.length; i++){
			if (i <= (arr.length/2 - 1))
				first += arr[i];
			else 
				second += arr[i];
		}

		System.out.println("Sum of first half: " + first);
		System.out.println("Sum of second half: " + second);
}
}
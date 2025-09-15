class _4ReverseArray {
	public static void main(String[] args) {
		int[] arr = new int[10];

		for(int i=0; i<arr.length; i++)
			arr[i] = 1 + (int) (Math.random()*100);

		// original array
		for(int x:arr)
			System.out.print(x + " ");
		System.out.println();

		int[] reversedArr = new int[arr.length];

		for(int i=0; i<arr.length; i++)
			reversedArr[i] = arr[arr.length - 1 - i];

		// reversed array
		System.out.println("Reversed Array: ");
		for(int x:reversedArr)
			System.out.print(x+ " ");
	}
}
class _2MinMax {
	public static void main(String[] args) {
		int[] arr = new int[10];
		for(int i=0; i<arr.length; i++)
			arr[i] = 1 + (int) (Math.random()*100);

		for(int i:arr)
			System.out.print(i + " ");
		System.out.println();

		int min = arr[0];
		int max = arr[0];

		for(int i=0; i<arr.length; i++) {
			if (arr[i] < min)
				min = arr[i];
			if (arr[i] > max)
				max = arr[i];
		}
		System.out.println("Max = "+max+" Min = "+min);
	}
}
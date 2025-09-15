class _1SumAvg {
	public static void main(String[] args) {
		int[] arr = new int[10];
		for(int i=0; i<arr.length; i++)
			arr[i] = 1 + (int) (Math.random()*100);
		for(int i:arr)
			System.out.print(i + " ");
		// sum
		int sum = 0;
		for(int x:arr)
			sum += x;
		System.out.println();

		// avg
		double avg = (double) sum/arr.length;
		System.out.println("Sum = " + sum);
		System.out.println("Avg = " + avg);
	}
}
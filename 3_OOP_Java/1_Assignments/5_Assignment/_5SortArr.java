import java.util.Arrays;
class _5SortArr {
	public static void main(String[] args) {
		int[] arr = new int[10];

		for(int i=0; i<arr.length; i++)
			arr[i] = 1 + (int) (Math.random()*100);

		// original array
		for(int x:arr)
			System.out.print(x + " ");
		System.out.println();

		Arrays.sort(arr);

		for(int i:arr)
			System.out.print(i + " ");
	}
}
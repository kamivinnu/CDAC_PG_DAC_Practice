import java.util.Arrays;
import java.util.Scanner;
class _8Nth {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int[] arr = new int[10];

		for(int i=0; i<arr.length; i++)
			arr[i] = 1 + (int) (Math.random()*100);

		// original array
		for(int x:arr)
			System.out.print(x + " ");
		System.out.println();

		Arrays.sort(arr);

		// sorted array
		for(int i:arr)
			System.out.print(i + " ");

		System.out.println();

		System.out.print("Enter to find the nth largest and smallest values: ");
		int n = sc.nextInt();

		if (n <= 0 || n > arr.length){
			System.out.println("Out of range");
			return;
		}

		int nthsmallest = arr[n-1];
		int nthlargest = arr[arr.length - n];

		System.out.println(n+"th smallest element is "+nthsmallest);
		System.out.println(n+"th largest element is "+nthlargest);
	}
}
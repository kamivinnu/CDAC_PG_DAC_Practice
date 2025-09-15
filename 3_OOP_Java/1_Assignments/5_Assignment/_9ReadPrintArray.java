import java.util.Scanner;
class _9ReadPrintArray {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);

		// 1. Reading array elements from user input
		System.out.print("Enter the size of the array: ");
		int size = sc.nextInt();

		int[] userArr = new int[size];

		System.out.println("Enter " + size + " Integer Elements: ");
		for(int i=0; i<size; i++){
			System.out.print("Element " + (i + 1) + " : ");
			userArr[i] = sc.nextInt();
		}
		System.out.println();
		// 2. printing array elements
		for(int x:userArr)
			System.out.print(x + " ");
	}
}
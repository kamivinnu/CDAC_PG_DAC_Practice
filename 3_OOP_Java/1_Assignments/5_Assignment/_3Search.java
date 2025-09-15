import java.util.Scanner;
class _3Search {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int[] arr = new int[100];
		for(int i=0; i<arr.length; i++)
			arr[i] = 1 + (int) (Math.random()*100);
		for(int i:arr)
			System.out.print(i + " ");
		System.out.println();
		System.out.print("Enter an element to search: ");
		int x = sc.nextInt();
		boolean flag = false;

		for(int i=0; i<arr.length; i++) {
			if (x == arr[i]){
				System.out.println("The Item "+x+" is found at "+i);
				flag = true;
				break;
			}
		}

		if (flag == false)
			System.out.println("The Item "+x+" is not found in the array");
	}
}
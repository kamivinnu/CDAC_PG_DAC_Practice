import java.util.Scanner;
class _15StringPalindromeLoop {
	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		System.out.print("Enter a String: ");
		String str = scanner.nextLine();
		str = str.toLowerCase();

		int left = 0, right = str.length() - 1;
		boolean isPalindrome = true;
		// two pointer method
		while (left < right) {
			if (str.charAt(left) != str.charAt(right)){
				isPalindrome = false;
				break;
			}
			left++;
			right--;
		}

		if(isPalindrome) {
			System.out.println(str + " is a String Palindrome");
		}
		else {
			System.out.println(str + " is not a String Palindrome");
		}
	}
}
import java.util.Scanner;
class _15StringPalindrome {

	static boolean isPalindrome(String str, int left, int right) {
		if (left >= right) {
			return true;
		}

		if (str.charAt(left) != str.charAt(right)) {
			return false;
		}
		return isPalindrome(str, left+1, right-1);
	}

	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		System.out.print("Enter a String: ");
		String str = scanner.nextLine();
		str = str.toLowerCase();

		if(isPalindrome(str, 0, str.length()-1)) {
			System.out.println(str + " is a String Palindrome");
		}
		else {
			System.out.println(str + " is not a String Palindrome");
		}
	}
}
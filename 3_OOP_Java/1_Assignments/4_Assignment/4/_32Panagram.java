import java.util.Scanner;
class _32Panagram {
	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		System.out.println("Enter a String: ");
		String str = scanner.nextLine().toLowerCase();
		String alphabet = "abcdefghijklmnopqrstuvwxyz";

		int count = 0;

		for (int i = 0; i<26; i++) {
			if (str.indexOf(alphabet.charAt(i)) != -1) {
				count++;
			}
		}

		if (count == 26)
			System.out.println("Given String is a Panagram");
		else
			System.out.println("Not a Panagram");
	}
}
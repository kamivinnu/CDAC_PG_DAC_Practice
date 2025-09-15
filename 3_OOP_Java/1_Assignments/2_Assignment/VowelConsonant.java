import java.util.Scanner;
class VowelConsonant {
	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		System.out.print("Enter a Character: ");
		char ch = scanner.next().toLowerCase().charAt(0);
		/*if (args.length != 1){
			System.out.println("VowelConsonant");
			return;
		}
		char ch = args[0].toLowerCase().charAt(0);*/

		if (!Character.isLetter(ch)){
			System.out.println("'"+ch+"' not an alphabet");
			return;
		}

		if (ch=='a'||ch=='e'||ch=='i'||ch=='o'||ch=='u')
			System.out.println("'"+ch+"' is a Vowel");
		else
			System.out.println("'"+ch+"' is a Consonant");
	}
}
import java.util.Scanner;
class Calculator {
	public static void main(String[] args) {
		int a = Integer.parseInt(args[0]);
		int b = Integer.parseInt(args[1]);
		int c;

		Scanner scanner = new Scanner(System.in);
		System.out.print("Enter an Operation: ");
		char ch = scanner.next().charAt(0);
		
		switch (ch){
		case '*':
			c = a * b;
			System.out.println(c);
			break;
		case '+':
			c = a + b;
			System.out.println(c);
			break;
		case '/':
			c = a / b;
			System.out.println(c);
			break;
		case '-':
			c = a - b;
			System.out.println(c);
			break;
		}
		
	}
}
package _1operators;

public class Division {

	public static void main(String[] args) {
		// compile ok -- run time (Arithmetic Exception)
//		System.out.println(10/0);
		
		// compile ok -- run time (Arithmetic Exception)
//		System.out.println(10 % 0);
		
		System.out.println(10.0 % 0); // NaN
		
		System.out.println(10.0 / 0); // Infinity
		
		System.out.println(-10.0 / 0); // -Infinity
		
//		System.out.println(0 / 0); // (Arithmetic Exception)
		
		System.out.println(0.0 / 0); // NaN
		
		System.out.println(-0.0 / 0); // NaN

	}

}
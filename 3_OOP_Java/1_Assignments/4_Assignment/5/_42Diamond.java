class _42Diamond {
	public static void main(String[] args) {

		int n=3;
		// upper
		for(int i=1; i<=n; i++) {
			for(int j=i; j<n; j++) System.out.print(" ");
			for(int j=1; j<=i; j++) System.out.print("* ");
			System.out.println();
		}
		// lower
		for(int i=n-1; i>=1; i--) {
			for(int j=i; j<n; j++) System.out.print(" ");
			for(int j=1; j<=i; j++) System.out.print("* ");
			System.out.println();
		}
	}
}
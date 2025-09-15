class _5Prime {
	public static void main(String[] args) {
		// generate random number 1 to 1000
		int n = 1 + (int) (Math.random() * 1000);
		int count = 0, i;

		for(i=1; i<=n/2; i++) {
			if (n%i == 0){
				count++;
				if (count > 1)
					break;
			}
		}
		System.out.println("No of iterations = " + (i-1));
		if (count == 1)
			System.out.println(n + " is a Prime Number");
		else
			System.out.println(n + " is not a Prime Number");
	}
}
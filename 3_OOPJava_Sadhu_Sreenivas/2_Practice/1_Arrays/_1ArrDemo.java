class _1ArrDemo {
	public static void main(String[] args) {
		// decleration & defining with 10 elements
		int[] anArr = new int[10]; // int array
		String[] cities = new String[5]; // str array
		String[] newPlaces = {"HYD", "Chennai", "Selam"};

		System.out.println(anArr.length);
		System.out.println(cities.length);
		System.out.println(newPlaces.length);

		// error

		int primes[]; //ok
		int[] primes; // ok

		int primes[100]; // CE error

		int primes[10] = new int[10]; // CE error
	}
}

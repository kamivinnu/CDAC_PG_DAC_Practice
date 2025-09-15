class _2ArrDemo {
	public static void main(String[] args) {
		int[] arr = new int[30];
		String[] cities = {"Hyderabad", "Pune", "Charminar"};

		System.out.println(arr.length); // 30
		System.out.println(cities.length); // 3

		// reading an array
		for(int i=0; i<arr.length; i++) {
			arr[i] = 1 + (int) (Math.random() * 10);
			System.out.print(arr[i] + " ");
		}
		System.out.println();
		// for each
		for(String city:cities)
			System.out.print(city + " ");
	}
}

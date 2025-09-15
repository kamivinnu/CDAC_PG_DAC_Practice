class _30SumCubes {
	public static void main(String[] args) {
		long total = 0;
		for (int i=1; i<=10; i++) {
			total += Math.pow(i, 3);
		}
		System.out.println("Sum of 1 to 10 cubes = " + total);
	}
}
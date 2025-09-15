class TrafficLight {
	public static void main(String[] args) {
		char ch = args[0].toUpperCase().charAt(0);

		if ((ch != 'R') && (ch != 'Y') && (ch != 'G')){
			System.out.println("Not a TrafficLight Color");
			return;
		}

		switch (ch) {
			case 'R': System.out.println("Stop"); break;
			case 'Y': System.out.println("Ready"); break;
			case 'G': System.out.println("Go"); break;
		}
	}
}
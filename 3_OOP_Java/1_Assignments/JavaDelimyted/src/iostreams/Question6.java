package iostreams;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;

public class Question6 {
	
	public void findUniqueWords () throws FileNotFoundException {
		Scanner sc = new Scanner(new File("V:/CDAC/CDAC_PG_DAC_Practice/3_OOP_Java/1_Assignments/JavaDelimyted/src/iostreams/Question6.java"));
		
		String[] uniqueWords = new String[1000];
		
		int uniqueCount = 0;
		
		sc.useDelimiter("[^a-zA-Z0-9]");
		
		while (sc.hasNext()) {
			System.out.println(sc.next());
		}
	}

	public static void main(String[] args) {
		

	}

}

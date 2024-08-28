package d0823;

import java.util.Random;

public class ArrayTest4 {
	public static void main(String[] args) {
		
		int[] lotto = new int[7];
		Random r = new Random();
		
		for(int i=0; i<7; i++) {
	
			int random = r.nextInt(7)+1;
			
			for(int j=0; j<i; j++) {
				if(lotto[i]==random) {
					random = -1;
					break;
				}
			}
			
			
			System.out.println(lotto[i]);
		}
	}
}

package d0823;

import java.util.Random;
import java.util.Scanner;

public class FindNum {
	public static void main(String[] args) {
		Random r = new Random();
		int rNum=r.nextInt(5)+1;
		
		Scanner s = new Scanner(System.in);
		
		while(true) {
			System.out.print("숫자 입력: ");
			int num = s.nextInt();
			
			if(num==rNum) {
				System.out.println("똑같당");
				break;
			}else {
				System.out.println("틀렸네");
			}
			
		}
	}
}

package d0823;

import java.util.Random;
import java.util.Scanner;

public class UpAndDown {
	public static void main(String[] args) {
		Random r = new Random();
		Scanner s = new Scanner(System.in);
		
		int rNum = r. nextInt(100)+1;
		
		for(;;) {
			System.out.print("숫자입력: ");
			String sNum = s.nextLine();
			int num = Integer.parseInt(sNum);
			
			if(rNum>num) {
				System.out.println("Up");
			}else if(rNum<num) {
				System.out.println("Down");
			}else {
				System.out.println("맞췄다!");
				break;
			}
		}
	}
}

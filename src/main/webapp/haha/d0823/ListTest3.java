package d0823;

import java.util.ArrayList;
import java.util.List;

public class ListTest3 {
	public static void main(String[] args) {
		List<Integer> nums = new ArrayList<Integer>();
		nums.add(3);
		nums.add(13);
		nums.add(31);
		nums.add(33);
		nums.add(15);
		
//		for(int i = 0; i<nums.size(); i++) {
//			if(nums.get(i)==33) {
//				System.out.println(i);
//				break;
//			}
//		}
		System.out.println(nums.indexOf(33));
	}
}

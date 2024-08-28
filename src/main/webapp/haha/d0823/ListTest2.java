package d0823;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class ListTest2 {
	public static void main(String[] args) {
		List<Integer> nums = new ArrayList<Integer>();
		nums.add(10);
		nums.add(5);
		nums.add(7);
		nums.add(1);
		nums.add(8);
		System.out.println(nums);
		Collections.sort(nums);
		System.out.println(nums);
	}
}

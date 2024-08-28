package d0823;

public class ArrayTest2 {
	
	public static void main(String[] args) {
		int[] nums = new int[3];
		nums[0] = 10;
		nums[1] = 24;
		nums[2] = 38;
		
		int[] tmps = nums;
		nums = new int[4];
		
		nums[0] = tmps[0];
		nums[1] = tmps[1];
		nums[2] = tmps[2];
	
		for(int i = 0; i<nums.length; i++) {
			System.out.println(nums[i]);
		}
	
	}
}

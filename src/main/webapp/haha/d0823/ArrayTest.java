package d0823;

public class ArrayTest {

	public static void main(String[] args) {
		int[] nums = new int[7];
		
		for(int i = 0 ; i<nums.length ; i++) {
			nums[i]=i+1;
		}
		
		for(int i = 0 ; i<nums.length ; i++) {
			System.out.println(nums[i]);
		}
		
	}
}

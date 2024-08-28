package d0822;

public class MethodTest {
	
	public static void main(String[] args) {
		int i = test1()+1;
		System.out.println(i);
		test();
	}
	
	static void test() {
		System.out.println("1");
	}
	
	static int test1() {
		return 1;
	}
}

package d0822;

public class StaticTest {
	static int age = 10;
	String name = " 홍길동";
	final int EXAM_TEST = 10;
	
	public static void main(String[] args) {
		StaticTest st = new StaticTest();
		st.age=20;
		
		StaticTest st2 = new StaticTest();
		System.out.println(st2.age);
	}
}

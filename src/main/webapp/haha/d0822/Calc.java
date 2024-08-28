package d0822;

public class Calc {
	
	static void add(int n1, int n2) {
		System.out.println(n1+n2);
	}
	
	static void minus(int n1, int n2) {
		System.out.println(n1-n2);
	}
	
	static void multiple(int n1, int n2) {
		System.out.println(n1*n2);
	}
	
	static void division(int n1, int n2) {
		System.out.println(n1/n2);
	}
	
	public static void main(String[] args) {
		add(1,2);
		minus(3,4);
		multiple(5, 5);
		division(5, 7);
		
	}

}

package d0822;

public class Access {
	public int i = 1;
	public int i2 = 1;
	
	public static void main(String[] args) {
		
		Access a = new Access();
		System.out.println(a.i);
		System.out.println(a.i2);
		
//		Access a1 = new Access();
//		System.out.println(a1.i);
//		System.out.println(a1.i2);
		
		Access a1 =a;
		
		a.i=2;
		
		System.out.println(a1.i);
		
	}
}

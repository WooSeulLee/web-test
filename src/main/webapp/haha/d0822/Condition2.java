package d0822;

public class Condition2 {
	public static void main(String[] args) {
		String str = "1";
		
		String str1 = "1";
		
		String str2 = new String("1");
		
		System.out.println(str==str1);
		
		System.out.println(str1==str2); //new를 사용해서 주소값이 다름
		
		System.out.println(str1.equals(str2));
		
		if(str.equals(str1)) {
			System.out.println("str, str1 같음");
		}else if(str1.equals(str2)) {
			System.out.println("str1, str2 같음");
		}else if(str.equals(str2)) {
			System.out.println("str, str2 같음");
		}else {
			System.out.println("false");
		}
		
	}
}

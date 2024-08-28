package d0823;

public class ArrayTest3 {
	public static void main(String[] args) {
		String[] str = new String[5];
		
//		str[0] = "10";
//		str[1] = "20";
//		str[2] = "30";
//		str[4] = "40";
		
		for(int i =0; i< str.length; i++) {
			str[i]= (i+1)+"0"; 
			System.out.println(str[i]);
		}
	}
}

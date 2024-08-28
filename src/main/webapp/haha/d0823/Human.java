package d0823;

public class Human {
	
	String name;
	int age;
	String gender;
	
	public Human(String name, int age, String gender) {
		this.name=name;
		this.age=age;
		this.gender=gender;
	}
	
	public String toString() {
		return "이름:" + name + " 나이:"+age+ " 성별:"+gender;
	}
	public static void main(String[] args) {
		Human h = new Human("동동이",10,"여자");
		System.out.println(h.name);
		System.out.println(h.age);
		System.out.println(h.gender);
		String str = h.toString(); 
		System.out.println(h);
	}
}

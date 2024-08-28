package d0823;

import java.util.ArrayList;
import java.util.List;

public class HumanList2 {
	public static void main(String[] args) {
		List<Human> people = new ArrayList<Human>();
		
		people.add(new Human("춘식",30,"남"));
		people.add(new Human("만식",15,"남"));
		people.add(new Human("춘자",25,"여"));
		
		System.out.println(people + "\n");
		
		for(int i =0; i<people.size();i++) {
			System.out.println(people.get(i));
		}
	}
}

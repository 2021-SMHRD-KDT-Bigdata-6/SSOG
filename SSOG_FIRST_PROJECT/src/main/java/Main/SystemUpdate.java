package Main;

import Controller.Controller_Ingredient;
import Model_Ingredient.IngredientDAO;

public class SystemUpdate {

	public static void main(String[] args) {
		
		System.out.println("test");
		Controller_Ingredient conIngre = new Controller_Ingredient();
		conIngre.insertAll("��");
		System.out.println("��ȣ");
		

	}

}

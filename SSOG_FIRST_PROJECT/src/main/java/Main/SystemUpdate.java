package Main;

import Controller.Controller_Ingredient;
import Controller.Controller_food;
import Model_Food.FoodDAO;
import Model_Ingredient.IngredientDAO;

public class SystemUpdate {

	public static void main(String[] args) {
//		
////		System.out.println("test");
//		Controller_Ingredient conIngre = new Controller_Ingredient();
		Controller_food conFood = new Controller_food();
//		//conIngre.insertAll("¿õ");
////		System.out.println("¾ßÈ£");
//		conFood.updateF_index();
//		conIngre.close();
//		conFood.close();
////		
	
		System.out.println((byte)'9');
		FoodDAO dao = new FoodDAO();
		System.out.println(conFood .getImgUrl("°è¶õººÀ½¹ä"));

//48 57
		
		

	}

}

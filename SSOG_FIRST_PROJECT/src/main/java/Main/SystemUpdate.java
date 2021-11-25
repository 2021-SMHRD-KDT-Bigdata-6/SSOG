package Main;

import Controller.Controller_Ingredient;
import Controller.Controller_food;
import Model_Food.FoodDAO;
import Model_Ingredient.IngredientDAO;
import Model_Nutrition.NutritionFoodDAO;
import Model_Nutrition.NutritionFoodVO;

public class SystemUpdate {

	public static void main(String[] args) {
//		
////		System.out.println("test");
		Controller_Ingredient conIngre = new Controller_Ingredient();
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
		System.out.println("1" +conIngre.getImgUrl("°«/°«"));
		NutritionFoodDAO da1 = new NutritionFoodDAO();
		NutritionFoodVO data = da1.makeNutrition("°è¶õººÀ½¹ä");
		System.out.println("ÇÁ·ÎÆ¾:" + data.getProtein() + "  Åº¼öÈ­¹°:" +data.getCarbohydrate() + 
				"  Áö¹æ:" +data.getFat() + " ¹Ì³×¶ö:" + data.getMeneral()  + " ºñÅ¸¹Î:"+ data.getVitamin() + " Ä®·Î¸®:" + data.getCalory());

				
//				private double protein;
//		private double carbohydrate;
//		private double fat;
//		private double meneral;
//		private double vitamin;
//		private double calory;
//		

	}

}

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
//		//conIngre.insertAll("��");
////		System.out.println("��ȣ");
//		conFood.updateF_index();
//		conIngre.close();
//		conFood.close();
////		
	
		System.out.println((byte)'9');
		FoodDAO dao = new FoodDAO();
		System.out.println(conFood .getImgUrl("���������"));

//48 57
		System.out.println("1" +conIngre.getImgUrl("��/��"));
		NutritionFoodDAO da1 = new NutritionFoodDAO();
		NutritionFoodVO data = da1.makeNutrition("���������");
		System.out.println("����ƾ:" + data.getProtein() + "  ź��ȭ��:" +data.getCarbohydrate() + 
				"  ����:" +data.getFat() + " �̳׶�:" + data.getMeneral()  + " ��Ÿ��:"+ data.getVitamin() + " Į�θ�:" + data.getCalory());

				
//				private double protein;
//		private double carbohydrate;
//		private double fat;
//		private double meneral;
//		private double vitamin;
//		private double calory;
//		

	}

}

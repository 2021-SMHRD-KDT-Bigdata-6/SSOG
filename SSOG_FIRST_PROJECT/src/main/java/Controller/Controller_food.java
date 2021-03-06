package Controller;

import java.util.ArrayList;

import Model_Food.FoodDAO;
import Model_Nutrition.NutritionFoodDAO;
import Model_Nutrition.NutritionFoodVO;
import Model_Recipe.RecipeDAO;
import Model_Recipe.RecipeVO;

public class Controller_food {
	private FoodDAO foodDao = new FoodDAO();
	private RecipeDAO recipeDao = new RecipeDAO();
	private NutritionFoodDAO nuDao = new NutritionFoodDAO();
	public void close() {
		foodDao.close();
		recipeDao.close();
	}
	
	
	public NutritionFoodVO getNutrition(String food_name) {
		NutritionFoodVO cf = nuDao.makeNutrition (food_name);
		NutritionFoodVO result = new NutritionFoodVO(cf.getProtein()*100/65,cf.getCarbohydrate()*100/130,cf.getFat()*100/50, cf.getMeneral()*100/10, cf.getVitamin()*3000, cf.getCalory()*100/2700);
		return  result;
		
	}
//	private double protein;
//	private double carbohydrate;
//	private double fat;
//	private double meneral;
//	private double vitamin;
//	private double calory;
//	
	
	
	
	
	//f_index 도출
	public void updateF_index() {
		foodDao.createAllF_index();
	}
	//food이미지 url가져오기!
	public String getImgUrl(String food_name) {
		String url = foodDao.getUrl(food_name);
		url = url.substring(url.indexOf("webapp")+7);
		
		
		return url;
		
	}
	
	
	//food recipe 정리하기!
	public RecipeVO getRecipe(String food_name) {
		return recipeDao.getRecipe(food_name);
	// 음식이름, obj[순서별 레시피, 이미지] / 추신~
	}
	
	//food->주재료 출력
	public String getMainIngre(String food_name) {
		ArrayList<String[]> result = foodDao.getFoodMainIngre(food_name);
		String sen = "#주재료 : ";
		for(int i = 0; i<result.size(); i++) {
			sen += result.get(i)[0] +" "+result.get(i)[1];
			if(i != result.size()-1) sen += ", ";
		}
		
		return sen;
	}
	//food->부재료 출력
	public String getSubIngre(String food_name) {
		ArrayList<String[]> result = foodDao.getFoodSubIngre(food_name);
		String sen = "#부재료 : ";
		for(int i = 0; i<result.size(); i++) {
			sen += result.get(i)[0] +" "+result.get(i)[1];
			if(i != result.size()-1) sen += ", ";
		}
		
		return sen;
	}
	//top100 array형태로 출력!
	public String[] Top100() {
		return foodDao.Top100();
	}
	
	public ArrayList<String> getFoodInCategori(String categori) {
		return foodDao.getCategoriFood(categori);
		
	}
	
	public String showCategori(String food_name) {
		return foodDao.getCategoriName(food_name);
	}
	

   private void insert() {}
   private void update() {}
   private void delete() {}
   
   

}
package Controller;

import Model_Food.FoodDAO;
import Model_Recipe.RecipeDAO;
import Model_Recipe.RecipeVO;

public class Controller_food {
	private FoodDAO foodDao = new FoodDAO();
	private RecipeDAO recipeDao = new RecipeDAO();
	
	public void close() {
		foodDao.close();
		recipeDao.close();
	}
	
	//f_index 도출
	public void updateF_index() {
		foodDao.createAllF_index();
	}
	//food이미지 url가져오기!
	public String getImgUrl(String food_name) {
		String url = foodDao.getUrl(food_name);
		url = url.substring(url.indexOf("webapp")+6);
		return url;
		
	}
	//food recipe 정리하기!
	public RecipeVO getRecipe(String food_name) {
		return recipeDao.getRecipe(food_name);
	// 음식이름, obj[순서별 레시피, 이미지] / 추신~
	}
	

	public String[] Top100() {
		return foodDao.Top100();
	}
	

	private void insert() {}
	private void update() {}
	private void delete() {}
	
	

}

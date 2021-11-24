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
	
	//f_index ����
	public void updateF_index() {
		foodDao.createAllF_index();
	}
	//food�̹��� url��������!
	public String getImgUrl(String food_name) {
		String url = foodDao.getUrl(food_name);
		url = url.substring(url.indexOf("webapp")+6);
		return url;
		
	}
	//food recipe �����ϱ�!
	public RecipeVO getRecipe(String food_name) {
		return recipeDao.getRecipe(food_name);
	// �����̸�, obj[������ ������, �̹���] / �߽�~
	}
	

	public String[] Top100() {
		return foodDao.Top100();
	}
	

	private void insert() {}
	private void update() {}
	private void delete() {}
	
	

}

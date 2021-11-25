package Controller;

import java.util.ArrayList;

import Model_Ingredient.IngredientDAO;
import Model_Ingredient.IngredientVO;
import Model_Price.PriceDAO;
import Model_Price.PriceHistory;

public class Controller_Ingredient {
	private IngredientDAO ingredientDao = new IngredientDAO();
	private PriceDAO priceDao = new PriceDAO();
	
	public void close() {
		ingredientDao.close();
		priceDao.close();
	}
	
	//최초 1회 값넣기
	public void insertAll(String mb_id) {
		ingredientDao.insertTIngredient(mb_id);
	}
	
	//매일 update
	public void updateAll(String mb_id) {
		ingredientDao.updateTIngredient(mb_id);
	}
	//해당재료 이미지 가져오기
	public String showImg(String ingre_name) {
		String url = ingredientDao.getImgUrl(ingre_name);
		url = url.substring(url.indexOf("webapp")+6);
		return url;
	}
	//ingre_name 가격 역사~ 모두 조회
	public ArrayList<PriceHistory> showAllPrice(String ingre_name) {
		return priceDao.getAllPrice(ingre_name);
		
	}
	// ingre_name 현재 가격 출력
	public int showCurrentPrice(String ingre_name) {
		return priceDao.getCurrentPrice(ingre_name);
		
	}


	public IngredientVO show_ingre_data(String ingre_name) {
		return null;
		//해당음식 데이터(영양정보포함) 가져오기
	}
	

	
	
	//해당음식 db에 저장하기
	public void update(IngredientVO vo) {
	}
	public void insert(IngredientVO vo) {}
	public void delete(String ingre_name) {}
	

}

package Controller_Ingredient;

import Model_Ingredient.IngredientVO;

public class Controller_Ingredient {
	public void ma_season_index(String ingre_name) {
		//계절지수 만들기
	}
	public void ma_quality_index(String ingre_name) {
		//품질지수 만들기
	}
	public void ma_bpp_index(String ingre_name) {
		//bpp(가격)지수 만들기
		//가격 정보 가져오기 
	}
	public void ma_total_index(String ingre_name) {
		//가격,품질지수 만드릭
	}
	public void ma_standard_deri() {
		// 표쥰편차 만들기
	}
	
	
	public void show_img(String ingre_name) {
		//해당음식 이미지 가져오기
	}
	public IngredientVO show_ingre_data(String ingre_name) {
		return null;
		//해당음식 데이터(영양정보포함) 가져오기
	}
	
	public IngredientVO create() {
		return null;
		//ingredient객체 만들기
	}
	
	
	//해당음식 db에 저장하기
	public void update(IngredientVO vo) {
	}
	public void insert(IngredientVO vo) {}
	public void delete(String ingre_name) {}
	

}

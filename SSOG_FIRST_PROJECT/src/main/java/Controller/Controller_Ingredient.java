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
	
	//���� 1ȸ ���ֱ�
	public void insertAll(String mb_id) {
		ingredientDao.insertTIngredient(mb_id);
	}
	
	//���� update
	public void updateAll(String mb_id) {
		ingredientDao.updateTIngredient(mb_id);
	}
	//�ش���� �̹��� ��������
	public String showImg(String ingre_name) {
		String url = ingredientDao.getImgUrl(ingre_name);
		url = url.substring(url.indexOf("webapp")+6);
		return url;
	}
	//ingre_name ���� ����~ ��� ��ȸ
	public ArrayList<PriceHistory> showAllPrice(String ingre_name) {
		return priceDao.getAllPrice(ingre_name);
		
	}
	// ingre_name ���� ���� ���
	public int showCurrentPrice(String ingre_name) {
		return priceDao.getCurrentPrice(ingre_name);
		
	}


	public IngredientVO show_ingre_data(String ingre_name) {
		return null;
		//�ش����� ������(������������) ��������
	}
	

	
	
	//�ش����� db�� �����ϱ�
	public void update(IngredientVO vo) {
	}
	public void insert(IngredientVO vo) {}
	public void delete(String ingre_name) {}
	

}

package Model_Nutrition;

import java.awt.image.SampleModel;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class NutritionFoodDAO {
	
	private Connection conn = null;
	private PreparedStatement psmt = null;
	private ResultSet rs = null;
	
	public void get_conn(){
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			
			String url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524:xe";
			String dbid = "ssog";
			String dbpw = "apfhd";
			
			conn = DriverManager.getConnection(url,dbid,dbpw);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	public void close() {
		try {
			if(rs!=null) rs.close();
			//여기서 rs가 안 쓰는 함수인 경우 -> 안 닫히는 경우를 막기 위해서
			
			if(psmt!= null)psmt.close();
			if(conn!= null)conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public NutritionFoodVO makeNutrition (String food_name) {
		get_conn();
		NutritionFoodVO vo = new NutritionFoodVO(0,0,0,0,0,0);
		try {
			ArrayList<String> ingres = new ArrayList<String>();
			ArrayList<String> ingresQuan = new ArrayList<String>();
			String sql = "select ingre_name, ingre_quantity from t_foodingredient where f_name=?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, food_name);
			rs = psmt.executeQuery();
			while(rs.next()) {
				ingres.add(rs.getString(1));
				ingresQuan.add(rs.getString(2));
				System.out.println(rs.getString(1) + ": " + rs.getString(2));
			}
			
			for (int i =0; i<ingresQuan.size(); i++) {
				int index = ingresQuan.get(i).indexOf('g');
				if(index !=-1) {
					int j = 1;
					while(true) {
						if(47<(byte)ingresQuan.get(i).charAt(index-j) && (byte)ingresQuan.get(i).charAt(index-j)<58) j++;
						else break;
					}
					
					ingresQuan.set(i, ingresQuan.get(i).substring(index-j+1, index));
					
				}else {
					index = ingresQuan.get(i).indexOf("ml");
					if(index != -1) {
						int j = 1;
						while(true) {
							if(47<(byte)ingresQuan.get(i).charAt(index-j) && (byte)ingresQuan.get(i).charAt(index-j)<58) j++;
							else break;
						}
						ingresQuan.set(i, ingresQuan.get(i).substring(index-j+1, index));
						
					}else {
						ingresQuan.set(i, "0");
					}	
					
				}
				
			}
			
			for (int i =0; i<ingres.size(); i++) {
				String cho = "";
				String subquery ="select ingre_name from t_nutrition where ingre_name like ? group by ingre_name";
				psmt = conn.prepareStatement(subquery);
				psmt.setString(1,"%"+ingres.get(i)+"%");
				rs =psmt.executeQuery();
				if(rs.next()) {
					cho =rs.getString(1);
				}
				
				System.out.println(ingres.get(i)+": "+cho);
				
				sql = "select nut_name, nut_quantity, nut_standard from t_nutrition where ingre_name = ?";
				psmt = conn.prepareStatement(sql);
				psmt.setString(1, cho);
				rs = psmt.executeQuery();
				int gram =Integer.parseInt(ingresQuan.get(i));
					
				NutritionFoodVO sample = null;
				while(rs.next()) {
					System.out.println(cho + " : " + rs.getString(1) + " : " + rs.getDouble(2) +  " : " +rs.getDouble(3));
					if(rs.getString(1).equals("단백질")) {
						double g = (gram/rs.getDouble(3))*rs.getDouble(2);
						sample = new NutritionFoodVO(g,0,0,0,0,g*4);
					}
					else if(rs.getString(1).equals("탄수화물")) {
						double g = (gram/rs.getDouble(3))*rs.getDouble(2);
						sample = new NutritionFoodVO(0,g,0,0,0,g*4);
						
					}else if(rs.getString(1).equals("지방")) {
						double g = (gram/rs.getDouble(3))*rs.getDouble(2);
						sample = new NutritionFoodVO(0,0,g,0,0,g*9);
						
					}else if(rs.getString(1).indexOf("비타민") != -1) {
						double g = (gram/rs.getDouble(3))*rs.getDouble(2);
						sample = new NutritionFoodVO(0,0,0,0,g/1000,0);
						
					}else if(rs.getString(1).equals("에너지")){
					}else {
						double g = (gram/rs.getDouble(3))*rs.getDouble(2);
						sample = new NutritionFoodVO(0,0,0,g/1000,0,0);
					}
//					(double protein, double carbohydrate, double fat, double meneral, double vitamin,
//							double calory
					vo = sum(vo, sample);
					
				}
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return vo;
		
	}
	
	public NutritionFoodVO sum (NutritionFoodVO vo1, NutritionFoodVO vo2){
		return new NutritionFoodVO(vo1.getProtein()+vo2.getProtein(), vo1.getCarbohydrate()+vo2.getCarbohydrate(),
				vo1.getFat()+vo2.getFat(), vo1.getMeneral()+vo2.getMeneral(), vo1.getVitamin()+vo2.getVitamin(), vo1.getCalory()+vo2.getCalory());
	}
	
	
	
	
	public void insert() {}
	public void update() {}
	public void delete() {}

}

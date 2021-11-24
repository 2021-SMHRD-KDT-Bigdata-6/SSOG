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
	
	public void makeNutrition (String food_name) {
		get_conn();
		NutritionFoodVO vo = new NutritionFoodVO(0,0,0,0,0,0);
		try {
			ArrayList<String> ingres = new ArrayList<String>();
			ArrayList<String> ingresQuan = new ArrayList<String>();
			String sql = "select ingre_name, ingre_quantity from t_ingredient where f_name=?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, food_name);
			rs = psmt.executeQuery();
			while(rs.next()) {
				ingres.add(rs.getString(1));
				ingresQuan.add(rs.getString(2));
			}
			
			for (int i =0; i<ingresQuan.size(); i++) {
				int index = ingresQuan.get(i).indexOf('g');
				if(index !=-1) {
					int j = 1;
					while(true) {
						if(47<(byte)ingresQuan.get(i).charAt(index-j) && (byte)ingresQuan.get(i).charAt(index-j)<58) j++;
						else break;
					}
					
					ingresQuan.set(i, ingresQuan.get(i).substring(index-j+1, index+1));
					
				}else {
					index = ingresQuan.get(i).indexOf("ml");
					if(index != -1) {
						int j = 1;
						while(true) {
							if(47<(byte)ingresQuan.get(i).charAt(index-j) && (byte)ingresQuan.get(i).charAt(index-j)<58) j++;
							else break;
						}
						ingresQuan.set(i, ingresQuan.get(i).substring(index-j+1, index+2));
						
					}else {
						ingresQuan.set(i, "0");
					}	
					
				}
				
			}
			
			NutritionFoodVO vo2 = null;
			for (String i : ingres) {
				sql = "select nut_name, nut_quantity, nut_standard from t_nutrition where ingre_name = ?";
				psmt = conn.prepareStatement(sql);
				psmt.setString(1, i);
				rs = psmt.executeQuery();
				
				NutritionFoodVO sample = null;
				while(rs.next()) {
					if(rs.getString(1) == "protein") {
						sample = new NutritionFoodVO(,0,0,0,0,);
						rs.getString(0)
						
					}else if(rs.getString(1) == "car") {
						sample = new NutritionFoodVO(0,,0,0,0,);
					}else if(rs.getString(1) == "fat") {
						sample = new NutritionFoodVO(0,0,,0,0,);
					}else if(rs.getString(1) == "vitabl") {
						sample = new NutritionFoodVO(0,0,0,0,,0);
						
					}else {
						sample = new NutritionFoodVO(0,0,0,,0,0);
					}
					
					vo = sum(vo, sample);
					
				}
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	public NutritionFoodVO sum (NutritionFoodVO vo1, NutritionFoodVO vo2){
		return new NutritionFoodVO(vo1.getProtein()+vo2.getProtein(), vo1.getCarbohydrate()+vo2.getCarbohydrate(),
				vo1.getFat()+vo2.getFat(), vo1.getMeneral()+vo2.getMeneral(), vo1.getVitamin()+vo2.getVitamin(), vo1.getCalory()+vo2.getCalory());
	}
	
	
	
	
	public void insert() {}
	public void update() {}
	public void delete() {}

}

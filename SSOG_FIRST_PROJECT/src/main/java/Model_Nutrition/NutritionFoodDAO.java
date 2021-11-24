package Model_Nutrition;

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
		NutritionFoodVO vo = new NutritionFoodVO();
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
			
			for (String i : ingresQuan) {
				int index = i.indexOf("g");
				int j = 1;
				while(true) {
					if(47<(byte)i.charAt(index-j) && (byte)i.charAt(index-j)<58) j++;
					else break;
				}
				ingresQuan.
				i.charAt(index)
				
			}
			ingresQuan.p
			
			
			
			
			
			
			for (String i : ingres) {
				sql = "select nut_name, nut_quantity, nut_standard from t_nutrition where ingre_name = ?";
			
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	
	
	
	public void insert() {}
	public void update() {}
	public void delete() {}

}

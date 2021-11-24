package Model_Recipe;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class RecipeDAO {

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
			psmt.close();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	
	public RecipeVO getRecipe(String food_name) {
		RecipeVO result = null;
		get_conn();
		try {

			String sql = "select r_order, r_content, r_img, r_etc from t_recipe where f_name = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, food_name);
			ArrayList<RecipeSubVO> samples = null;
			rs.next();
			samples.add(new RecipeSubVO (rs.getString("r_content"), rs.getString("r_img")));
			String r_etc =rs.getString("r_etc");
			while(rs.next()) {
				samples.add(new RecipeSubVO (rs.getString("r_content"), rs.getString("r_img")));				
			}
			result = new RecipeVO(food_name, samples, r_etc);
			System.out.println(food_name + "레시피 가져오기!");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	

}

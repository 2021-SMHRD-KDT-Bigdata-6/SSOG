package Model_Food;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;

public class FoodDAO {
	private LocalDate now = LocalDate.now();
	private String today = now.format(DateTimeFormatter.ofPattern("yyyy.MM.dd"));
	private String Month = today.substring(5,7) + "월";

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
	
	public void createF_index(String Fname) {
		get_conn();
		double result = 1;
		try {
			ArrayList<String> ingredients = new ArrayList<String>(); 
			String sql = "select ingre_name from t_foodingredient where f_name = ? and main_sub = 'main'";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, Fname);
			rs = psmt.executeQuery();
			//우선 main재료만 구현
			while(rs.next()) {
				ingredients.add(rs.getString(1));
			}
			
			for(String i : ingredients) {
				sql = "select season_idx, quality_idx, bpp from t_ingredient where ingre_name like ?";
				psmt = conn.prepareStatement(sql);
				psmt.setString(1, "%"+i+"%");
				rs = psmt.executeQuery();
				if(rs.next() != false) {
					result *= rs.getDouble(1)*rs.getDouble(2)/rs.getDouble(3);
					System.out.println(ingredients + "가격 품질 지수 도출");
				}else {
					System.out.println(ingredients + "가격 품질 지수 x -> 1");
				}
				
			}
			
			sql = "update t_food set f_index = ?, f_date = ? where f_name = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setDouble(1, result);
			psmt.setString(2, today);
			psmt.setString(3, Fname);
			int cnt = psmt.executeUpdate();
			if(cnt >0) {
				System.out.println("====================");
				System.out.println(Fname+"가격 품질 지수 도출");
				System.out.println("====================");
			}else {
				System.out.println("====================");
				System.out.println(Fname+"가격 품질 지수 도출 실패!");
				System.out.println("====================");
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}	
	}
	
	
	
	public void createAllF_index() {
		get_conn();
		FoodDAO sample = new FoodDAO();
		try {
			String sql  = "select f_name from t_food";
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			while(rs.next()) {
				sample.createF_index(rs.getString(1));
			}
			System.out.println("F_index생성");
		} catch (Exception e) {
			e.printStackTrace();
		}
		sample.close();
		
	}
	
	public String getUrl(String fname) {
		String url = "";
		get_conn();
		try {
			String sql  = "select f_img1 from t_food where f_name = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1,fname);
			rs = psmt.executeQuery();
			if(rs.next()) {
				url = rs.getString(1);
				System.out.println("url 가져오기 성공!");
			}else {
				System.out.println("url파일이 없어요 ㅠ");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return url;
	}
	
	
	
	
	
	public String[] Top100() {
		String[] top = new String[100];
		get_conn();
		try {
			String sql = "select f_name from t_food order by f_index desc";
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			for(int i =0; i <100; i++) {
				rs.next();
				top[i]=rs.getString(1);
			} 
		
		}catch (Exception e) {
			e.printStackTrace();
		}
		return top;
	}
	
	public ArrayList<String[]> getFoodMainIngre(String food_name) {
		get_conn();
		ArrayList<String[]> main = new ArrayList<String[]>();
		try {
			String sql = "select ingre_name, ingre_quantity from t_foodingredient where f_name = ? and main_sub = 'main'";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, food_name);
			rs = psmt.executeQuery();
			String[] sample= new String[2]; 
			while(rs.next()) {
				sample[0] =rs.getString(1);
				sample[1] =rs.getString(2);
				main.add(sample);	
			}
		
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return main;
	}
	
	
	public String getCategoriName(String food_name) {
		get_conn();
		String category = "";
		try {
			String sql = "select category from t_food where f_name = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, food_name);
			rs = psmt.executeQuery();
			rs.next();
			category = rs.getString(1);
			int idx = category.indexOf(">");
			category = category.substring(idx+1);
		
		} catch (Exception e) {
			e.printStackTrace();
		}
		return category;
	}
	
	
	public ArrayList<String[]> getFoodSubIngre(String food_name) {
		get_conn();
		ArrayList<String[]> sub = new ArrayList<String[]>(); 
		try {
			
			
			String sql = "select ingre_name, ingre_quantity from t_foodingredient where f_name = ? and main_sub = 'sub'";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, food_name);
			rs = psmt.executeQuery();
			String[] sample1= new String[2]; 
			while(rs.next()) {
				sample1[0] =rs.getString(1);
				sample1[1] =rs.getString(2);
				sub.add(sample1);	
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return sub;
	}
	
	public ArrayList<String> getCategoriFood(String categori) {
		get_conn();
		ArrayList<String> result = new ArrayList<String>();
		try {
			String sql = "select f_name from t_food where f_category like ?";
			psmt =conn.prepareStatement(sql);
			psmt.setString(1, "%"+categori);
			rs = psmt.executeQuery();
			while(rs.next()) {
				result.add(rs.getString(1));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	
	
	
	


}

package Model_Ingredient;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;


public class IngredientDAO{
	private LocalDate now = LocalDate.now();
	private String today = now.format(DateTimeFormatter.ofPattern("yyyy.MM.dd")).replace(".", "-");
	private String Month = today.substring(5,7)+ "월";

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

	
	
	public void createBPP(String name) {
		get_conn();
		try {
			ArrayList<Double> prices = new ArrayList<Double>();
			String sql =  "select ingre_price, reg_date from t_price where ingre_name= ? order by reg_date";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, name);
			rs=psmt.executeQuery();
			while(rs.next()) {
				prices.add(rs.getDouble(1));
			}
			
			if(prices != null) {
			//bpp지수도출
				double Bpp = 1;
				for(int i = 1; i < prices.size(); i++) {
					Bpp *= prices.get(i)/prices.get(i-1);
				}
				String sqlInsert = "update t_ingredient set bpp =? where ingre_name = ?";
				psmt = conn.prepareStatement(sqlInsert);
				psmt.setDouble(1, Bpp);
				psmt.setString(2, name);
				int cnt = psmt.executeUpdate();
				if(cnt > 0) System.out.println("Bpp이 정상적으로 입력되었습니다.");
				else System.out.println("Bpp이 입력되지 않았습니다.");
			}else {
				System.out.println("해당 name의 값의 재료 가격 정보가 없습니다.");
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}
	}
	
	
	public double createDeviation() {
		get_conn();
		double deviation = 0;
		try {
			String sql =  "select bpp from t_ingredient";
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			ArrayList<Double> BPPS = new ArrayList<Double>();
			double sum = 0;
			while (rs.next()) {
				BPPS.add(rs.getDouble(1));
				sum += rs.getDouble(1);
			}
			int count = BPPS.size();
			double mean = sum/count;
			for (int i = 0 ; i <count; i++) {
				deviation += Math.pow(BPPS.get(i)-mean, 2);
			}
			deviation = Math.sqrt(deviation/count);
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return deviation;
	}
	
	
	public void updateAllSeasonIndex(double deviation) {
		get_conn();
		
		
		try {
			String sql = "update t_ingredient set season_idx = 1";
			psmt = conn.prepareStatement(sql);
			psmt.executeUpdate();
			
			
			
			
			sql = "select ingre_name from t_season where season_month = ? ";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, Month);
			rs = psmt.executeQuery();
			ArrayList<String> seasonIngre = new ArrayList<String>();
			while(rs.next()) {
				seasonIngre.add(rs.getString(1));
				System.out.print(rs.getString(1));
			}
			System.out.println();
			
			for (String i : seasonIngre) {
				sql = "select ingre_name from t_ingredient where ingre_name like ?";
				psmt = conn.prepareStatement(sql);
				psmt.setString(1, "%"+i+"%");
				rs = psmt.executeQuery();
				while(rs.next()) {
					sql = "update t_ingredient set season_idx =? where  ingre_name = ?";
					psmt = conn.prepareStatement(sql);
					psmt.setDouble(1, 1+deviation);
					psmt.setString(2, rs.getString(1));
					int cnt = psmt.executeUpdate();
					if(cnt == 0) System.out.println("제철 데이터가 없습니다.");
					else System.out.println("제철지수 입력 완료");
					
				}
			}
			
		}catch (Exception e) {
			e.printStackTrace();
			System.out.println("제철 데이터가 없습니다.");
		}
	}
	
	public void updateAllBPP() {
		get_conn();
		IngredientDAO sample = new IngredientDAO();
		try {
			String sql = "select ingre_name from t_ingredient";
			psmt = conn.prepareStatement(sql);
			rs =  psmt.executeQuery();
			while(rs.next()) {

				sample.createBPP(rs.getString(1));
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		sample.close();
	
	}
	
	
		
		

	
	public void insertTIngredient(String mb_id) {
		get_conn();
		IngredientDAO sample = new IngredientDAO();
		try {
			String sql = "select ingre_name from t_price where ingre_date = ?";
			psmt = conn.prepareStatement(sql);
			System.out.println(today);
			psmt.setString(1, today);
			rs = psmt.executeQuery();
			while(rs.next()) {
				sql = "insert into t_ingredient(ingre_name, reg_date, mb_id)"
						+ "values (?, ?, ?)";
				psmt = conn.prepareStatement(sql);
				psmt.setString(1, rs.getString(1));
				psmt.setString(2, today);
				psmt.setString(3,  mb_id);
				int cnt = psmt.executeUpdate();
				if(cnt >0) System.out.println(rs.getString(1)+"data업로드!");
			}
			sample.updateAllBPP();
			sample.updateAllSeasonIndex(createDeviation());
			sample.updateAllQualityIdx();
			sample.close();
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void updateAllQualityIdx() {
		get_conn();
		try {
			String sql = "update t_ingredient set  quality_idx = 1";
			psmt = conn.prepareStatement(sql);
			int cnt = psmt.executeUpdate();
			if(cnt>0) System.out.println("품질지수 도출");
			else System.out.println("품질지수 도출 실패");
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	public void updateTIngredient(String mb_id) {
		get_conn();
		IngredientDAO sample = new IngredientDAO();
		try {
			String sql = "select ingre_name from t_price";
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			while(rs.next()) {
				sql = "update t_ingredient set reg_date = ? , mb_id = ?) where ingre_name =?";
				psmt = conn.prepareStatement(sql);
				psmt.setString(1, today);
				psmt.setString(2, mb_id);
				psmt.setString(3, rs.getString(1));
			}
			sample.updateAllBPP();
			sample.updateAllSeasonIndex(createDeviation());
			//smaple.updateAllQualityIdx()
			sample.close();
		}catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
	}
	
	
	
	
	
	
	
	public void delete() {}
	public void update() {}
	public void get() {}


}

package Model_Price;
import java.lang.Math;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;


public class PriceDAO {
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
			psmt.close();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	

	
	public int getCurrentPrice(String ingre_name) {
		int result = 0;
		try {
			get_conn();
			String sql = "select ingre_price from t_price where ingre_name = ? and ingre_date=? ";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, ingre_name);
			psmt.setString(2, today);
			rs = psmt.executeQuery();
			if(rs.next() != false) {
				result = rs.getInt(1);
				System.out.println("가격 출력!");
				System.out.println(ingre_name+ ":"+ result); 
			}else System.out.println("가격정보가 없습니다.");
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		return result;

	}
	
	
	public ArrayList<PriceHistory> getAllPrice(String ingre_name) {
		ArrayList<PriceHistory> prices = new ArrayList<PriceHistory>();
		
		
		try {
			get_conn();
			String sql = "select ingre_date, ingre_price from t_price where ingre_name = ? order by ingre_date";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, ingre_name);
			rs = psmt.executeQuery();
			while(rs.next()) {
				prices.add(new PriceHistory(rs.getString(1), rs.getInt(2)));
			}
			if(prices.size() == 0 ) System.out.println("가격정보가 없습니다.");
			else {
				System.out.println(ingre_name + "의 " + prices.get(0).getIngre_date() +"부터 가격정보 출력합니다.");
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		return prices;

	}
	public void insert() {
	}
	public void update() {
		//모든 값 넣기 -> default 값 처리하기
	}
	public void delete() {}

}

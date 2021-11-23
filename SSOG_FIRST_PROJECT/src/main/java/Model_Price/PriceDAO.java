package Model_Price;
import java.lang.Math;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class PriceDAO {
	

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
			//���⼭ rs�� �� ���� �Լ��� ��� -> �� ������ ��츦 ���� ���ؼ�
			psmt.close();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	
	public void createBPP(String name) {
		try {
			ArrayList<Double> prices = new ArrayList<Double>();
			String sql =  "select ingre_price, reg_date from t_price where ingre_name= ? order by reg_date";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, name);
			rs=psmt.executeQuery();
			while(rs.next()) {
				prices.add(rs.getDouble(0));
			}
			
			if(prices != null) {
			//bpp��������
				double Bpp = 1;
				for(int i = 1; i < prices.size(); i++) {
					Bpp *= prices.get(i)/prices.get(i-1);
				}
				String sqlInsert = "update t_ingredient set bpp where ingre_name = {}";
				psmt = conn.prepareStatement(sql);
				psmt.setString(1, name);
				int cnt = psmt.executeUpdate();
				if(cnt > 0) System.out.println("Bpp�� ���������� �ԷµǾ����ϴ�.");
				else System.out.println("Bpp�� �Էµ��� �ʾҽ��ϴ�.");
			}else {
				System.out.println("�ش� name�� ���� ��� ���� ������ �����ϴ�.");
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}
	}
	
	
	public double createDeviation() {
		
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
	
	
	public void createSeasonIndex() {
		double deviation =  createDeviation();
		try {
			String sql = "update t"
			
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	
	
	
	public void get() {}
	public void insert() {
	}
	public void update() {
		//��� �� �ֱ� -> default �� ó���ϱ�
	}
	public void delete() {}

}

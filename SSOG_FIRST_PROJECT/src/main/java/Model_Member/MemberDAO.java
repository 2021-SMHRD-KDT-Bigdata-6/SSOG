package Model_Member;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class MemberDAO {
	
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
			if (rs != null) {
				rs.close();
			}
			if (psmt != null) {
				psmt.close();
			}
			if (conn != null) {
				conn.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	// �α��� ���(�޼���)
	public MemberVO login(String id, String pw) {
		MemberVO vo = null;
		try {
			get_conn();
			String sql = "select * from t_member where mb_id=? and mb_pwd=?";

			psmt = conn.prepareStatement(sql);

			psmt.setString(1, id);
			psmt.setString(2, pw);

			rs = psmt.executeQuery();

			if (rs.next()) {
				System.out.println("�α��μ���");

				vo = new MemberVO(id, pw);

			} else {
				System.out.println("�α��ν���!");
			}

		} catch (Exception e) {
			System.out.println("�α��ν���!");
			e.printStackTrace();
		} finally {
			close();
		}
		return vo;
	}


	// ȸ������ ���
	public int join(String mb_id, String mb_pwd, String mb_name, String mb_phone, String mb_addr, String mb_gender) {
		int cnt = 0;
		try { 
			get_conn();
			String sql = "insert into t_member values (?,?,?,?,?,?,sysdate,'n')";

			psmt = conn.prepareStatement(sql);

			psmt.setString(1, mb_id);
			psmt.setString(2, mb_pwd);
			psmt.setString(3, mb_name);
			psmt.setString(4, mb_phone);
			psmt.setString(5, mb_addr);
			psmt.setString(6, mb_gender);

			cnt = psmt.executeUpdate();

		} catch (Exception e) { 
			System.out.println("ȸ�����Խ���!");
			e.printStackTrace(); 
		} finally { 
			close();
		}
		return cnt;
	}
	

	// id �ߺ�üũ
	public boolean idCheck(String id) {
		boolean check = false;
		try {
			get_conn();
			String sql = "select mb_id from t_member where mb_id = ?";

			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);

			rs = psmt.executeQuery();

			if(rs.next()) { //����ڰ� �Է��� �̸����� �ִ� ��� (����� �� ���� ���)
				check = true;
			}else {			//����ڰ� �Է��� �̸����� ���� ��� (����� �� �ִ� ���)
				check = false;
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return check;
	}
	
	// ȸ������
	public int delete(String id) {
		int cnt = 0;
		try { 
			get_conn();
			String sql = "delete from t_member where id=?";

			psmt = conn.prepareStatement(sql);

			psmt.setString(1, id);

			cnt = psmt.executeUpdate();

		} catch (Exception e) { // try ���� ���� ��Ȳ�� �߻��� ���
			e.printStackTrace(); // ���ܻ�Ȳ �߻�������� ���
		} finally { // try���� ���ܻ�Ȳ�� �߻��ϴ���/���� �ʴ��� ���� ������ �������� ����
			close();
		}
		return cnt;
	}
	
	// ȸ�� ����
	public int update(String id, String pw, String name, String phone, String addr, String gender) {
		int cnt = 0;
		try {
			get_conn();

			String sql = "update t_member set mb_pwd=?, mb_name=?, mb_phone=?, mb_addr=?, mb_gender=? where mb_id=?";

			psmt = conn.prepareStatement(sql);

			psmt.setString(1, pw);
			psmt.setString(2, name);
			psmt.setString(3, phone);
			psmt.setString(4, addr);
			psmt.setString(5, gender);
			psmt.setString(6, id);

			cnt = psmt.executeUpdate();

		} catch (Exception e) {
			System.out.println("���� ����!");
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}
	
}

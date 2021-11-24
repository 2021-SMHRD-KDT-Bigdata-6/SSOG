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
	
	// 로그인 기능(메서드)
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
				System.out.println("로그인성공");

				vo = new MemberVO(id, pw);

			} else {
				System.out.println("로그인실패!");
			}

		} catch (Exception e) {
			System.out.println("로그인실패!");
			e.printStackTrace();
		} finally {
			close();
		}
		return vo;
	}


	// 회원가입 기능
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
			System.out.println("회원가입실패!");
			e.printStackTrace(); 
		} finally { 
			close();
		}
		return cnt;
	}
	

	// id 중복체크
	public boolean idCheck(String id) {
		boolean check = false;
		try {
			get_conn();
			String sql = "select mb_id from t_member where mb_id = ?";

			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);

			rs = psmt.executeQuery();

			if(rs.next()) { //사용자가 입력한 이메일이 있는 경우 (사용할 수 없는 경우)
				check = true;
			}else {			//사용자가 입력한 이메일이 없는 경우 (사용할 수 있는 경우)
				check = false;
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return check;
	}
	
	// 회원삭제
	public int delete(String id) {
		int cnt = 0;
		try { 
			get_conn();
			String sql = "delete from t_member where id=?";

			psmt = conn.prepareStatement(sql);

			psmt.setString(1, id);

			cnt = psmt.executeUpdate();

		} catch (Exception e) { // try 에서 예외 상황에 발생한 경우
			e.printStackTrace(); // 예외상황 발생순서대로 출력
		} finally { // try에서 예외상황이 발생하던지/하지 않던지 간에 무조건 마지막에 실행
			close();
		}
		return cnt;
	}
	
	// 회원 수정
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
			System.out.println("수정 실패!");
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}
	
}

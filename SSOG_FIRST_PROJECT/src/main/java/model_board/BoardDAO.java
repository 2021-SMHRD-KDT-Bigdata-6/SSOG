package model_board;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class BoardDAO {
	
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
	
	// 파일 업로드 메소드
	public int upload(String boardCate, String title, String writer, String fileName, String content) {
		int cnt = 0;
		
		try {
			get_conn();
			String sql = "insert into t_board values(t_boardnum.nextval,?, ?, ?, ?, ?, sysdate)";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, boardCate);
			psmt.setString(2, title);
			psmt.setString(3, writer);
			psmt.setString(4, fileName);
			psmt.setString(5, content);
			cnt = psmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}return cnt;
		
		
	}
	
	// 게시글 보여주는 메소드
	public ArrayList<BoardVO> showBoard(String boardCate) {
		ArrayList<BoardVO> b_list = new ArrayList<BoardVO>();
		try {
			get_conn();
			String sql = null;
			if(boardCate.equals("HappyCook")) {
				sql = "select * from t_board where boardcate='HappyCook' order by num desc"; // 최신순 정렬
			}else if(boardCate.equals("PoisonCook")){
				sql = "select * from t_board where boardcate='PoisonCook' order by num desc"; // 최신순 정렬
			}
			
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				int num = rs.getInt("num");
				boardCate = rs.getString("boardCate");
				String title = rs.getString("title");
				String writer = rs.getString("writer");
				String fileName = rs.getString("fileName");
				String content = rs.getString("content");
				String b_day = rs.getString("b_day");
				
				BoardVO vo = new BoardVO(num, boardCate, title, writer, fileName, content, b_day);
				b_list.add(vo);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}return b_list;
	}
	
	// 게시글 상세내용 보여주는 메소드
	public BoardVO showOne(String seq_num) {
		BoardVO vo = null;
		try {
			get_conn();
			String sql = "select * from t_board where num=?";
			psmt= conn.prepareStatement(sql);
			psmt.setString(1, seq_num);
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				int num = rs.getInt("num");
				String boardCate = rs.getString("boardCate");
				String title = rs.getString("title");
				String writer = rs.getString("writer");
				String fileName = rs.getString("fileName");
				String content = rs.getString("content");
				String b_day = rs.getString("b_day");
				
				vo = new BoardVO(num, boardCate, title, writer, fileName, content, b_day);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}return vo;
	}
	
	
	
	
	
}

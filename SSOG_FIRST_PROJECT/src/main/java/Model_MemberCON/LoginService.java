package Model_MemberCON;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model_Member.MemberDAO;
import Model_Member.MemberVO;


@WebServlet("/LoginService")
public class LoginService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//요청데이터 한글 인코딩
		request.setCharacterEncoding("euc-kr");
		
		//요청데이터 받아오기
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		MemberDAO dao = new MemberDAO();
		MemberVO vo = dao.login(id, pw);
		
		if(vo != null) {
			//세션객체 생성
			HttpSession session = request.getSession();
			//세션 값 설정
			session.setAttribute("member", vo);
			
			response.sendRedirect("index.jsp");
		}else {
			response.sendRedirect("index.jsp");
		}
		
		
	}

}

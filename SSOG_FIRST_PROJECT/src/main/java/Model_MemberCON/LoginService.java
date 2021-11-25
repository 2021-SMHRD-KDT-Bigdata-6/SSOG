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
		//��û������ �ѱ� ���ڵ�
		request.setCharacterEncoding("euc-kr");
		
		//��û������ �޾ƿ���
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		MemberDAO dao = new MemberDAO();
		MemberVO vo = dao.login(id, pw);
		
		if(vo != null) {
			//���ǰ�ü ����
			HttpSession session = request.getSession();
			//���� �� ����
			session.setAttribute("member", vo);
			
			response.sendRedirect("index.jsp");
		}else {
			response.sendRedirect("index.jsp");
		}
		
		
	}

}

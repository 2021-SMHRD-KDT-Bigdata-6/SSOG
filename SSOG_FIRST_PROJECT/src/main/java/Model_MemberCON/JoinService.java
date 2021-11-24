package Model_MemberCON;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model_Member.MemberDAO;


@WebServlet("/JoinService")
public class JoinService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr"); //요청데이터 한글 인코딩
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String addr = request.getParameter("addr");
		String gender = request.getParameter("gender");
		
		
		MemberDAO dao = new MemberDAO();
		int cnt = dao.join(id, pw, name, phone, addr, gender);
		
		if(cnt>0) {
			System.out.println("회원가입성공!");
			//response.sendRedirect("join_success.jsp"); //"join_success.jsp?email=email&pw=1235" --> query string 방식
			//-forwarding 방식 페이지 이동
			RequestDispatcher rd = request.getRequestDispatcher("index.html");
			//setAttribute(Name(String), Value(Object))
			request.setAttribute("id", id); //기억할 값을 설정
			
			rd.forward(request, response);
			
		}else {
			System.out.println("회원가입실패!");
			response.sendRedirect("index.html");
		}
		
		
	}

}

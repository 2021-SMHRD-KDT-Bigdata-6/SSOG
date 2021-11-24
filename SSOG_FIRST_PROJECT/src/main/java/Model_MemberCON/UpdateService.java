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


@WebServlet("/UpdateService")
public class UpdateService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("euc-kr");

		HttpSession session = request.getSession();
		MemberVO vo = (MemberVO) session.getAttribute("member");

		String id = vo.getMb_id();
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String addr = request.getParameter("addr");
		String gender = request.getParameter("gender");

		// JDBC_MEMBER 테이블에 PW, TEL, ADDRESS 컬럽값을 수정 (현재 로그인한 사용자의 정보)

		MemberDAO dao = new MemberDAO();
		int cnt = dao.update(id, pw, name, phone, addr, gender);
		
		if (cnt > 0) {
			System.out.println("수정 성공!");
			
			MemberVO vo2 = new MemberVO(id, pw, name, phone, addr, gender, addr, gender);
			
			session.setAttribute("member", vo2);
			
			response.sendRedirect("index.html");
		} else {
			System.out.println("수정 실패!");
			response.sendRedirect("index.html");
		}
	}
}

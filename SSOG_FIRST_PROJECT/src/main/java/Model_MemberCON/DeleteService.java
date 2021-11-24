package Model_MemberCON;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model_Member.MemberDAO;



@WebServlet("/DeleteService")
public class DeleteService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		
		MemberDAO dao = new MemberDAO();
		int cnt = dao.delete(id);
		
		if(cnt>0) {
			System.out.println("삭제성공");
			//response.sendRedirect("selectMember.jsp");
		}else {
			System.out.println("삭제실패");
			//response.sendRedirect("selectMember.jsp");
		}
	}

}

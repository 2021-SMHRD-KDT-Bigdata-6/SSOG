package Main_Con_Cal;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/Python_crawling_control")
public class Python_crawling_control extends HttpServlet {
	private static final long serialVersionUID = 1L;
	


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.sendRedirect("http://121.147.213.215:9000/test?key=yes");
		// redirect 
		// �ܺ� ���� ���� ����
		
		
		// forward
		// �ܺο� ��û ����������
		
	}
	

}

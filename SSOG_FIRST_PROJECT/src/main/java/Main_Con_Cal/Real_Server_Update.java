package Main_Con_Cal;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Controller.Controller_Ingredient;
import Controller.Controller_food;


@WebServlet("/Real_Server_Update")
public class Real_Server_Update extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//�ǽð� -> ���̽� ũ�Ѹ�(���� ���ݵ�����)/ ingredient -> food update
		//top 100�� �̾Ƴ���
		
		response.addHeader("Access-Control-Allow-Origin", "*");
		
		
		System.out.println("success!");

		Controller_Ingredient conIngre = new Controller_Ingredient();
		Controller_food conFood = new Controller_food();
		conIngre.updateAll("��");
		conFood.updateF_index();
		HttpSession session = request.getSession();
		session.setAttribute( "top100",  conFood.Top100());
		
		
		response.sendRedirect("index.jsp");
		
		
		
		
		
		
		
		
		
		
		
	}

}

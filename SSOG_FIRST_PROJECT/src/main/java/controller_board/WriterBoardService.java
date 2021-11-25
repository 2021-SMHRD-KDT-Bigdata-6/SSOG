package controller_board;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import Model_Member.MemberVO;
import model_board.BoardDAO;

@WebServlet("/WriterBoardService")
public class WriterBoardService extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// post��� ���ڵ�
		request.setCharacterEncoding("EUC-KR");
		
		HttpSession session = request.getSession();
		MemberVO vo = (MemberVO)session.getAttribute("member");
		
		// 1. request��ü
		// 2. savePath : ������
		// getServletContext : ���� ���� ȯ�濡 ���� ����
		// getRealPath : ���� ���� ���
		String savePath = request.getServletContext().getRealPath("/fileUpload");
		
		System.out.println(savePath);
		
		// 3. ������ ũ�� ����
		// 1 mb = 1024 kb
		// 1 kb = 1024 byte
		int maxSize = 10*1024*1024; // 10MB
		
		// 4. ���ڵ� ���
		String encoding = "EUC-KR";
		
		// 5. �ߺ����� new DefaultFileRenamePolicy()
		// : ���ϸ��� ��ĥ �� �ڿ� ���ڸ� �ٿ��� �ߺ��������ִ� ����
		MultipartRequest multi = new MultipartRequest(
				request, savePath, maxSize, encoding, new DefaultFileRenamePolicy());
		
		// DB�� �����ϱ� ���ؼ� ���� ������ ������ ����
		String boardCate = multi.getParameter("boardCate");
		String title = multi.getParameter("title");
		String writer = vo.getMb_id();
		// �̹��� �±׿� ��θ� �ۼ��� ���� 16������ �ۼ�������Ѵ�.
		// ���� ���ڵ��� �����ؾ���! ���ڵ�(���� -> �ڵ�)
		// URLEncoder.encode(���ڵ��� ��, ���ڵ� ���)
		String fileName = URLEncoder.encode(multi.getFilesystemName("fileName"), "EUC-KR");
		//String fileName = multi.getFilesystemName("fileName");
		String content = multi.getParameter("content");
		
		System.out.println("boardCate : " + boardCate);
		System.out.println("title : " + title);
		System.out.println("writer : " + writer);
		System.out.println("fileName : " + fileName);
		System.out.println("content : " + content);
		
		BoardDAO dao = new BoardDAO();
		int cnt = dao.upload(boardCate, title, writer, fileName, content);
		
		if(cnt > 0) {
			System.out.println("���� ���ε� ����");
		}else {
			System.out.println("���� ���ε� ����");
		}
		
		if(boardCate.equals("HappyCook")) {
			response.sendRedirect("HappyCook.jsp");
		}else {
			response.sendRedirect("PoisonCook.jsp");
		}
		
		
	}

}

































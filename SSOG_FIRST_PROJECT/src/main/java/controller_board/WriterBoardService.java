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
		
		// post방식 인코딩
		request.setCharacterEncoding("EUC-KR");
		
		HttpSession session = request.getSession();
		MemberVO vo = (MemberVO)session.getAttribute("member");
		
		// 1. request객체
		// 2. savePath : 저장경로
		// getServletContext : 서블릿 실행 환경에 대한 정보
		// getRealPath : 실제 절대 경로
		String savePath = request.getServletContext().getRealPath("/fileUpload");
		
		System.out.println(savePath);
		
		// 3. 파일의 크기 제한
		// 1 mb = 1024 kb
		// 1 kb = 1024 byte
		int maxSize = 10*1024*1024; // 10MB
		
		// 4. 인코딩 방식
		String encoding = "EUC-KR";
		
		// 5. 중복제거 new DefaultFileRenamePolicy()
		// : 파일명이 겹칠 때 뒤에 숫자를 붙여서 중복제거해주는 역할
		MultipartRequest multi = new MultipartRequest(
				request, savePath, maxSize, encoding, new DefaultFileRenamePolicy());
		
		// DB에 저장하기 위해서 보낸 데이터 가지고 오기
		String boardCate = multi.getParameter("boardCate");
		String title = multi.getParameter("title");
		String writer = vo.getMb_id();
		// 이미지 태그에 경로를 작성할 때는 16진수로 작성해줘야한다.
		// 따라서 인코딩을 진행해야함! 인코딩(문자 -> 코드)
		// URLEncoder.encode(인코딩할 값, 인코딩 방식)
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
			System.out.println("파일 업로드 성공");
		}else {
			System.out.println("파일 업로드 실패");
		}
		
		if(boardCate.equals("HappyCook")) {
			response.sendRedirect("HappyCook.jsp");
		}else {
			response.sendRedirect("PoisonCook.jsp");
		}
		
		
	}

}

































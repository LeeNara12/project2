package project2;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/pacebook")
public class PaceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doHandle(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doHandle(request, response);
	}
	
	protected void doHandle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String command = request.getParameter("command");
		
		if("login".equals(command)) {
			//메인에서 로그인 버튼을 누를시
		} else if("join".equals(command)) {
			//메인에서 회원가입 버튼을 누를시
		} else if("joinUp".equals(command)) {
			//회원가입 페이지에서 회원가입 버튼 누를시
		} else if("board".equals(command)) {
			//게시글 작성 버튼을 누를시
		}
	}

}

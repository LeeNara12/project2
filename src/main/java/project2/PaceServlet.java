package project2;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
		
		PaceDAO dao = new PaceDAO();
		
		
		if("login".equals(command)) {
			//메인에서 로그인 버튼을 누를시
		} else if("join".equals(command)) {
			//메인에서 회원가입 버튼을 누를시
			
			
		} else if("joinUp".equals(command)) {
			//회원가입 페이지에서 회원가입 버튼 누를시
			PrintWriter out = response.getWriter();
			
			String id = request.getParameter("id");
			String pw = request.getParameter("pw");
			PaceVO vo = new PaceVO();
			vo.setId(id);
			vo.setPw(pw);
			boolean result = dao.join(vo);
			if ( result) {
				response.sendRedirect("/main.jsp");
			}else {
				response.sendRedirect("/main.jsp");
			
			// 브라우저에서만 접근 가능 
//			HttpSession session = request.getSession(false);
//			if ( session != null) {
//				result = (Boolean)session.getAttribute("isLogon");
//					if(result == true) {
//						id = (String)session.getAttribute("login.id");
//						id = (String)session.getAttribute("login.pw");
//						out.println("<html><body>");
//						out.println("아이디 : " + id + "<br>");
//						out.println("비밀번호 : " + pw + "<br>");
						
					}
		}else if("board".equals(command)) {
			//게시글 작성 버튼을 누를시
		}
	}
			
			

}

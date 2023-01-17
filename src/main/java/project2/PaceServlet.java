package project2;

import java.io.IOException;
import java.sql.Date;

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
		PaceDAO dao = new PaceDAO();// DAO객체 생성
		
		if("login".equals(command)) {
			//메인에서 로그인 버튼을 누를시
			String id = request.getParameter("id");
			String pw = request.getParameter("pw");
			PaceVO vo = new PaceVO();
			vo.setId(id);
			vo.setPw(pw);
			PaceVO user_vo = dao.login(vo);
			if(user_vo != null) { // 로그인 성공시
				String user_id = user_vo.getId();
				String user_pw = user_vo.getPw();
				String user_nick = user_vo.getNick();
				Date user_time = user_vo.getUser_time();
				int user_no = user_vo.getUser_no();
				HttpSession se = request.getSession(); //세션생성 
				se.setAttribute("id", user_id);        //세션에 회원정보추가
				se.setAttribute("pw", user_pw);
				se.setAttribute("nick", user_nick);
				se.setAttribute("time", user_time);
				se.setAttribute("no", user_no);
				response.sendRedirect("/메인페이지");//임시
			} else if(user_vo == null){ //로그인 실패시
				response.sendRedirect("/로그인페이지");//임시
			}
			
		} else if("join".equals(command)) {
			//메인에서 회원가입 버튼을 누를시
		} else if("joinUp".equals(command)) {
			//회원가입 페이지에서 회원가입 버튼 누를시
		} else if("board".equals(command)) {
			//게시글 작성 버튼을 누를시
		}
	}

}

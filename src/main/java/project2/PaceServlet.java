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
		
		
<<<<<<< HEAD
		if("login".equals(command)) {
			//메인에서 로그인 버튼을 누를시
		} else if("join".equals(command)) {
			//메인에서 회원가입 버튼을 누를시
			
			
		} else if("joinUp".equals(command)) {
			//회원가입 페이지에서 회원가입 버튼 누를시
			PrintWriter out = response.getWriter();
			
=======
		if("login".equals(command)) {//메인에서 로그인 버튼을 누를시
>>>>>>> fde52ed51954a4591eb61bff58aea08d1c091cb8
			String id = request.getParameter("id");
			String pw = request.getParameter("pw");
			PaceVO vo = new PaceVO();
			vo.setId(id);
			vo.setPw(pw);
<<<<<<< HEAD
			boolean result = dao.join(vo);
			HttpSession session = request.getSession();
			if (result == true ) {
				session.setAttribute("login.id",id);
				session.setAttribute("login.pw",pw);
			} else  {
			
			}
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
			}
			
			
		} else if("board".equals(command)) {
			//게시글 작성 버튼을 누를시
=======
			PaceVO user_vo = dao.login(vo);
			if(user_vo != null) { // 로그인 성공시
				String user_id = user_vo.getId();
				String user_pw = user_vo.getPw();
				String user_nick = user_vo.getNick();
				Date user_time = user_vo.getUser_time();
				int user_no = user_vo.getUser_no();
				HttpSession se = request.getSession(); //세션생성 또는 세션 가져오기 
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
		} else if("board".equals(command)) { //게시글 작성 버튼을 누를시
			String board_content = request.getParameter("board_content");//게시글 내용 가져오기
			HttpSession se = request.getSession();
			int user_no = (int)se.getAttribute("no");
			PaceBoardVO pbVO = new PaceBoardVO();
			pbVO.setBoard_content(board_content);//게시글 내용 pbVO에 넣기
			dao.createBoard(user_no, pbVO);
			response.sendRedirect("main.jsp");
			//취소 버튼은 자바스크립트로 
		} else if("comment".equals(command)) {//댓글 작성
			String comment_content = request.getParameter("comment_content");
			PaceCommentVO pcvo = new PaceCommentVO();
			pcvo.setComment_content(comment_content);
			HttpSession se = request.getSession();
			int board_no = Integer.parseInt(request.getParameter("board_no"));
			int user_no = (int)se.getAttribute("id");
			dao.createComment(user_no, board_no, pcvo);
>>>>>>> fde52ed51954a4591eb61bff58aea08d1c091cb8
		}
	}

}

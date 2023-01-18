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
		//수정
		
		if("login".equals(command)) {
			//메인에서 로그인 버튼을 누를시
			String id = request.getParameter("id");
			String pw = request.getParameter("pw");
			PaceVO vo = new PaceVO();
			vo.setId(id);
			vo.setPw(pw);
			boolean logon = dao.login(vo);
			if(logon) {
				HttpSession se = request.getSession();
				se.setAttribute("user_id", id);
				se.setAttribute("user_nick", vo.getNick());
				se.setAttribute("user_no", vo.getUser_no());
				se.setAttribute("logon", "true");// 로그인이 되었다는 어트리뷰트
				response.sendRedirect("main.jsp");
			} else {
				response.sendRedirect("login.jsp");
				System.out.println("로그인 실패");
			}
		
		} else if("joinUp".equals(command)) {
			//회원가입 페이지에서 회원가입 버튼 누를시
//			PrintWriter out = response.getWriter();
			
			String id = request.getParameter("id");
			String pw = request.getParameter("pw");
			String nick = request.getParameter("nick");
			PaceVO vo = new PaceVO();
			vo.setId(id);
			vo.setPw(pw);
			vo.setNick(nick);
			boolean result = dao.join(vo);
			if (result) {
				response.sendRedirect("login.jsp");
			}else {
				response.sendRedirect("join.jsp");
				System.out.println("회원가입 실패");
		    }
		} else if("goToBoard".equals(command)) {//메인페이지에서 게시글 만들기 버튼 누를시
			response.sendRedirect("board.jsp");
		} else if("board".equals(command)) { //게시글작성 페이지에서 게시글 작성 버튼을 누를시
			String board_content = request.getParameter("board_content");//게시글 내용 가져오기
			HttpSession se = request.getSession();
			int user_no = (int) se.getAttribute("user_no");
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
		} else if("logout".equals(command)) {
			HttpSession se = request.getSession();
			se.invalidate();
			response.sendRedirect("main.jsp");
		}
	}
			
			

}

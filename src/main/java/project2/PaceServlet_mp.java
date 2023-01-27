package project2;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/pacebook2")
public class PaceServlet_mp extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doHandle(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doHandle(request, response);
	}
	protected void doHandle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String mp = request.getParameter("main_page");
		PaceDAO dao = new PaceDAO();
		
		if("my_profile".equals(mp)) {//프로필, 사이드프로필버튼
			
			response.sendRedirect("profile.jsp");//메인페이지로 이동
			
		} else if("del_board".equals(mp)) {// 게시글 삭제버튼
			int board_no = Integer.parseInt(request.getParameter("board_no"));
			dao.delBoard(board_no);
			response.sendRedirect("main.jsp");
		} else if("comment".equals(mp)) {//댓글 게시 버튼++++++++++
			HttpSession se = request.getSession();
			int user_no = (int)se.getAttribute("user_no");
			int board_no = Integer.parseInt(request.getParameter("board_no"));
			String comment = request.getParameter("comment_content");
			PaceCommentVO pcvo = new PaceCommentVO();
			pcvo.setComment_content(comment);
			dao.createComment(user_no, board_no, pcvo);
			RequestDispatcher dispatch = request.getRequestDispatcher("main.jsp");
			dispatch.forward(request, response);
			
		} else if("comment_del".equals(mp)) {//댓글 게시 버튼++++++++++
			int board_no = Integer.parseInt(request.getParameter("board_no"));
			int comment_no = Integer.parseInt(request.getParameter("comment_no"));
			dao.delComment(comment_no);
			RequestDispatcher dispatch = request.getRequestDispatcher("main.jsp");
			dispatch.forward(request, response);
			
		} else if("make".equals(mp)) {
			response.sendRedirect("board.jsp");
		}
	}
}

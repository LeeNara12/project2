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
			
		}else if("search".equals(mp)) {//검색버튼
			
			response.sendRedirect("main.jsp");//메인페이지로 이동
			
		}
		
		
		/////////////////위쪽 영역////////////////////////
		
		
		else if("home".equals(mp)) {//홈버튼
			
			response.sendRedirect("main.jsp");//메인페이지로 이동
			
		}else if("notice".equals(mp)) {//알림버튼
			
			response.sendRedirect("main.jsp");//메인페이지로 이동
			
		}else if("message".equals(mp)) {//메세지버튼
			
			response.sendRedirect("main.jsp");//메인페이지로 이동
			
		}else if("make".equals(mp)) {//만들기 버튼
			
			response.sendRedirect("board.jsp");//게시글 작성페이지로 이동
			
		}else if("more".equals(mp)) {// 더보기 버튼
			
			response.sendRedirect("main.jsp");//메인페이지로 이동
			
		}
		
		/////////////////사이드영역////////////////////////
		
		
		else if("fr_profile".equals(mp)) {// 친구목록에 있는 프로필
			
			response.sendRedirect("main.jsp");//메인페이지로 이동
			
		}
		
		////////////////////////////////////////////////////
		
		
		else if("bd_profile".equals(mp)) {// 게시글의 프로필
			
			response.sendRedirect("main.jsp");//메인페이지로 이동
			
		}else if("bd_more".equals(mp)) {//게시글의 더보기 버튼
			
			response.sendRedirect("main.jsp");//메인페이지로 이동
			
		}else if("like".equals(mp)) {// 좋아요 버튼++++++++
			
			response.sendRedirect("main.jsp");//메인페이지로 이동
			
		}else if("comment".equals(mp)) {//댓글 버튼++++++++++
			int board_no = Integer.parseInt(request.getParameter("board_no"));
			PaceBoardVO pbvo = new PaceBoardVO();
			pbvo.setBoard_no(board_no);
			HttpSession se = request.getSession();
			int user_no = (int)se.getAttribute("user_no");
			List<PaceCommentVO> list = dao.Comment(user_no, board_no);
			request.setAttribute("comment_list", list);
			RequestDispatcher dispatch = request.getRequestDispatcher("main.jsp");
			dispatch.forward(request, response);
			return;
		}else if("share".equals(mp)) {//공유 버튼
			
			response.sendRedirect("main.jsp");//메인페이지로 이동
			
		}else if("record".equals(mp)) {//저장버튼+++++++++
			
			response.sendRedirect("main.jsp");//메인페이지로 이동
			
		}
		
		/////////////////게시글 영역////////////////////////
		
		
		
	}
}

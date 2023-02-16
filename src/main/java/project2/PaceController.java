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

import VO.PaceBoardVO;
import VO.PaceCommentVO;
import VO.PaceUserVO;

@WebServlet("/pacebook/*")
public class PaceController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doHandle(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doHandle(request, response);
	}
	
	protected void doHandle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PaceService service = new PaceService();
		String action = request.getPathInfo();
		String nextPage = null;
		System.out.println("action : "+action);
		
		if(action == null || action.equals("") || action.equals("/")) {
			nextPage = "/main.jsp";
		} else if(action.equals("/login")) {// 기능 : 메인에서 로그인 버튼을 누를시
			String id = request.getParameter("id");
			String pw = request.getParameter("pw");
			PaceUserVO vo = new PaceUserVO();
			vo.setUser_id(id);
			if((id.equals("") || id == null) || (pw.equals("") || pw==null)) {
				request.setAttribute("logon", "false");
				System.out.println("아이디 또는 비밀번호 입력값이 없음 로그인 실패");
				nextPage = "/login.jsp";
			} else {
				vo.setUser_pw(pw);
				boolean logon = service.login(vo);//로그인 가능한지 boolean 리턴값으로 받아옴
				if(logon) {// 로그인 성공했을 경우
					HttpSession se = request.getSession();//세션 생성
					se.setAttribute("user_id", id);// 세션에 값을 넣어줌
					se.setAttribute("user_no", vo.getUser_no());
					se.setAttribute("logon", "true");// 로그인이 되었다는걸 세션어트리뷰트에 넣어줌
					response.sendRedirect("/project2/main.jsp");
					System.out.println("여기지나감");
					return;
				} else {// 로그인 실패했을 경우
					request.setAttribute("logon", "false");// 로그인이 실패했다는걸 request에 넣어줌  
					System.out.println("로그인 실패");
					nextPage = "/login.jsp";
				}
			}
		
		} else if(action.equals("/join")) {//회원가입 페이지에서 회원가입 버튼 누를시
			// 값을 받는 법
			String id = request.getParameter("id");
			String pw = request.getParameter("pw");
			String name = request.getParameter("name");
			String email = request.getParameter("email");
			String phone = request.getParameter("phone");
			String gender = request.getParameter("gender");
			String birth = request.getParameter("birth");
			PaceUserVO vo = new PaceUserVO();// PaceVO객체 생성
			vo.setUser_id(id);//생성한 객체에 변수로 저장했던 아이디,비밀번호 등 값을 넣어줌
			vo.setUser_pw(pw);
			vo.setUser_name(name);
			vo.setUser_email(email);
			vo.setUser_phone(phone);
			vo.setUser_birth(birth);
			vo.setUser_gender(gender);
			boolean result = service.join(vo); // dao의 join메소드로 vo객체를 넘김

			if (result) {// 회원가입이 성공했을 때
				nextPage = "/join_success.jsp";
			}else {// 회원가입에 실패했을 때
				request.setAttribute("joinUp", "false");//request에 회원가입에 실패했다는 값을 넣어줌
				System.out.println("회원가입 실패");
				nextPage = "/join.jsp";
		    }

		}else if(action.equals("/board")) { //게시글작성 페이지에서 게시글 작성 버튼을 누를시
			String board_content = request.getParameter("content");//게시글 내용 가져오기
			String board_url = request.getParameter("url");//게시글 내용 가져오기
			
			HttpSession se = request.getSession();//세션 생성 및 가져오기
			int user_no = (int) se.getAttribute("user_no");//세션에 유저넘버 값을 넣어줌 
			
			PaceBoardVO pbVO = new PaceBoardVO();// PaceBoardVO객체 생성
			pbVO.setBoard_url(board_url);
			pbVO.setBoard_content(board_content);//게시글 내용 pbVO에 넣기
			
			service.createBoard(user_no, pbVO);// dao의 createBoard메소드에 유저넘버랑 내용을 넘김//DB에 게시글 내용 저장
			
			nextPage = "/main.jsp";

//		} else if("goToBoard".equals(command)) {//메인페이지에서 게시글 만들기 버튼 누를시
//			nextPage = "board.jsp";
//		} else if("logout".equals(command)) {
//			HttpSession se = request.getSession();
//			se.invalidate();
//			response.sendRedirect("main.jsp");
//			return;
		} else if(action.equals("/del_board")) {// 게시글 삭제버튼
			
			int board_no = Integer.parseInt(request.getParameter("board_no"));
			service.delBoard(board_no);
			nextPage = "main.jsp";
			
		} else if(action.equals("/comment")) {//댓글 게시 버튼++++++++++
			
			HttpSession se = request.getSession();
			int user_no = (int)se.getAttribute("user_no");
			int board_no = Integer.parseInt(request.getParameter("board_no"));
			String comment = request.getParameter("comment_content");
			PaceCommentVO pcvo = new PaceCommentVO();
			pcvo.setComment_content(comment);
			service.createComment(user_no, board_no, pcvo);
			nextPage = "/main.jsp";
		} else if(action.equals("/del_comment")) {//댓글 삭제 버튼++++++++++
			
			int comment_no = Integer.parseInt(request.getParameter("comment_no"));
			service.delComment(comment_no);
			nextPage = "/main.jsp";
		} else if(action.equals("/search")) {
			String search_content = request.getParameter("search_content");
			List<PaceBoardVO> boardList = service.search(search_content);
			request.setAttribute("boardList", boardList);
			nextPage = "/main.jsp";
		} else if(action.equals("/get_board")) {
			List<PaceBoardVO> boardList = service.getBoard();
			request.setAttribute("boardList", boardList);
		}else if(action.equals("/profile")) {
			
		}
		
		System.out.println("nextPage : "+nextPage);
		if(nextPage != null) {
			RequestDispatcher dispatch = request.getRequestDispatcher(nextPage);
			dispatch.forward(request, response);
		}
	}
}

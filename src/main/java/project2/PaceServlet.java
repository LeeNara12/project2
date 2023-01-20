package project2;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
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
		
		// command=login으로 받아왔을때
		if("login".equals(command)) {// 기능 : 메인에서 로그인 버튼을 누를시
			String id = request.getParameter("id");
			String pw = request.getParameter("pw");
			PaceUserVO vo = new PaceUserVO();
			vo.setId(id);
			vo.setPw(pw);
			boolean logon = dao.login(vo);//로그인 가능한지 boolean 리턴값으로 받아옴
			if(logon) {// 로그인 성공했을 경우
				HttpSession se = request.getSession();//세션 생성
				se.setAttribute("user_id", id);// 세션에 값을 넣어줌
				se.setAttribute("user_nick", vo.getNick());
				se.setAttribute("user_no", vo.getUser_no());
				se.setAttribute("logon", "true");// 로그인이 되었다는걸 세션어트리뷰트에 넣어줌
				response.sendRedirect("main.jsp");//메인페이지로 이동
				return;// 리턴을 넣어준 이유 : 맨밑에 기본값으로 메인페이지로 리다이렉트 하는데 리다이렉트를 두번하면 오류가 나기때문
			} else {// 로그인 실패했을 경우
				request.setAttribute("logon", "false");// 로그인이 실패했다는걸 request에 넣어줌  
				RequestDispatcher dispatch = request.getRequestDispatcher("login.jsp");
				dispatch.forward(request, response);// 현재 request, response를 login페이지로 넘김 
				System.out.println("로그인 실패");
				return;
			}
		
		} else if("joinUp".equals(command)) {//회원가입 페이지에서 회원가입 버튼 누를시
//			String board_content = request.getParameter("board_content");//넘겨받은 아이디,비밀번호 등을 변수로 저장
//			System.out.println(board_content);
			String id = request.getParameter("id");
			System.out.println("id"+id);
			String pw = request.getParameter("pw");
			String name = request.getParameter("name");
			String email = request.getParameter("email");
			String phone = request.getParameter("phone");
			String profile = request.getParameter("profile");
			String gender = request.getParameter("gender");
			PaceUserVO vo = new PaceUserVO();// PaceVO객체 생성
			vo.setId(id);//생성한 객체에 변수로 저장했던 아이디,비밀번호 등 값을 넣어줌
			vo.setPw(pw);
			vo.setNick(name);
			vo.setNick(email);
			vo.setNick(phone);
			vo.setNick(profile);
			vo.setNick(gender);
			boolean result = dao.join(vo); // dao의 join메소드로 vo객체를 넘김
			if (result) {// 회원가입이 성공했을 때
				response.sendRedirect("login.jsp");// ==임시==
				return;
			}else {// 회원가입에 실패했을 때
				request.setAttribute("joinUp", "false");//request에 회원가입에 실패했다는 값을 넣어줌
				RequestDispatcher dispatch = request.getRequestDispatcher("join.jsp");
				dispatch.forward(request, response);// 현재 request, response를 회원가입 페이지로 넘김
				System.out.println("회원가입 실패");
				return;
		    }



		} else if("board".equals(command)) { //게시글 작성 버튼을 누를시
			
			String cotent = request.getParameter("cotent");//게시글 내용 가져오기
			System.out.println("content : "+cotent );
			HttpSession se = request.getSession();
			int user_no = (int)se.getAttribute("user_no");
			PaceBoardVO pbVO = new PaceBoardVO();
			pbVO.setBoard_content(cotent);//게시글 내용 pbVO에 넣기
			dao.createBoard(user_no, pbVO);
			response.sendRedirect("main.jsp");
			
			return ;

		} else if("goToBoard".equals(command)) {//메인페이지에서 게시글 만들기 버튼 누를시
			response.sendRedirect("board.jsp");//게시글 작성페이지로 이동
			return;
			
			
//		} else if("board".equals(command)) { //게시글작성 페이지에서 게시글 작성 버튼을 누를시
//			String board_content = request.getParameter("board_content");//게시글 내용 가져오기
//			System.out.println(board_content);
//			
//			HttpSession se = request.getSession();//세션 생성 및 가져오기
//			int user_no = (int) se.getAttribute("user_no");//세션에 유저넘버 값을 넣어줌 
//			
//			PaceBoardVO pbVO = new PaceBoardVO();// PaceBoardVO객체 생성
//			pbVO.setBoard_content(board_content);//게시글 내용 pbVO에 넣기
//			
//			dao.createBoard(user_no, pbVO);// dao의 createBoard메소드에 유저넘버랑 내용을 넘김//DB에 게시글 내용 저장
//			
//			response.sendRedirect("main.jsp");//메인페이지로 이동
//			return;

			//취소 버튼은 자바스크립트로
		} else if("comment".equals(command)) {//댓글 작성
			String comment_content = request.getParameter("comment_content");
//			System.out.println(comment_conten);
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
			return;
		}
		response.sendRedirect("main.jsp");
		System.out.println("여기지나감");
	}
			
			

}

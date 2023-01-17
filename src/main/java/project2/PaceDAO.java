package project2;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class PaceDAO {
	private Connection con;
	private PreparedStatement pstmt;
	private DataSource dataFactory;
	
	public PaceDAO() {
		try {
			Context ctx = new InitialContext();
			Context envContext = (Context)ctx.lookup("java:/comp/env"); //JNDI 사용을 위한 설정
			dataFactory = (DataSource)envContext.lookup("jdbc/oracle2");
		} catch (NamingException e) {
			e.printStackTrace();
		}
	}
	
	public boolean login(PaceVO vo) {// 로그인 메소드
		boolean result = false;
		try {
			con = dataFactory.getConnection();
			
			String query = " select * from user_info"
					+ " where user_id = ?";//SQL문 작성
			
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, vo.getId());
			ResultSet rs = pstmt.executeQuery(); 
			if(rs.next()) {
				vo.setUser_no(rs.getInt("user_no"));
				vo.setNick(rs.getString("nick"));
				vo.setUser_time(rs.getDate("user_time"));
				result=true;
			} else {
				result=false;
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	
	public boolean join(PaceVO vo) {//회원가입 메소드
		boolean result = false;
		try {
			con = dataFactory.getConnection();
			
			String query = " select * from user_info"
					+ " where user_id = ?";//SQL문 작성  // 회원넘버 시퀀스이름 : seq_user
			
			pstmt = con.prepareStatement(query);
			
			pstmt.setString(1, vo.getId());
			
			ResultSet rs = pstmt.executeQuery();
			
			if(rs.next()) {
				result= false;
			}else {
				String query2 = "insert into user_info "
						+ " values ( seq_user.nextval, ? , ?, sysdate, ?)";
				pstmt = con.prepareStatement(query2);
				pstmt.setString(1,vo.getId());
				pstmt.setString(2,vo.getPw());
				pstmt.setString(3,vo.getNick());
				pstmt.executeUpdate();
				
				result = true;
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	
	public void createBoard(int user_no, PaceBoardVO pbvo) {//게시글 작성 메소드
		
		try {
			con = dataFactory.getConnection();
			
			String query1 = " insert into board"
					+ "	values(seq_board.nextval, sysdate,\"\r\n"
					+ "	0, ?, ?)";//SQL문 작성   // 게시글 넘버 시쿼스이름 : seq_board
			
			pstmt = con.prepareStatement(query1);
			pstmt.setString(1, pbvo.getBoard_content());
			pstmt.setInt(2, user_no);
			pstmt.executeUpdate();
			
			String query2 = " select * from board"
					+ " where board_no = seq_board.currval";  //PaceBoardVO객체에 나머지 정보들 추가
			
			pstmt = con.prepareStatement(query2);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				pbvo.setBoard_no(rs.getInt("board_no"));
				pbvo.setBoard_time(rs.getDate("board_time"));
				pbvo.setBoard_modify(rs.getInt("board_modify"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	

	public boolean createComment(PaceVO vo, PaceBoardVO pbvo, PaceCommentVO pcvo) {//댓글 작성 메소드
		boolean result = false;
		return result;
		
	}

	public void createComment(int user_no, int board_no, PaceCommentVO pcvo) {//댓글 작성 메소드
		try {
			con = dataFactory.getConnection();
			
			String query1 = " insert into board_comment"
					+ " values(seq_comment.nextval, sysdate, ?, ?, ?)";//SQL문 작성  // 댓글 넘버 시퀀스 이름 : seq_comment
			
			pstmt = con.prepareStatement(query1);
			pstmt.setString(1, pcvo.getComment_content());
			pstmt.setInt(2, board_no);
			pstmt.setInt(3, user_no);
			pstmt.executeUpdate();
			
			String query2 = " select * from board_comment"
					+ " where comment_no = seq_comment.currval"; //PaceCommentVO객체에 나머지 정보들 추가
			
			pstmt = con.prepareStatement(query2);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				pcvo.setComment_no(rs.getInt("comment_no"));
				pcvo.setComment_time(rs.getDate("comment_time"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
	

	

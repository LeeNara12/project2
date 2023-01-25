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
	
	public boolean login(PaceUserVO vo) {// 로그인 메소드
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
				vo.setJoindate(rs.getDate("user_time"));
				result=true;
			} else {
				result=false;
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	
	public boolean join(PaceUserVO vo) {//회원가입 메소드
		boolean result = false;
		try {
			con = dataFactory.getConnection();
			
			String query = " select * from user_info"
					+ " where user_id=? ";
		
//					+ " where value = ? ,? ,? ,? ,?, ?, ?";//SQL문 작성  // 회원넘버 시퀀스이름 : seq_user
			
			pstmt = con.prepareStatement(query);
			
			pstmt.setString(1, vo.getId());
			
			
			pstmt.executeUpdate();
			
			ResultSet rs = pstmt.executeQuery();
			
			if(rs.next()) {
				result= false;
			}else {
				String query2 = "insert into user_info "
						+ " values ( seq_user.nextval, ? , ?, sysdate, ?,?,?,?,?)";
				pstmt=con.prepareStatement(query2);
				
				// 값을 주는 애들은 jsp
				// 값을 받아오는 애들 
				pstmt.setString(1, vo.getId());
				pstmt.setString(2,vo.getPw());
//				pstmt.setDate(3, vo.getJoindate());
				pstmt.setString(3, vo.getName());
				pstmt.setString(4, vo.getEmail());
				pstmt.setString(5, vo.getPhone());
				pstmt.setString(6, vo.getProfile());
				pstmt.setString(7, vo.getGender());
				
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
			
			//DB연결
			con = dataFactory.getConnection();
			
			
			/// 데이터 베이스에 데이터를 추가
			String query1 = " insert into board"
					+ "	values(seq_board.nextval, sysdate, 0, ?, ?, ?, ?)";//SQL문 작성   // 게시글 넘버 시쿼스이름 : seq_board
			                  //1. 게시판시퀀스 2. 생성일 3.게시판 수정여부 4. 게시판수정시간 5. 게시판내용 6. 게시판 좋아요수 7. 회원 시퀀스 (user_no)
			pstmt = con.prepareStatement(query1);
			
			pstmt.setString(1, pbvo.getBoard_content());
			pstmt.setInt(2, user_no);
			pstmt.setInt(3, pbvo.getBoard_like());
			pstmt.setDate(4, pbvo.getBoard_modify_time());
			
			pstmt.executeUpdate();

			
			
			
			//데이베이스에 추가된 데이터를 조회
//			String query2 = " select * from board"
//					+ " where board_no = seq_board.currval";  //PaceBoardVO객체에 나머지 정보들 추가
//			            //게시판 넘버가 현재인 것 가져옴
//			
//			pstmt = con.prepareStatement(query2);
//			ResultSet rs = pstmt.executeQuery();
//			while(rs.next()) {
//				pbvo.setBoard_no(rs.getInt("board_no")); 
//				pbvo.setBoard_time(rs.getDate("board_time"));
//				pbvo.setBoard_modify(rs.getInt("board_modify"));
//				pbvo.setBoard_time(rs.getDate("board_time"));
//				pbvo.setBoard_content(rs.getString("board_content")); // 추가 
//				pbvo.setUser_no(rs.getInt("user_no"));
//				pbvo.setBoard_like(rs.getInt("board_like"));
//				pbvo.setBoard_modify_time(rs.getDate("board_modify_time"));
//				System.out.println("연동 ");
//				pstmt.executeUpdate();
//			}

			/////////////////////////////
			pstmt.close();

		} catch (SQLException e) {
			
			e.printStackTrace();
			
		}
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
			pstmt.setDate(4, pcvo.getComment_time());
			pstmt.setInt(5, pcvo.getComment_no());
			pstmt.setInt(6, pcvo.getComment_like());
			pstmt.setString(7,pcvo.getComment_modify());
			
			
			pstmt.executeUpdate();
			
			String query2 = " select * from board_comment"
					+ " where comment_no = seq_comment.currval"; //PaceCommentVO객체에 나머지 정보들 추가
			
			pstmt = con.prepareStatement(query2);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				pcvo.setComment_no(rs.getInt("comment_no"));
				pcvo.setComment_time(rs.getDate("comment_time"));
				pcvo.setComment_content(rs.getString("comment_content"));
				pcvo.setComment_like(rs.getInt("comment_like"));
				pcvo.setComment_modify(rs.getString("comment_modify"));
				pcvo.setUser_no(rs.getInt("user_no"));
				pcvo.setBoard_no(rs.getInt("board_no"));
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
	

	

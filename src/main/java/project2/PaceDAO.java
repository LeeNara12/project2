package project2;

import java.sql.Connection;
import java.sql.Date;
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
	
	public void PaceDAO() {
		try {
			Context ctx = new InitialContext();
			dataFactory = (DataSource) ctx.lookup("java:/comp/env/jdbc/oracle2");
		} catch (NamingException e) {
			e.printStackTrace();
		}
	}
	
	public PaceVO login(PaceVO vo) {// 로그인 메소드 // boolean에서 리턴으로 수정
		PaceVO userVO;
		try {
			con = dataFactory.getConnection();
			
			String query = " select * form user_info"
					+ "	where id = ? and pw = ?";//SQL문 작성
			
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, vo.getUser_id());
			pstmt.setString(2, vo.getUser_pw());
			ResultSet rs = pstmt.executeQuery(); 
			if(rs.next()) {
				int user_no = rs.getInt("user_no");
				String user_id = rs.getString("id");
				String user_pw = rs.getString("pw");
				String user_nick = rs.getString("nick");
				Date user_time = rs.getDate("user_time");
				userVO = new PaceVO();
				userVO.setUser_no(user_no);
				userVO.setUser_id(user_id);
				userVO.setUser_pw(user_pw);
				userVO.setUser_nick(user_nick);
				userVO.setUser_time(user_time);
			} else {
				
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return userVO;
	}
	
	
	public boolean join(PaceVO vo) {//회원가입 메소드
		boolean result = false;
		try {
			con = dataFactory.getConnection();
			
			String query = "";//SQL문 작성  // 회원넘버 시퀀스이름 : seq_user
			
			pstmt = con.prepareStatement(query);
			
			ResultSet rs = pstmt.executeQuery(); 
			
			rs.next();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	
	public boolean createBoard(PaceVO vo, PaceBoardVO pbvo) {//게시글 작성 메소드
		boolean result = false;
		try {
			con = dataFactory.getConnection();
			
			String query = "";//SQL문 작성   // 게시글 넘버 시쿼스이름 : seq_board
			
			pstmt = con.prepareStatement(query);
			
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	
	public boolean createComment(PaceVO vo, PaceBoardVO pbvo, PaceCommentVO pcvo) {//댓글 작성 메소드
		boolean result = false;
		try {
			con = dataFactory.getConnection();
			
			String query = "";//SQL문 작성  // 댓글 넘버 시퀀스 이름 : seq_comment
			
			pstmt = con.prepareStatement(query);
			
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
}

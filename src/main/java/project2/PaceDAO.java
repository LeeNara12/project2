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
	
	public void PaceDAO() {
		try {
			Context ctx = new InitialContext();
			dataFactory = (DataSource) ctx.lookup("java:/comp/env/jdbc/oracle");
		} catch (NamingException e) {
			e.printStackTrace();
		}
	}
	
	public boolean login(PaceVO vo) {// 로그인 메소드
		boolean result = false;
		try {
			con = dataFactory.getConnection();
			
			String query = "";//SQL문 작성
			
			pstmt = con.prepareStatement(query);
			
			ResultSet rs = pstmt.executeQuery(); 
			
			rs.next();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
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
		return result;
		
	}
}
	

package project2;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

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
			
			pstmt.close();
			con.close();
			
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
			
			ResultSet rs = pstmt.executeQuery();
			
			if(rs.next()) {
				result= false;
			}else {
				String query2 = "insert into user_info "
						+ " values ( seq_user.nextval, ? , ?, current_date, ?,?,?,?,?,?)";
				/*(1. USER_NO, 2.USER_ID 3. USER_PW, 4. USER_TIME, 5. USER_NAME, 6. USER_EMAIL, 7. USER_PHONE, 
				 * 8. USER_PROFILE, 9. USER_BIRTH, 10. USER_GENDER)*/
				
				
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
				pstmt.setString(7, vo.getBirth());
				pstmt.setString(8, vo.getGender());
				
				pstmt.executeUpdate();
				
				result = true;
				
				
			}
			
			
			pstmt.close();
			con.close();
			
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
					+ "	values(seq_board.nextval, current_date, 0, ?, ?, ?, ?, ?)";//SQL문 작성   // 게시글 넘버 시쿼스이름 : seq_board
			                  //1. 게시판시퀀스 2. 생성일 3.게시판 수정여부 4.게시판 이미지 url 5. 회원 시퀀스 (user_no) 6. 게시판 좋아요수  7. 게시판수정시간 8. 게시판내용  
			pstmt = con.prepareStatement(query1);
			
			pstmt.setString(1, pbvo.getBoard_url());
			pstmt.setInt(2, user_no);
			pstmt.setInt(3, pbvo.getBoard_like());
			pstmt.setDate(4, pbvo.getBoard_modify_time());
			pstmt.setString(5, pbvo.getBoard_content());
			
			
			pstmt.executeUpdate();


			pstmt.close();
			con.close();

		} catch (SQLException e) {
			
			e.printStackTrace();
			
		}
	}


	public List<PaceCommentVO> Comment(int user_no, int board_no) {//댓글페이지 여는 메소드//댓글정보들을 가져와서 넘기는 메소드
		List<PaceCommentVO> list = new ArrayList<PaceCommentVO>();
		try {
			con = dataFactory.getConnection();
			
			String query1 = " select * from board_comment"
					+ " where board_no = ?";//SQL문 작성  // 댓글 넘버 시퀀스 이름 : seq_comment
			
			pstmt = con.prepareStatement(query1);
			pstmt.setInt(1, board_no);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				PaceCommentVO pcvo = new PaceCommentVO();
				pcvo.setComment_no(rs.getInt("comment_no"));
				pcvo.setComment_time(rs.getDate("comment_time"));
				pcvo.setComment_content(rs.getString("comment_content"));
				pcvo.setUser_no(rs.getInt("user_no"));
				pcvo.setBoard_no(board_no);
				pcvo.setComment_like(rs.getInt("comment_like"));
				pcvo.setComment_modify(rs.getInt("comment_modify"));
				pcvo.setComment_modify_time(rs.getDate("comment_modify_time"));
				
				list.add(pcvo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	public PaceUserVO getUserInfo(int user_no) {//댓글페이지 여는 메소드//댓글정보들을 가져와서 넘기는 메소드
		PaceUserVO puvo = new PaceUserVO();
		try {
			con = dataFactory.getConnection();
			
			String query1 = " select * from user_info"
					+ " where user_no = ?";//SQL문 작성  // 댓글 넘버 시퀀스 이름 : seq_comment
			
			pstmt = con.prepareStatement(query1);
			pstmt.setInt(1, user_no);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				puvo.setUser_no(user_no);
				puvo.setId("user_id");
				puvo.setName("user_name");
				puvo.setEmail("user_email");
				puvo.setBirth("user_birth");
				puvo.setPhone("user_phone");
				puvo.setProfile("user_profile");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return puvo;
	}
	
	//해당 user_no의 게시글 수
	public int BoardCount(int user_no) {
		int result=0;
		
		try {
			con = dataFactory.getConnection();
			String query1 = "select count(*) from board"
					+" where user_no = ?";
			pstmt = con.prepareStatement(query1);
			pstmt.setInt(1, user_no);
			
			ResultSet rs = pstmt.executeQuery();
			
			rs.next();
			
			result = rs.getInt("count(*)");
			
			pstmt.close();
			con.close();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		
		return result;
	}
	
	
	//해당 게시글의 내용 가져오는 메소드
	public HashMap<Integer,List> BoardContent(int user_no) {
		
		HashMap<Integer,List> map = new HashMap<Integer,List>();
		List <PaceBoardVO> pbvo_list = new ArrayList <>();
		List <PaceUserVO> puvo_list = new ArrayList <>(); 
		
		
		try {
			
			
			con = dataFactory.getConnection();
			String query1 = "Select * from board b, user_info ui"
					+ " where b.user_no = ui.user_no"
					+ " and b.user_no = ?"
					+ " order by board_time desc";
			pstmt = con.prepareStatement(query1);
			pstmt.setInt(1, user_no);
			
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				PaceBoardVO pbvo = new PaceBoardVO();
				PaceUserVO puvo = new PaceUserVO();
				
				puvo.setEmail(rs.getString("user_email"));//이메일
				puvo.setId(rs.getString("user_id"));//아이디
				puvo.setProfile(rs.getString("user_profile"));//프로필 url
				pbvo.setBoard_time(rs.getDate("board_time"));// 작성시간
				pbvo.setBoard_url(rs.getString("board_url"));// 게시글 이미지 url
				pbvo.setBoard_content(rs.getString("board_content"));//게시글 내용
				
				puvo_list.add(puvo);
				pbvo_list.add(pbvo);
				
				
			}
			
			map.put(1, puvo_list);
			map.put(2, pbvo_list);
			
			
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		return map;
	}
	
	//프로필 url 불러오는 메소드
	public String profile(int user_no) {
		String profile="";
		
		try {
			con = dataFactory.getConnection();
			String query1 = "Select * from user_info"
							+" Where user_no = ?";
			pstmt = con.prepareStatement(query1);
			pstmt.setInt(1, user_no);
			
			ResultSet rs = pstmt.executeQuery();
			
			rs.next();
			
			profile = rs.getString("user_profile");
			
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		
		return profile;
	}
	
	//?시간전 인지 가져오는 메소드
	//sql.date를 변수로 넣음 
	public String time(Date time) {
		
	long write_time= time.getTime();
	
	long now = System.currentTimeMillis()/1000;
		
	long diff = now-write_time;
	long diff1 = diff/1000; //log 범위를 넘어가서...
	
	int result= 0;
	String a = "";
		
		
		if(diff1<60) {
			//초단위
			System.out.println(diff/1000);
			result = (int)diff/1000;
			a = "초 전";
			
		}else if(diff1<60*60){
			//분단위
			
			result = (int)diff/1000*60;
			a = "분 전";
			System.out.println(result+a);
					
		}else if(diff1<60*60*24) {
			//시간단위
			
			result = (int)diff/1000*60*60;
			a = "시간 전";
			System.out.println(result+a);
		}else if(diff1<60*60*24*30) {
			//일 단위
			
			result = (int)diff/1000*60*60*24;
			a = "일 전";
			System.out.println(result+a);
		}else if(diff1<60*60*24*30*12) {
			//월 단위
			
			result = (int)diff/1000*60*60*24*30;
			a = "달 전";
			System.out.println(result+a);
		}else {
			//년 이상
			
			result = (int)diff/1000*60*60*24*30*12;
			a = "년 전";
			System.out.println(result+a);
			
		}
		
		return result+a;
		
	}
	
	public List<PaceBoardVO> getBoard() {//게시물 가져오는 메소드
	      List<PaceBoardVO> list = new ArrayList<PaceBoardVO>();
	      try {
	         con = dataFactory.getConnection();
	         
	         String query1 = " select * from board"
	               + " order by board_time desc";
	         
	         pstmt = con.prepareStatement(query1);
	         ResultSet rs = pstmt.executeQuery();
	         
	         while(rs.next()) {
	            PaceBoardVO pbvo = new PaceBoardVO();
	            pbvo.setBoard_no(rs.getInt("board_no"));
	            pbvo.setBoard_time(rs.getDate("board_time"));
	            pbvo.setBoard_modify(rs.getInt("board_modify"));
	            pbvo.setBoard_modify_time(rs.getDate("board_modify_time"));
	            pbvo.setBoard_content(rs.getString("board_content"));
	            pbvo.setUser_no(rs.getInt("user_no"));
	            pbvo.setBoard_like(rs.getInt("board_like"));
	            pbvo.setBoard_url(rs.getString("board_url"));
	            
	            list.add(pbvo);
	         }
	      } catch (SQLException e) {
	         e.printStackTrace();
	      }
	      return list;
	   }
	
	
	public List<PaceCommentVO> Comment(int board_no) {//댓글페이지 여는 메소드//댓글정보들을 가져와서 넘기는 메소드
	      List<PaceCommentVO> list = new ArrayList<PaceCommentVO>();
	      try {
	         con = dataFactory.getConnection();
	         
	         String query1 = " select * from board_comment"
	               + " where board_no = ?"
	               + " order by comment_time asc";//SQL문 작성  // 댓글 넘버 시퀀스 이름 : seq_comment
	         
	         pstmt = con.prepareStatement(query1);
	         pstmt.setInt(1, board_no);
	         ResultSet rs = pstmt.executeQuery();
	         
	         while(rs.next()) {
	            PaceCommentVO pcvo = new PaceCommentVO();
	            pcvo.setComment_no(rs.getInt("comment_no"));
	            pcvo.setComment_time(rs.getDate("comment_time"));
	            pcvo.setComment_content(rs.getString("comment_content"));
	            pcvo.setUser_no(rs.getInt("user_no"));
	            pcvo.setBoard_no(board_no);
	            pcvo.setComment_like(rs.getInt("comment_like"));
	            pcvo.setComment_modify(rs.getInt("comment_modify"));
	            pcvo.setComment_modify_time(rs.getDate("comment_modify_time"));
	            
	            list.add(pcvo);
	         }
	      } catch (SQLException e) {
	         e.printStackTrace();
	      }
	      return list;
	   }
	
	public void createComment(int user_no, int board_no,PaceCommentVO pcvo) {//댓글 작성 메소드
	      try {
	         con = dataFactory.getConnection();
	         
	         String query1 = " insert into board_comment(comment_no, comment_time, comment_content,"
	               + " user_no, board_no, comment_like, comment_modify, comment_modify_time)"
	               + " values(seq_comment.nextval, current_date, ?, ?, ?, 0, 0, null)";//SQL문 작성  // 댓글 넘버 시퀀스 이름 : seq_comment
	         
	         pstmt = con.prepareStatement(query1);
	         pstmt.setString(1, pcvo.getComment_content());
	         pstmt.setInt(2, user_no);
	         pstmt.setInt(3, board_no);
	         
	         pstmt.executeUpdate();
	         
	      } catch (SQLException e) {
	         e.printStackTrace();
	      }
	   }
	
	public void delComment(int comment_no) {//댓글 작성 메소드
	      try {
	         con = dataFactory.getConnection();
	         
	         String query1 = " delete from board_comment"
	               + " where comment_no = ?";
	         
	         pstmt = con.prepareStatement(query1);
	         pstmt.setInt(1, comment_no);
	         
	         pstmt.executeUpdate();
	         
	      } catch (SQLException e) {
	         e.printStackTrace();
	      }
	   }
	
	public void delBoard(int board_no) {
	      try {
	         con = dataFactory.getConnection();
	         
	         String query1 = " delete from board"
	               + " where board_no = ?";
	         
	         pstmt = con.prepareStatement(query1);
	         pstmt.setInt(1, board_no);
	         pstmt.executeUpdate();
	         
	      } catch (SQLException e) {
	         e.printStackTrace();
	      }
	   }
	
}

 
	

	

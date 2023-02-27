package Service;

import java.util.List;
import java.util.Map;

import DAO.BoardDAO;
import DAO.CommentDAO;
import DAO.PaceDAO;
import DAO.User_infoDAO;
import VO.PaceBoardVO;
import VO.PaceCmCommentVO;
import VO.PaceCommentVO;
import VO.PaceUserVO;

public class PaceService {
	User_infoDAO user_infoDAO = new User_infoDAO();
	BoardDAO boardDAO = new BoardDAO();
	CommentDAO commentDAO = new CommentDAO();
	
	
	public boolean login(PaceUserVO vo) {
		return user_infoDAO.login(vo);
	}
	
	public boolean join(PaceUserVO vo) {
		return user_infoDAO.join(vo);
	}
	
	public boolean idCheck(PaceUserVO vo) {
		return user_infoDAO.idCheck(vo);
	}
	
	public boolean pwCheck(PaceUserVO vo) {
		return user_infoDAO.pwCheck(vo);
	}
	
	
	public void createBoard(int user_no, PaceBoardVO pbvo) {
		boardDAO.createBoard(user_no, pbvo);
	}
	
	public void delBoard(int board_no) {
		boardDAO.delBoard(board_no);
	}
	
	public void createComment(int user_no, int board_no, String content) {
		commentDAO.createComment(user_no, board_no, content);
	}
	
	public void delComment(int comment_no) {
		commentDAO.delComment(comment_no);
	}
	
	public List<PaceBoardVO> search(String search_content){
		return boardDAO.search(search_content);
	}
	
	public List<PaceBoardVO> getBoard(int pageNum){
		return boardDAO.getBoard(pageNum);
	}
	public List<PaceBoardVO> myBoard(int user_no){
		return boardDAO.myBoard(user_no);
	}
	
	public List<PaceUserVO> getFollowList(int user_no){
		return user_infoDAO.getFollowList(user_no);
	}
	public List<PaceUserVO> getFollowerList(int user_no){
		return user_infoDAO.getFollowerList(user_no);
	}
	
<<<<<<< HEAD
	public Map<String,List<PaceBoardVO>>  a () {
		PaceDAO PaceDAO = new PaceDAO();
		Map<String,List<PaceBoardVO>> pu = PaceDAO.rnum(); 
=======
	public List<PaceUserVO>  a () {
		PaceDAO PaceDAO = new PaceDAO();
		List<PaceUserVO> pu = PaceDAO.rnum(); 
>>>>>>> ad8582ed3f53f1aec59a448cbce927c1348f3d4d
//		Map map= PaceDAO.runm();
		System.out.println("service출력");
		
		return pu;
		
	}
	public List<PaceBoardVO> getBoard2(int user_no){
		PaceDAO paceDAO = new PaceDAO();
		return  paceDAO.getBoard2(user_no);
	}
	
	public PaceUserVO getUserInfo(int user_no) {
		return user_infoDAO.getUserInfo(user_no);
	}

	
	public PaceUserVO getProfile(int user_no){
		return user_infoDAO.profile1(user_no);
	}
	
	public List<PaceCommentVO> comment(int board_no){
		return commentDAO.comment(board_no);
	}
	
	public List<PaceCmCommentVO> cmComment(int comment_no){
		return commentDAO.cmComment(comment_no);
	}
	
	public void createCmComment(int user_no, int comment_no, String content) {
		commentDAO.createCmComment(user_no, comment_no, content);
	}
	
	public void follow(int user_no, int buser_no) {
		user_infoDAO.follow(user_no, buser_no);
	}
	
	
	public boolean isFollow(int user_no, int buser_no) {
		return user_infoDAO.isFollow(user_no, buser_no);
	}
	
	public List<PaceUserVO> notFollowUsers(int user_no, int pageNum) {
		return user_infoDAO.notFollowUsers(user_no, pageNum);
	}
	
}

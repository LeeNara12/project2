package project2;

import java.util.List;

import DAO.BoardDAO;
import DAO.CommentDAO;
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
	
	public void createBoard(int user_no, PaceBoardVO pbvo) {
		boardDAO.createBoard(user_no, pbvo);
	}
	
	public void delBoard(int board_no) {
		boardDAO.delBoard(board_no);
	}
	
	public void createComment(int user_no, int board_no,PaceCommentVO pcvo) {
		commentDAO.createComment(user_no, board_no, pcvo);
	}
	
	public void delComment(int comment_no) {
		commentDAO.delComment(comment_no);
	}
	
	public List<PaceBoardVO> search(String search_content){
		return boardDAO.search(search_content);
	}
	
	public List<PaceBoardVO> getBoard(){
		return boardDAO.getBoard();
	}
	
	public List<PaceUserVO> getFollowList(int user_no){
		return user_infoDAO.getFollowList(user_no);
	}
	
	public List<PaceUserVO>  a () {
		 List<PaceUserVO> pu; 
		PaceDAO PaceDAO = new PaceDAO();
		pu= PaceDAO.count();
		System.out.println("service출력");
		
		return pu;
		
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
}

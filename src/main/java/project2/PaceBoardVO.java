package project2;

import java.sql.Date;

public class PaceBoardVO {
	private String board_content;//게시판 내용
	private int board_modify;//수정여부
	private Date board_time;//게시판 생성 날짜;
	
	
	public String getBoard_content() {
		return board_content;
	}
	public void setBoard_content(String board_content) {
		this.board_content = board_content;
	}
	public int getBoard_modify() {
		return board_modify;
	}
	public void setBoard_modify(int board_modify) {
		this.board_modify = board_modify;
	}
	public Date getBoard_time() {
		return board_time;
	}
	public void setBoard_time(Date board_time) {
		this.board_time = board_time;
	}
	
	
}

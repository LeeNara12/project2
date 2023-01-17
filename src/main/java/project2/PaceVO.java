package project2;

import java.sql.Date;

public class PaceVO {
	private int user_no;
	private String id;
	private String pw;
	private String nick;
	private Date user_time;
	
	public int getUser_no() {
		return user_no;
	}
	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}
	public Date getUser_time() {
		return user_time;
	}
	public void setUser_time(Date user_time) {
		this.user_time = user_time;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getNick() {
		return nick;
	}
	public void setNick(String nick) {
		this.nick = nick;
	}
	
}

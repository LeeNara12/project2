package project2;

import java.sql.Date;

public class PaceUserVO {//회원정보
	private int user_no;
	private String id;
	private String pw;
	private Date joindate;//user_time 에서 바뀜

	private String name;
	private String email;
	private int phone;
	private Date profile;
	private String gender;
	
	public int getUser_no() {
		return user_no;
	}
	public void setUser_no(int user_no) {
		this.user_no = user_no;
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
	

	public Date getJoindate() {
		return joindate;
	}
	public void setJoindate(Date joindate) {
		this.joindate = joindate;
	}
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	
	public int getPhone() {
		return phone;
	}
	public void setPhone(int phone) {
		this.phone = phone;
	}
	
	
	public Date getProfile() {
		return profile;
	}
	public void setProfile(Date profile) {
		this.profile = profile;
	}
	public String getgender() {
		return gender;
	}
	public void setjender(String comment_gender) {
		this.gender = comment_gender;
	}
	

}

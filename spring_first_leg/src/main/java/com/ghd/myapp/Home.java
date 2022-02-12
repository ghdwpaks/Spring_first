package com.ghd.myapp;

import javax.persistence.Entity;

@Entity
public class Home {
	
	private String userid;
	private String userpw;
	private String username;
	private String useremail;
	private int userage;
	
	
	@Override
	public String toString() {
		return "Home [userid=" + userid + ", userpw=" + userpw + ", username=" + username + ", useremail=" + useremail
				+ ", userage=" + userage + "]";
	}


	public String getUserid() {
		return userid;
	}


	public void setUserid(String userid) {
		this.userid = userid;
	}


	public String getUserpw() {
		return userpw;
	}


	public void setUserpw(String userpw) {
		this.userpw = userpw;
	}


	public String getUsername() {
		return username;
	}


	public void setUsername(String username) {
		this.username = username;
	}


	public String getUseremail() {
		return useremail;
	}


	public void setUseremail(String useremail) {
		this.useremail = useremail;
	}


	public int getUserage() {
		return userage;
	}


	public void setUserage(int userage) {
		this.userage = userage;
	}
	
	
	
	
}

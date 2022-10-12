package com.spring.tutorial.dto;

import java.util.Date;

//인사평가
public class PersonnelDTO {
	
	private String id; 			//사번
	private String p_name;		//평가자
	private String user_name;	//대상자
	private Date p_year;		//평가년도
	private String p_able;		//역량
	private String p_output;	//성과
	private String p_comment;	//의견
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public Date getP_year() {
		return p_year;
	}
	public void setP_year(Date p_year) {
		this.p_year = p_year;
	}
	public String getP_able() {
		return p_able;
	}
	public void setP_able(String p_able) {
		this.p_able = p_able;
	}
	public String getP_output() {
		return p_output;
	}
	public void setP_output(String p_output) {
		this.p_output = p_output;
	}
	public String getP_comment() {
		return p_comment;
	}
	public void setP_comment(String p_comment) {
		this.p_comment = p_comment;
	}
	
	@Override
	public String toString() {
		return "PersonnelDTO [id=" + id + ", p_name=" + p_name + ", user_name=" + user_name + ", p_year=" + p_year
				+ ", p_able=" + p_able + ", p_output=" + p_output + ", p_comment=" + p_comment + "]";
	}
	
	

}

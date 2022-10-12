package com.spring.tutorial.dto;


//부서
public class DepartDTO {
	
	private String depart_name;  //부서명
	private int company_id; 	//회사번호
	private String show;		//노출여부
	private String id;			//사번
	
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getDepart_name() {
		return depart_name;
	}
	public void setDepart_name(String depart_name) {
		this.depart_name = depart_name;
	}
	public int getCompany_id() {
		return company_id;
	}
	public void setCompany_id(int company_id) {
		this.company_id = company_id;
	}
	public String getShow() {
		return show;
	}
	public void setShow(String show) {
		this.show = show;
	}
	
	@Override
	public String toString() {
		return "DepartDTO [depart_name=" + depart_name + ", company_id=" + company_id + ", show=" + show + ", id=" + id
				+ "]";
	}
	
	

}

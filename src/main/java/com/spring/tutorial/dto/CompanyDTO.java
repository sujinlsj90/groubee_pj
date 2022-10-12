package com.spring.tutorial.dto;

//회사 
public class CompanyDTO {
	
	private int company_id;   //회사번호
	private String c_name;    //회사명
	private String c_address; //회사주소
	private int c_number;     //사업자등록번호
	private int show; 	//노출여부
	public int getCompany_id() {
		return company_id;
	}
	public void setCompany_id(int company_id) {
		this.company_id = company_id;
	}
	public String getC_name() {
		return c_name;
	}
	public void setC_name(String c_name) {
		this.c_name = c_name;
	}
	public String getC_address() {
		return c_address;
	}
	public void setC_address(String c_address) {
		this.c_address = c_address;
	}
	public int getC_number() {
		return c_number;
	}
	public void setC_number(int c_number) {
		this.c_number = c_number;
	}
	public int getShow() {
		return show;
	}
	public void setShow(int show) {
		this.show = show;
	}
	
	@Override
	public String toString() {
		return "CompanyDTO [company_id=" + company_id + ", c_name=" + c_name + ", c_address=" + c_address
				+ ", c_number=" + c_number + ", show=" + show + "]";
	}
	
	
	

}

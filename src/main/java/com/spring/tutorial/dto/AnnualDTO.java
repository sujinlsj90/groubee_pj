package com.spring.tutorial.dto;

import java.sql.Date;

public class AnnualDTO {

	private String annual_id; // 연차 신청 번호
	private String id; // 사번
	private String name; // 이름
	private String depart_name; // 부서명
	private Date today; // 신청일
	private int annual; // 연차 1 반차 0
	private int annualtotal; // 총 연차(연 기본 15)
	private int annualuse; // 연차 사용량
	private int annualrest; // 잔여 연차	
	private String state; // 상태 (신청, 확인, 반려, 완료, 취소)
	
	public AnnualDTO() {}

	public String getAnnual_id() {
		return annual_id;
	}

	public void setAnnual_id(String annual_id) {
		this.annual_id = annual_id;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDepart_name() {
		return depart_name;
	}

	public void setDepart_name(String depart_name) {
		this.depart_name = depart_name;
	}

	public Date getToday() {
		return today;
	}

	public void setToday(Date today) {
		this.today = today;
	}

	public int getAnnual() {
		return annual;
	}

	public void setAnnual(int annual) {
		this.annual = annual;
	}

	public int getAnnualtotal() {
		return annualtotal;
	}

	public void setAnnualtotal(int annualtotal) {
		this.annualtotal = annualtotal;
	}

	public int getAnnualuse() {
		return annualuse;
	}

	public void setAnnualuse(int annualuse) {
		this.annualuse = annualuse;
	}

	public int getAnnualrest() {
		return annualrest;
	}

	public void setAnnualrest(int annualrest) {
		this.annualrest = annualrest;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	@Override
	public String toString() {
		return "AnnualDTO [annual_id=" + annual_id + ", id=" + id + ", name=" + name + ", depart_name=" + depart_name
				+ ", today=" + today + ", annual=" + annual + ", annualtotal=" + annualtotal + ", annualuse="
				+ annualuse + ", annualrest=" + annualrest + ", state=" + state + "]";
	}	
	
}

package com.spring.tutorial.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

public interface AttendanceService {	
	
	// 나의 근태 현황 
	public void attendance(HttpServletRequest req, Model model);
	
	// 나의 근무 조회 (주간별)
	public void attendanceWeek(HttpServletRequest req, Model model);
	
	// 월 근태 현황
	public void attendanceMonth(HttpServletRequest req, Model model);
	
	// 내 연차 내역
	public void attendanceRestInfo(HttpServletRequest req, Model model);
	
	// 연장 근무 신청 
	public void request_over(HttpServletRequest req, Model model);
	
	// 연차 반차 신청 
	public void request_rest(HttpServletRequest req, Model model);
	
	// 부서 근태 내역
	public void attendDepart(HttpServletRequest req, Model model);
		
	// 부서 연차 내역
	public void annualDepart(HttpServletRequest req, Model model);
	
	// 전사 근태 내역
	public void attendGrb(HttpServletRequest req, Model model);
	
	// 전사 연차 내역
	public void annualGrb(HttpServletRequest req, Model model);
}

package com.spring.tutorial.dao;

import java.util.List;

import com.spring.tutorial.dto.AnnualDTO;
import com.spring.tutorial.dto.AttendanceDTO;

public interface AttendanceDAO {
	// 나의 근태 현황 
	public List<AttendanceDTO> attendance(String id);
	
	// 나의 근무 조회 (주간)
	public List<AttendanceDTO> attendanceWeek(String id);
	
	// 월 근태 현황
	public List<AttendanceDTO> attendanceMonth(String id);

	// 내 연차 내역
	public List<AnnualDTO> attendanceRestInfo(String id);
	
	// 연장 근무 신청 
	public int request_over(String id);
	
	// 연장 근무 신청 
	public int request_rest(String id);
	
	// 부서 근태 내역
	public List<AttendanceDTO> attendDepart(String depart_name);
	
	// 부서 연차 내역
	public List<AnnualDTO> annualDepart(String depart_name);
	
	// 전사 근태 내역
	public List<AttendanceDTO> attendGrb(int company_id);
	
	// 전사 연차 내역
	public List<AnnualDTO> annualGrb(int company_id);
	
}

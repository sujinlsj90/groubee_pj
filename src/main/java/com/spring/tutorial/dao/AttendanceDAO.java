package com.spring.tutorial.dao;

import java.util.List;
import java.util.Map;

import com.spring.tutorial.dto.AnnualDTO;
import com.spring.tutorial.dto.AttendanceDTO;

public interface AttendanceDAO {
	// 나의 근태 현황 
	public List<AttendanceDTO> attendance(String id);
	
	// 업무 시작
	public int attendin(String id);
	
	// 업무 종료
	public int attendout(String id);
	
	// 일일 누적 시간
	public int updateworktime(Map<String, Object> map);
	
	// 누적+연장 근무 시간
	public int workover(Map<String, Object> map);
		 
	// 누적  근무 시간
	public int worktime(Map<String, Object> map);
	
	// 주간 연장  근무 시간
	public int overtime(Map<String, Object> map);
	
	// 월간 연장  근무 시간
	public int overmonth(String id);
	
	// 나의 근무 조회 (주간)
	public List<AttendanceDTO> attendanceWeek(Map<String, Object> map);
	
	// 나의 월 근무 시간
	public int monthwork(String id);
	
	// 나의 월 누적 시간
	public int monthtotal(String id);
	
	// 주 연장 카운트
	public int overweek_cnt(Map<String, Object> map);
	 
	// 월 연장 카운트
	public int overmonth_cnt(String id);
	
	// 월 업무(출근) 카운트
	public int attendin_cnt(String id);
	
	// 월 날짜 반환
	public int day_cnt(String id);
	
	// 월 지각 카운트
	public int late_cnt(String id);
	
	// 월 근태 현황
	public List<AttendanceDTO> attendanceMonth(String id);

	// 내 연차 내역
	public List<AnnualDTO> attendanceRestInfo(Map<String, Object> map);
	
	// 사원등록 발생 연차
	public int newannual(String id);	
	
	// 연 발생 연차
	public List<AnnualDTO> yearRestInfo(Map<String, Object> map);
	
	// 일일 연장 1회 제한
	public int over_cnt(String id);	
	
	// 연장 근무 신청 
	public int request_over(Map<String, Object> map);
	
	// 연차 반차 신청 
	public int request_rest(Map<String, Object> map);
	
	// 부서 근태 내역
	public List<AttendanceDTO> attendDepart(String depart_name);
	
	// 부서 연차 내역
	public List<AnnualDTO> annualDepart(String depart_name);
	
	// 전사 근태 내역
	public List<AttendanceDTO> attendGrb(int company_id);
	
	// 전사 연차 내역
	public List<AnnualDTO> annualGrb(int company_id);
	
}

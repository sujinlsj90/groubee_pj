package com.spring.tutorial.service;


import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.spring.tutorial.dao.AttendanceDAO;
import com.spring.tutorial.dto.AttendanceDTO;


@Service
public class AttendanceServiceImpl implements AttendanceService {
	
	@Autowired
	AttendanceDAO dao;		

	// 나의 근태 현황 
	@Override
	public void attendance(HttpServletRequest req, Model model) {
		System.out.println("service : 나의 근태 현황 ");
		String id = (String) req.getSession().getAttribute("memberID");
		List<AttendanceDTO> list = dao.attendance(id);
		
		model.addAttribute("list", list);
	}
	
	// 나의 근무 조회
	@Override
	public void attendanceWeek(HttpServletRequest req, Model model) {
		System.out.println("service : 나의 근무 조회");	
		
	}

	// 월 근태 현황
	@Override
	public void attendanceMonth(HttpServletRequest req, Model model) {
		System.out.println("service : 월 근태 현황");	
		
	}

	// 내 연차 내역
	@Override
	public void attendanceRestInfo(HttpServletRequest req, Model model) {
		System.out.println("service : 내 연차 내역");	
		
	}

	// 연장 근무 신청 
	@Override
	public void request_over(HttpServletRequest req, Model model) {
		System.out.println("service : 연장 근무 신청 ");	
		
	}

	// 연차 반차 신청
	@Override
	public void request_rest(HttpServletRequest req, Model model) {
		System.out.println("service : 연차 반차 신청");	
		
	}

	// 부서 근태 내역
	@Override
	public void attendDepart(HttpServletRequest req, Model model) {
		System.out.println("service : 부서 근태 내역");	
		
	}

	// 부서 연차 내역
	@Override
	public void annualDepart(HttpServletRequest req, Model model) {
		System.out.println("service : 부서 연차 내역");	
		
	}

	// 전사 근태 내역
	@Override
	public void attendGrb(HttpServletRequest req, Model model) {
		System.out.println("service : 전사 근태 내역");	
		
	}

	// 전사 연차 내역
	@Override
	public void annualGrb(HttpServletRequest req, Model model) {
		System.out.println("service : 전사 연차 내역");	
		
	}
	
	

}

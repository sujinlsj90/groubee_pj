package com.spring.tutorial.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.tutorial.service.AttendanceServiceImpl;


@Controller
public class AttendanceController {

	@Autowired
	AttendanceServiceImpl service;
	
	private static final Logger logger = LoggerFactory.getLogger(AttendanceController.class);

	// 나의 근태 현황 (일일 근태)
	@RequestMapping("attendance.at")
	public String attendance(HttpServletRequest req, Model model) 
			throws ServletException, IOException{
		logger.info("controller > attendance.at");
		service.attendance(req, model);
		
		return "attendance/attendance";
	}
	
	// 업무 시작
	@RequestMapping("attendin.at")
	public String attendin(HttpServletRequest req, HttpServletResponse res, Model model) 
			throws ServletException, IOException{
		logger.info("controller > attendin.at");
		service.attendin(req, model);
		
		String viewPage = req.getContextPath() + "/attendance.at";
		res.sendRedirect(viewPage);
		return null;
	}
	
	// 업무 종료
	@RequestMapping("attendout.at")
	public String attendout(HttpServletRequest req, HttpServletResponse res, Model model) 
			throws ServletException, IOException{
		logger.info("controller > attendout.at");
		service.attendout(req, model);

		String viewPage = req.getContextPath() + "/attendance.at";
		res.sendRedirect(viewPage);
		return null;
	}
	
	// 연장 시작
	@RequestMapping("overin.at")
	public String overin(HttpServletRequest req, HttpServletResponse res, Model model) 
			throws ServletException, IOException{
		logger.info("controller > overin.at");
		service.overin(req, model);

		String viewPage = req.getContextPath() + "/attendance.at";
		res.sendRedirect(viewPage);
		return null;
	}	
	
	// 연장 종료
	@RequestMapping("overout.at")
	public String overout(HttpServletRequest req, HttpServletResponse res, Model model) 
			throws ServletException, IOException{
		logger.info("controller > overout.at");
		service.overout(req, model);

		String viewPage = req.getContextPath() + "/attendance.at";
		res.sendRedirect(viewPage);
		return null;
	}		
	
	// 나의 근무 조회 (주간 근태)
	@RequestMapping("attendanceWeek.at")
	public String attendanceWeek(HttpServletRequest req, Model model) 
			throws ServletException, IOException {
		logger.info("controller > attendanceWeek.at");		
		
		return "attendance/attendanceWeek";
	}
	
	// 월 근태 현황
	@RequestMapping("attendanceMonth.at")
	public String attendanceMonth(HttpServletRequest req, Model model) 
			throws ServletException, IOException {
		logger.info("controller > attendanceMonth.at");
		return "attendance/attendanceMonth";
	}
	
	// 나의 연차 내역
	@RequestMapping("attendanceRestInfo.at")
	public String attendanceRestInfo(HttpServletRequest req, Model model) 
			throws ServletException, IOException {
		logger.info("controller > attendanceRestInfo.at");
		return "attendance/attendanceRestInfo";
	}	

	// 연장 근무 신청
	@RequestMapping("request_over.at")
	public String request_over(HttpServletRequest req, Model model) 
			throws ServletException, IOException {
		logger.info("controller > request_over.at");
		return "attendance/request_over";
	}
	
	// 연차 반차 신청
	@RequestMapping("request_rest.at")
	public String request_rest(HttpServletRequest req, Model model) 
			throws ServletException, IOException {
		logger.info("controller > request_rest.at");
		return "attendance/request_rest";
	}	
	
	// 부서 근태 현황
	@RequestMapping("departWeek.at")
	public String departWeek(HttpServletRequest req, Model model) 
			throws ServletException, IOException {
		logger.info("controller > departWeek.at");
		return "attendance/departWeek";
	}
	
	// 부서 근태 통계
	@RequestMapping("departMonth.at")
	public String departMonth(HttpServletRequest req, Model model) 
			throws ServletException, IOException {
		logger.info("controller > departMonth.at");
		return "attendance/departMonth";
	}
	// 부서 연차 현황
	@RequestMapping("departRestWeek.at")
	public String departRestWeek(HttpServletRequest req, Model model) 
			throws ServletException, IOException {
		logger.info("controller > departRestWeek.at");
		return "attendance/departRestWeek";
	}
	
	// 부서 연차 통계
	@RequestMapping("departRestMonth.at")
	public String departRestMonth(HttpServletRequest req, Model model) 
			throws ServletException, IOException {
		logger.info("controller > departRestMonth.at");
		return "attendance/departRestMonth";
	}	
	
	// 전사 근태 현황
	@RequestMapping("grbWeek.at")
	public String grbWeek(HttpServletRequest req, Model model) 
			throws ServletException, IOException {
		logger.info("controller > grbWeek.at");
		return "attendance/grbWeek";
	}
	
	// 전사 근태 통계
	@RequestMapping("grbMonth.at")
	public String grbMonth(HttpServletRequest req, Model model) 
			throws ServletException, IOException {
		logger.info("controller > grbMonth.at");
		return "attendance/grbMonth";
	}
	// 전사 연차 현황
	@RequestMapping("grbRestWeek.at")
	public String grbRestWeek(HttpServletRequest req, Model model) 
			throws ServletException, IOException {
		logger.info("controller > grbRestWeek.at");
		return "attendance/grbRestWeek";
	}
	
	// 전사 연차 사용
	@RequestMapping("grbRestMonth.at")
	public String grbRestMonth(HttpServletRequest req, Model model) 
			throws ServletException, IOException {
		logger.info("controller > grbRestMonth.at");
		return "attendance/grbRestMonth";
	}	
}

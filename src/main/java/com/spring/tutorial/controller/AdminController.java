package com.spring.tutorial.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {
	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
	
	@RequestMapping("adminMain.ad")
	public String approvallist(HttpServletRequest req, Model model) 
			throws ServletException, IOException{
		logger.info("AdminController -> adminMain.ap");
		return "admin/index";
	}
	
	
	@RequestMapping("adAttend.ad")
	public String adAttend(HttpServletRequest req, Model model) 
			throws ServletException, IOException{
		logger.info("AdminController -> adminMain.ap");
		return "admin/adAttend/adAttend";
	}
	
	
	//부서미지정
	@RequestMapping("adDepart.ad")
	public String adDepart(HttpServletRequest req, Model model) 
			throws ServletException, IOException{
		logger.info("AdminController -> adminMain.ap");
		return "admin/adDepart/adDepart";
	}
	
	
	//부서설계
	@RequestMapping("adDepart2.ad")
	public String adDepart2(HttpServletRequest req, Model model) 
			throws ServletException, IOException{
		logger.info("AdminController -> adDepart2.ap");
		return "admin/adDepart/adDepart2";
	}
	
	
	//부서원생성
	@RequestMapping("adDepart3.ad")
	public String adDepart3(HttpServletRequest req, Model model) 
			throws ServletException, IOException{
		logger.info("AdminController -> adDepart3.ap");
		return "admin/adDepart/adDepart3";
	}
	
	
	//인사관리-사원통합
	@RequestMapping("adHr.ad")
	public String adHr(HttpServletRequest req, Model model) 
			throws ServletException, IOException{
		logger.info("AdminController -> adHr.ap");
		return "admin/adHr/adHr";
	}
	
	//인사관리-사원등록
	@RequestMapping("adHr2.ad")
	public String adHr2(HttpServletRequest req, Model model) 
			throws ServletException, IOException{
		logger.info("AdminController -> adHr2.ap");
		return "admin/adHr/adHr2";
	}
	
	
	//보안관리-관리자기능설정
	@RequestMapping("adSecure.ad")
	public String adSecure(HttpServletRequest req, Model model) 
			throws ServletException, IOException{
		logger.info("AdminController -> adSecure.ap");
		return "admin/adSecure/adSecure";
	}
	
	//보안관리-기능접근제한
	@RequestMapping("adSecure2.ad")
	public String adSecure2(HttpServletRequest req, Model model) 
			throws ServletException, IOException{
		logger.info("AdminController -> adSecure2.ap");
		return "admin/adSecure/adSecure2";
	}
	
	
	//서비스관리-메뉴운영권한
	@RequestMapping("adService.ad")
	public String adService(HttpServletRequest req, Model model) 
			throws ServletException, IOException{
		logger.info("AdminController -> adService.ap");
		return "admin/adService/adService";
	}
	
	
	//서비스관리-서비스메뉴관리
	@RequestMapping("adService2.ad")
	public String adService2(HttpServletRequest req, Model model) 
			throws ServletException, IOException{
		logger.info("AdminController -> adService2.ap");
		return "admin/adService/adService2";
	}
	
	
	//서비스관리-팝업공지
	@RequestMapping("adService3.ad")
	public String adService3(HttpServletRequest req, Model model) 
			throws ServletException, IOException{
		logger.info("AdminController -> adService3.ap");
		return "admin/adService/adService3";
	}
	
	

}

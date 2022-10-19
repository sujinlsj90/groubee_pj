package com.spring.tutorial.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.tutorial.service.ApprovalServiceImpl;
import com.spring.tutorial.service.CommonServiceImpl;


@Controller
public class CommonController {
	@Autowired
	CommonServiceImpl service;
	ApprovalServiceImpl service_ap;
	
	private static final Logger logger = LoggerFactory.getLogger(CommonController.class);
	
	// 메인 페이지
	@RequestMapping("index.co")
	public String index(HttpServletRequest req, Model model) 
			throws ServletException, IOException{
		logger.info("Maincontroller > index.co");
		return "common/index";
	}
	
	// 로그인
	@RequestMapping("login.co")
	public String login(HttpServletRequest req, Model model) 
			throws ServletException, IOException{
		logger.info("Maincontroller > login.co");
		
		return "common/login";
	}
	
	// 사원 등록
	@RequestMapping("join.co")
	public String join(HttpServletRequest req, Model model) 
			throws ServletException, IOException{
		logger.info("Maincontroller > join.co");
		
		return "common/join";
	}
	
	// 사원 등록 처리
	@RequestMapping("join_action.co")
	public String join_aciton(HttpServletRequest req, Model model) 
			throws ServletException, IOException{
		logger.info("Maincontroller > join_aciton.co");
		
		service.signInAction(req, model);
		return "common/join_action";
	}
	
	
	// 이메일 로그인
	@RequestMapping("email_login.co")
	public String email_login(HttpServletRequest req, Model model) 
			throws ServletException, IOException{
		logger.info("Maincontroller > email_login.co");
		
		return "common/email_login";
	}
	
	// 로그아웃
    @RequestMapping("logout.do")
    public String logout(HttpServletRequest req) {
       logger.info("Maincontroller > logout.do]");
       
       req.getSession().invalidate(); // 세션 삭제
       return "common/login";
    }
    
    // 시큐리티 - 가입성공시 이메일인증을 위해 이메일 인증 후 enabled 권한을 1로 update
    // CustomerDAOImpl의 sendEmail(String email, String key)에서 호출
    @RequestMapping("emailChkAction.co")
    public String emailChk(HttpServletRequest req,  Model model) {
       logger.info("Maincontroller > emailChkAction.do");
       
       service.emailChkAction(req, model);
       return "common/emailChkAction";
    } 
    
}

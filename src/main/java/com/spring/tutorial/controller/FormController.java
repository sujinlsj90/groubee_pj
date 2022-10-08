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
public class FormController {

	private static final Logger logger = LoggerFactory.getLogger(FormController.class);
	
	//결재양식1
	@RequestMapping("form1.fo")
	public String form1(HttpServletRequest req, Model model) 
			throws ServletException, IOException{
		logger.info("ApprovalController -> form1.fo");
		return "approval/approval/forms/form_1";
	}
	
	//결재양식2
	@RequestMapping("form2.fo")
	public String form2(HttpServletRequest req, Model model) 
			throws ServletException, IOException{
		logger.info("ApprovalController -> form2.fo");
		return "approval/approval/forms/form_2";
	}
	
	//결재양식3
	@RequestMapping("form3.fo")
	public String form3(HttpServletRequest req, Model model) 
			throws ServletException, IOException{
		logger.info("ApprovalController -> form3.fo");
		return "approval/approval/forms/form_3";
	}
	
	//결재양식4
	@RequestMapping("form4.fo")
	public String form4(HttpServletRequest req, Model model) 
			throws ServletException, IOException{
		logger.info("ApprovalController -> form4.fo");
		return "approval/approval/forms/form_4";
	}
	
	//결재양식5
	@RequestMapping("form5.fo")
	public String form5(HttpServletRequest req, Model model) 
			throws ServletException, IOException{
		logger.info("ApprovalController -> form5.ap");
		return "approval/approval/forms/form_5";
	}
	
	//결재양식6
	@RequestMapping("form6.fo")
	public String form6(HttpServletRequest req, Model model) 
			throws ServletException, IOException{
		logger.info("ApprovalController -> form6.ap");
		return "approval/approval/forms/form_6";
	}
	
	//결재양식_완료
	@RequestMapping("finishform_1.fo")
	public String finishform_1(HttpServletRequest req, Model model) 
			throws ServletException, IOException{
		logger.info("ApprovalController -> finishform_1.ap");
		return "approval/approval/confirmedForm/finishform_1";
	}
	
}

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
public class ApprovalController {

	private static final Logger logger = LoggerFactory.getLogger(ApprovalController.class);
	
	@RequestMapping("approvallist.ap")
	public String approvallist(HttpServletRequest req, Model model) 
			throws ServletException, IOException{
		logger.info("ApprovalController -> approvallist.ap");
		return "approval/approval/tables/onapproval";
	}
	
	//양식선택
	@RequestMapping("selectform.ap")
	public String selectform(HttpServletRequest req, Model model) 
			throws ServletException, IOException{
		logger.info("ApprovalController -> selectform.ap");
		return "approval/approval/action/selectform";
	}
	
	//기안>진행문서리스트
	@RequestMapping("onapproval.ap")
	public String onapproval(HttpServletRequest req, Model model) 
			throws ServletException, IOException{
		logger.info("ApprovalController -> onapproval.ap");
		return "approval/approval/tables/onapproval";
	}
	
	//기안>완료문서리스트
	@RequestMapping("comapproval.ap")
	public String comapproval(HttpServletRequest req, Model model) 
			throws ServletException, IOException{
		logger.info("ApprovalController -> comapproval.ap");
		return "approval/approval/tables/comapproval";
	}
	
	//기안>반려문서리스트
	@RequestMapping("rejapproval.ap")
	public String rejapproval(HttpServletRequest req, Model model) 
			throws ServletException, IOException{
		logger.info("ApprovalController -> rejapproval.ap");
		return "approval/approval/tables/comapproval";
	}
	
	
	// 임시보관함
	@RequestMapping("templist.ap")
	public String templist(HttpServletRequest req, Model model) 
			throws ServletException, IOException{
		logger.info("ApprovalController -> templist.ap");
		return "approval/approval/templist";
	}
	
	//참조(회람)문서함
	@RequestMapping("referlist.ap")
	public String referlist(HttpServletRequest req, Model model) 
			throws ServletException, IOException{
		logger.info("ApprovalController -> referlist.ap");
		return "approval/approval/referlist";
	}
	
	
	// 결재문서함
	@RequestMapping("checkoutlist.ap")
	public String checkoutlist(HttpServletRequest req, Model model) 
			throws ServletException, IOException{
		logger.info("ApprovalController -> checkoutlist.ap");
		return "approval/approval/checkoutlist";
	}
	
	
	// 결재예정문서함
	@RequestMapping("prechecklist.ap")
	public String prechecklist(HttpServletRequest req, Model model) 
			throws ServletException, IOException{
		logger.info("ApprovalController -> prechecklist.ap");
		return "approval/approval/prechecklist";
	}
	
	
	//부서문서함
	@RequestMapping("departdoclist.ap")
	public String departdoclist(HttpServletRequest req, Model model) 
			throws ServletException, IOException{
		logger.info("ApprovalController -> departdoclist.ap");
		return "approval/approval/departdoclist";
	}
	
	//카테고리별문서함
	@RequestMapping("catdoclist.ap")
	public String catdoclist(HttpServletRequest req, Model model) 
			throws ServletException, IOException{
		logger.info("ApprovalController -> catdoclist.ap");
		return "approval/approval/catdoclist";
	}
	
	
	//결재라인수정(결재정보)
	@RequestMapping("selectmemberLine.ap")
	public String selectmemberLine(HttpServletRequest req, Model model) 
			throws ServletException, IOException{
		logger.info("ApprovalController -> selectmember_Line.ap");
		return "approval/approval/action/selectmemberline";
	}
	
	
	
}

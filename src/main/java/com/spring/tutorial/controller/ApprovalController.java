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

import com.spring.tutorial.service.ApprovalServiceImpl;


@Controller
public class ApprovalController {
	@Autowired
	ApprovalServiceImpl service;
	
	private static final Logger logger = LoggerFactory.getLogger(ApprovalController.class);
	
	//기안함
	@RequestMapping("approvallist.ap")
	public String approvallist(HttpServletRequest req, Model model) 
			throws ServletException, IOException{
		logger.info("ApprovalController -> approvallist.ap");
		service.onapprovalAction(req, model);
		return "approval/approval/tables/onapproval";
	}
	
	//새결제진행-경제정보선택리스트
	@RequestMapping("selectform.ap")
	public String selectform(HttpServletRequest req, Model model) 
			throws ServletException, IOException{
		logger.info("ApprovalController -> selectform.ap");
		service.selectFormList(req, model); 
		return "approval/approval/action/selectform";
	}
	
	//기안>진행문서리스트
	@RequestMapping("onapproval.ap")
	public String onapproval(HttpServletRequest req, Model model) 
			throws ServletException, IOException{
		logger.info("ApprovalController -> onapproval.ap");
		service.onapprovalAction(req, model);
		return "approval/approval/tables/onapproval";
	}
	
	//기안>완료문서리스트
	@RequestMapping("comapproval.ap")
	public String comapproval(HttpServletRequest req, Model model) 
			throws ServletException, IOException{
		logger.info("ApprovalController -> comapproval.ap");
		service.comapprovalAction(req, model);
		return "approval/approval/tables/comapproval";
	}
	
	//기안>반려문서리스트
	@RequestMapping("rejapproval.ap")
	public String rejapproval(HttpServletRequest req, Model model) 
			throws ServletException, IOException{
		logger.info("ApprovalController -> rejapproval.ap");
		service.rejapprovalAction(req, model);
		return "approval/approval/tables/comapproval";
	}
	
	
	// 임시보관함
	@RequestMapping("templist.ap")
	public String templist(HttpServletRequest req, Model model) 
			throws ServletException, IOException{
		logger.info("ApprovalController -> templist.ap");
		service.templistAction(req,model);
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
	
	
	//결재정보수정페이지
	@RequestMapping("selectmemberLine.ap")
	public String selectmemberLine(HttpServletRequest req, Model model) 
			throws ServletException, IOException{
		logger.info("ApprovalController -> selectmember_Line.ap");
		return "approval/approval/action/selectmemberline";
	}
	
	
	//결재정보Insert
	@RequestMapping("selectAppAction.ap")
	public void selectAppAction(HttpServletRequest req, HttpServletResponse res, Model model) 
			throws ServletException, IOException{
		logger.info("ApprovalController -> selectAppAction.ap");
		service.approvalInfoInsertAction(req, model);
		String viewPage = req.getContextPath() + "/selectform.ap";
		res.sendRedirect(viewPage);
	}
	
	//결재라인정보 뿌리기
	@RequestMapping("selectLineView.ap")
	public String selectLineView(HttpServletRequest req, Model model) 
			throws ServletException, IOException{
		logger.info("ApprovalController -> selectLineView.ap");
		service.selectLineViewAction(req, model);
		return "approval/approval/action/selectline_view";
	}
	
	
	//협조, 결재 선택하기
	@RequestMapping("changeco_approve.ap")
	public void changeco_approve(HttpServletRequest req, HttpServletResponse res, Model model) 
			throws ServletException, IOException{
		logger.info("ApprovalController -> changeco_approve.ap");
		service.changecoApproveAction(req, model);
		String viewPage = req.getContextPath() + "/selectform.ap";
		res.sendRedirect(viewPage);
	}
	
	//결재라인 개별삭제
	@RequestMapping("deleteco_approve.ap")
	public void deleteco_approve(HttpServletRequest req, HttpServletResponse res, Model model) 
			throws ServletException, IOException{
		logger.info("ApprovalController -> deleteco_approve.ap");
		service.deleteco_approveAction(req, model);
		String viewPage = req.getContextPath() + "/selectform.ap";
		res.sendRedirect(viewPage);
	}
	
	
	//임시저장
	//기안문 작성 및 임시보관 완료 시 ActionPage
	@RequestMapping("tempSave.ap")
	public String tempSave(HttpServletRequest req, Model model) 
			throws ServletException, IOException{
		logger.info("ApprovalController -> tempSave.ap");
		service.tempSaveAction(req, model);
		return "approval/approval/action/draftInsertAction";
	}
	
	//기안하기
	//기안문 작성 및 기안 완료 시 ActionPage
	@RequestMapping("approvereq.ap")
	public String approvereq(HttpServletRequest req, Model model) 
			throws ServletException, IOException{
		logger.info("ApprovalController -> approvereq.ap");
		service.approvereqAction(req, model);
		return "approval/approval/action/draftInsertAction";
	}
	
	
	
}

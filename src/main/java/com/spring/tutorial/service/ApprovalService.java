package com.spring.tutorial.service;


import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;


public interface ApprovalService {
	
	//결재정보 리스트
	public void selectFormList(HttpServletRequest req, Model model);
	
	//결재정보 저장
	public void approvalInfoInsertAction(HttpServletRequest req, Model model);
	
	//결재라인정보뿌리기
	public void selectLineViewAction(HttpServletRequest req, Model model);
	
	//결재, 협조 수정하기
	public void changecoApproveAction(HttpServletRequest req, Model model);
	
	//결재라인 개별삭제
	public void deleteco_approveAction(HttpServletRequest req, Model model);
	
	//임시보관하기
	public void tempSaveAction(HttpServletRequest req, Model model);
	
	//기안하기
	public void approvereqAction(HttpServletRequest req, Model model);
	
	//기안-진행문서함리스트
	public void onapprovalAction(HttpServletRequest req, Model model);
	
	//기안-완료문서함리스트
	public void comapprovalAction(HttpServletRequest req, Model model);
	
	//기안-반려문서함리스트
	public void rejapprovalAction(HttpServletRequest req, Model model);
	
	//임시보관함리스트
	public void templistAction(HttpServletRequest req, Model model);
	
}

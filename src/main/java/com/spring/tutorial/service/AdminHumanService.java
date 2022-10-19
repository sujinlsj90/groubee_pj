package com.spring.tutorial.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.ui.Model;

//관리자 인사관리서비스
public interface AdminHumanService {
	
	//전체인사관리
	public void memberInfoAction(HttpServletRequest req, Model model);
	
	//개인정보 상세페이지
	public void usersDetailAction(HttpServletRequest req, Model model);
	
	//개인정보 수정
	public void usersUpdateAction(HttpServletRequest req,Model model);
	
	//개인정보 삭제
	public void usersDeleteAction(HttpServletRequest req, HttpServletResponse res  ,Model model);
	
	//전체부서정보
	public void departsAction(HttpServletRequest req,Model model);

}

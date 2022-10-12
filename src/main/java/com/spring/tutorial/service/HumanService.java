package com.spring.tutorial.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

//인사관리
public interface HumanService {
	
	//기본정보
	public void memberInfo(HttpServletRequest req, Model model);
	
	//조직도 
	public void groubDepart(HttpServletRequest req, Model model);
	
	//조직도팀
	public void groubTeamInfo(HttpServletRequest req, Model model);
	
	//조직도 유저
//	public void groubMember(HttpServletRequest req, Model model);
	
	//인사평가
	public void memberAssessment(HttpServletRequest req, Model model);
	
	//직무&담당
	public void jobsfao(HttpServletRequest req, Model model);
	
	//개인프로필
	public void myHumanInfo(HttpServletRequest req, Model model);

}

package com.spring.tutorial.service;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.spring.tutorial.dao.HumanDAOImpl;
import com.spring.tutorial.dto.CommonDTO;
import com.spring.tutorial.dto.DepartDTO;
import com.spring.tutorial.dto.PersonnelDTO;
import com.spring.tutorial.dto.TeamDTO;

//인사관린
@Service
public class HumanServiceImpl implements HumanService{
	
	@Autowired
	HumanDAOImpl dao;
	

	
	//기본정보
	@Override
	public void memberInfo(HttpServletRequest req, Model model)  {
		System.out.println("서비스 -> 기본정보");
		
		String id = (String) req.getSession().getAttribute("memberID");
		
		CommonDTO dto =  dao.selecthuman(id);
		
		model.addAttribute("dto", dto);
	}
	
	
	//조직도 부서
	@Override
	public void groubDepart(HttpServletRequest req, Model model) {
		System.out.println("서비스 -> 조직도 부서");
		
		List<DepartDTO> list = dao.groubdepart();
		
		model.addAttribute("list", list);
		
	}
	

	//조직도 팀
	@Override
	public void groubTeamInfo(HttpServletRequest req, Model model) {
		System.out.println("서비스 -> 조직도 팀");
		
		
		
		List<TeamDTO> list2 = dao.groubTeamInfo();
		
		model.addAttribute("list2", list2);
		
	}
	
	//조직도 유저
//	@Override
//	public void groubMember(HttpServletRequest req, Model model) {
//		
//		
//	}


	//인사평가
	@Override
	public void memberAssessment(HttpServletRequest req, Model model) {
		System.out.println(" 서비스 -> 인사평가");
		
		String id = (String) req.getSession().getAttribute("memberID");
		
		PersonnelDTO dto2 = dao.assessment(id);
		
		model.addAttribute("dto2", dto2);
		
	}


	//직무&담당
	@Override
	public void jobsfao(HttpServletRequest req, Model model) {
		System.out.println("서비스 -> 직무&담당");
		
		String id = (String) req.getSession().getAttribute("memberID");
		
		TeamDTO dto3 = dao.jobsfao(id);
		
		model.addAttribute("dto3", dto3);
		
		
		
	}

	//개인프로필
	@Override
	public void myHumanInfo(HttpServletRequest req, Model model) {
		System.out.println("서비스 -> 개인프로필");
		
		String id = (String)req.getSession().getAttribute("memberID");
		
		CommonDTO dto = dao.myHuman(id);
		
		model.addAttribute("dto", dto);
		
	}



}

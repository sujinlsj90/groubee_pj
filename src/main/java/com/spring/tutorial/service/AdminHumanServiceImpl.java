package com.spring.tutorial.service;

import java.sql.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.spring.tutorial.dao.AdminHumanDAOImpl;
import com.spring.tutorial.dto.CommonDTO;
import com.spring.tutorial.dto.DepartDTO;

@Service
public class AdminHumanServiceImpl implements AdminHumanService{
	
	@Autowired
	AdminHumanDAOImpl dao;
	
	//관리자 전체 정보 
	@Override
	public void memberInfoAction(HttpServletRequest req, Model model) {
		System.out.println("관리자 서비스 -> memberInfoAction");
		
		
		List<CommonDTO> list = dao.membersInfo();
		
		model.addAttribute("list", list);
		
	}

	//개인정보 상세페이지
	@Override
	public void usersDetailAction(HttpServletRequest req, Model model) {
		System.out.println("관리자서비스 -> 개인정보 상세페이지");
		
		String id = (String)req.getParameter("id");
		System.out.println(id);
		CommonDTO dto = dao.usersDetail(id);
		
		model.addAttribute("dto", dto);
	}

	//개인정보 수정
	@Override
	public void usersUpdateAction(HttpServletRequest req, Model model) {
		System.out.println("관리자 서비스 -> 개인정보 수정");
		
		
		CommonDTO dto = new CommonDTO();
		dto.setId(req.getParameter("id"));
		dto.setPwd(req.getParameter("pwd"));
		dto.setRepwd(req.getParameter("repwd"));
		dto.setName(req.getParameter("name"));
		dto.setEng_name(req.getParameter("eng_name"));
		dto.setJumin1(req.getParameter("jumin1"));
		dto.setJumin2(req.getParameter("jumin2"));
		dto.setContract(req.getParameter("contract"));
		dto.setHireday(Date.valueOf(req.getParameter("hireday")));
		dto.setEtc(req.getParameter("etc"));
		
		//내부 이메일 
		String email_in1 = req.getParameter("email_in1");
		String email_in2 = req.getParameter("email_in2");
		String email_in = email_in1 + "@" + email_in2 ;
		dto.setEmail_in(email_in);
		dto.setAddress(req.getParameter("address"));
		dto.setGender(req.getParameter("gender"));
		dto.setMarry(req.getParameter("marry"));
		dto.setFrgn(req.getParameter("frgn"));
		dto.setNation(req.getParameter("nation"));
		
		//휴대폰
		String tel = "";
		String tel1 = req.getParameter("tel1");
		String tel2 = req.getParameter("tel2");
		String tel3 = req.getParameter("tel3");
		System.out.println(tel1 + tel2 + tel3);
		if(!tel1.equals("") && !tel2.equals("") && !tel3.equals("")) {
			tel = tel1 + "-" + tel2 + "-" + tel3; // 010-1111-2222
		}
		dto.setTel(tel);
		
		//회사 내선번호
		String in_tel = "";
		String in_tel1 = req.getParameter("in_tel1");
		String in_tel2 = req.getParameter("in_tel2");
		String in_tel3 = req.getParameter("in_tel3");
		System.out.println(in_tel1 + in_tel2 + in_tel3);
		if(!in_tel1.equals("") && !in_tel2.equals("") && !in_tel3.equals("")) {
			in_tel = in_tel1 + "-" + in_tel3 + "-" + in_tel3; // 010-1111-2222
		}
		dto.setIn_tel(in_tel);
		
		//외부 이메일
		String email_out1 = req.getParameter("email_out1");
		String email_out2= req.getParameter("email_out2");
		String email_out = email_out1 + "@" + email_out2 ;
		dto.setEmail_out(email_out);
		dto.setDepart_name(req.getParameter("depart_name"));
		dto.setRank(req.getParameter("rank"));
		
		System.out.println("dto : " + dto);
		int updateCnt = dao.usersUpdate(dto);
		
		model.addAttribute("updateCnt", updateCnt);
		
	}

	//개인정보 삭제
	@Override
	public void usersDeleteAction(HttpServletRequest req, HttpServletResponse res ,Model model) {
		System.out.println("관리자 서비스 -> usersDeleteAction");
		
		String id = req.getParameter("id");
		
		 int deleteCnt = dao.usersDelete(id);
		 
		 model.addAttribute("deleteCnt", deleteCnt);
	}

	//전체부서명
	@Override
	public void departsAction(HttpServletRequest req, Model model) {
		System.out.println("관리자서비스 -> 전체부서명");
		
		List<DepartDTO> list = dao.departsInfo();
		
		model.addAttribute("list", list);
		
	}

<<<<<<< HEAD
	//부서 상세
	@Override
	public void departDetailAction(HttpServletRequest req, HttpServletResponse res, Model model) {
		System.out.println("관리자 서비스 -> 부서상세 ");
		
		String id = req.getParameter("id");
		
		DepartDTO dto = dao.departDetail(id);
		
		model.addAttribute("dto", dto);
	}

	//부서 수정
	@Override
	public void departUpdateAction(HttpServletRequest req, HttpServletResponse res, Model model) {
		System.out.println("관리자 서비스 -> 부서 수정");
		String id = req.getParameter("id");
		
		DepartDTO dto = new DepartDTO();
		dto.setId(id);
		dto.setDepart_name(req.getParameter("depart_name"));
		dto.setTeam_name(req.getParameter("team_name"));
		
		int updateCnt = dao.departUpdate(dto);
		
		model.addAttribute("updateCnt",updateCnt );
				
		
=======
	//부서 수정
	@Override
	public void departUpdateAction(HttpServletRequest req, HttpServletResponse res, Model model) {
		System.out.println("관리자 서비스 -> 부서수정 ");
		
		String depart_name = req.getParameter("depart_name");
		
		dao.departUpdate(depart_name);
		
		model.addAttribute("depart_name", depart_name);
>>>>>>> c3a0afac0f9d9efa03819f80da60a2059002fd78
	}

}

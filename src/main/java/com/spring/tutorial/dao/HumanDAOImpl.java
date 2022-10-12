package com.spring.tutorial.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.tutorial.dto.CommonDTO;
import com.spring.tutorial.dto.DepartDTO;
import com.spring.tutorial.dto.PersonnelDTO;
import com.spring.tutorial.dto.TeamDTO;

//인사관리
@Repository
public class HumanDAOImpl implements HumanDAO{
	
	@Autowired
	SqlSession sqlSession;

	//기본정보
	@Override
	public CommonDTO selecthuman(String id) {
		System.out.println("dao -> 기본정보");
		
		CommonDTO dto  = sqlSession.selectOne("com.spring.tutorial.dao.HumanDAO.selecthuman", id);
		
		return dto;
		
	}

	//인사평가
	@Override
	public PersonnelDTO assessment(String id) {
		System.out.println("dao -> 인사평가");
		
		PersonnelDTO dto = sqlSession.selectOne("com.spring.tutorial.dao.HumanDAO.assessment", id);
		
		return dto;
	}

	//직무 & 담당
	@Override
	public TeamDTO jobsfao(String id) {
		System.out.println("dao -> 직무 담당");
		
		TeamDTO dto = sqlSession.selectOne("com.spring.tutorial.dao.HumanDAO.jobsfao", id);
		
		return dto;
	}

	//개인프로필
	@Override
	public CommonDTO myHuman(String id) {
		System.out.println(" dao -> 개인프로필");
		
		CommonDTO dto = sqlSession.selectOne("com.spring.tutorial.dao.HumanDAO.myHuman", id);
		
		return dto;
	}
	
	//조직도 부서
	@Override
	public List<DepartDTO> groubdepart() {
		System.out.println("dao -> 조직도 부서");
		
		List<DepartDTO> list = sqlSession.selectList("com.spring.tutorial.dao.HumanDAO.groubdepart");
		
		return list;
	}

	
	//조직도 팀
	@Override
	public List<TeamDTO> groubTeamInfo(String depart_name) {
		System.out.println("dao -> 조직도 팀 ");
		
		List<TeamDTO> list = sqlSession.selectList("com.spring.tutorial.dao.HumanDAO.groubTeamInfo", depart_name);
		
		return list;
	}
	

}

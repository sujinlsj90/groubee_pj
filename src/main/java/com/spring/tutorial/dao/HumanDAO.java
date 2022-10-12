package com.spring.tutorial.dao;

import java.util.List;

import com.spring.tutorial.dto.CommonDTO;
import com.spring.tutorial.dto.DepartDTO;
import com.spring.tutorial.dto.PersonnelDTO;
import com.spring.tutorial.dto.TeamDTO;

//인사관리
public interface HumanDAO {
	
	
	//기본정보
	public CommonDTO selecthuman(String id);
	
	//조직도 부서
	public List<DepartDTO> groubdepart(); 
	
	//조직도 팀
	public List<TeamDTO> groubTeamInfo();
	
	
	//인사평가
	public PersonnelDTO assessment(String id);
	
	//직무&담당
	public TeamDTO jobsfao(String id);
	
	//개인프로필
	public CommonDTO myHuman(String id);
	

}

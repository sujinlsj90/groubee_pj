package com.spring.tutorial.dao;

import java.util.List;

import com.spring.tutorial.dto.CommonDTO;
import com.spring.tutorial.dto.DepartDTO;

//관리자 인사관리dao
public interface AdminHumanDAO {
	
	//인사관리 
	public List<CommonDTO> membersInfo();
	
	//개인정보 상세페이지
	public CommonDTO usersDetail(String id);
	
	//개인정보 수정
	public int usersUpdate(CommonDTO dto);
	
	//개인정보 삭제
	public int usersDelete(String id);
	
	//전체부서명
	public List<DepartDTO> departsInfo();
	
	//부서수정
	public int departUpdate(String depart_name);
	
	

}

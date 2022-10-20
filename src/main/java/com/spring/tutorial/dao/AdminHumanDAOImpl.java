package com.spring.tutorial.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.tutorial.dto.CommonDTO;
import com.spring.tutorial.dto.DepartDTO;

@Repository
public class AdminHumanDAOImpl implements AdminHumanDAO{
	
	@Autowired
	SqlSession sqlSession;

	//관리자 전체인사정보
	@Override
	public List<CommonDTO> membersInfo() {
		System.out.println("관리자 dao -> membersInfo");
		
		List<CommonDTO> list =sqlSession.selectList("com.spring.tutorial.dao.AdminHumanDAO.membersInfo" );
		
		return list;
	}

	//개인정보 상세페이지
	@Override
	public CommonDTO usersDetail(String id) {
		System.out.println("관리자dao -> 개인정보 수정");
		
		CommonDTO dto = sqlSession.selectOne("com.spring.tutorial.dao.AdminHumanDAO.usersDetail",id);
		
		return dto;
	}

	//개인정보 수정페이지
	@Override
	public int usersUpdate(CommonDTO dto) {
		int updateCnt =  sqlSession.update("com.spring.tutorial.dao.AdminHumanDAO.usersUpdate", dto);
		return updateCnt;
		
	}

	//개인정보 삭제
	@Override
	public int usersDelete(String id) {
		System.out.println("관리자dao ->  개인정보 삭제");
		
	  int deleteCnt = sqlSession.update("com.spring.tutorial.dao.AdminHumanDAO.usersDelete",id);
	  return deleteCnt;
	}

	//전체부서명 
	@Override
	public List<DepartDTO> departsInfo() {
		System.out.println("관리자dao -> 전체부서명");
		
		 List<DepartDTO> list = sqlSession.selectList("com.spring.tutorial.dao.AdminHumanDAO.departsInfo");
		return list;
	}

<<<<<<< HEAD
	//부서 상세
	@Override
	public DepartDTO departDetail(String id) {
		System.out.println("관리자dao -> 부서상세");
		
		DepartDTO dto = sqlSession.selectOne("com.spring.tutorial.dao.AdminHumanDAO.departDetail", id);
		return dto;
	}

	//부서 수정
	@Override
	public int departUpdate(DepartDTO dto) {
		System.out.println("관리자 dao -> 부서 수정");
		
		int updateCnt = sqlSession.update("com.spring.tutorial.dao.AdminHumanDAO.departUpdate", dto);
=======
	//부서 수정
	@Override
	public int departUpdate(String depart_name) {
		System.out.println("관리자dao -> 부서수정");
		
	    int updateCnt = sqlSession.update("com.spring.tutorial.dao.AdminHumanDAO.departUpdate", depart_name);
>>>>>>> c3a0afac0f9d9efa03819f80da60a2059002fd78
		return updateCnt;
	}

}

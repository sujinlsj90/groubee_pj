package com.spring.tutorial.dao;
import java.util.List;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.tutorial.dto.AnnualDTO;
import com.spring.tutorial.dto.AttendanceDTO;

@Repository
public class AttendanceDAOImpl implements AttendanceDAO{
	@Autowired
    SqlSession sqlSession; 
	
	DataSource dataSource;

	// 나의 근태 현황 
	@Override
	public List<AttendanceDTO> attendance(String id) {
		System.out.println("dao : 나의 근태 현황");			
		List<AttendanceDTO> list = sqlSession.selectList("com.spring.tutorial.dao.AttendanceDAO.attendanceDay", id);
		
		return list;
	}
	
	// 업무 시작
	@Override
	public int attendin(String id) {
		System.out.println("dao :업무 시작");			
		int insertCnt = sqlSession.insert("com.spring.tutorial.dao.AttendanceDAO.attendin", id);
		
		return insertCnt;
	}

	// 업무 종료
	@Override
	public int attendout(String id) {
		System.out.println("dao : 업무 종료");			
		int insertCnt = sqlSession.insert("com.spring.tutorial.dao.AttendanceDAO.attendout", id);
		
		return insertCnt;
	}
	
	// 연장 시작
	@Override
	public int overin(String id) {
		System.out.println("dao : 연장 시작");			
		int insertCnt = sqlSession.insert("com.spring.tutorial.dao.AttendanceDAO.overin", id);
		
		return insertCnt;
	}

	// 연장 종료
	@Override
	public int overout(String id) {
		System.out.println("dao : 연장 종료");			
		int insertCnt = sqlSession.insert("com.spring.tutorial.dao.AttendanceDAO.overout", id);
		
		return insertCnt;
	} 	
	
	
	// 나의 근무 조회 (주간별)
	@Override
	public List<AttendanceDTO> attendanceWeek(String id) {
		System.out.println("dao : 나의 근무 조회");			
		// List<AttendanceDTO> list = sqlSession.selectList("com.spring.tutorial.dao.AttendanceDAO.attendanceWeek", id);
		
		return null;
	}

	// 월 근태 현황
	@Override
	public List<AttendanceDTO> attendanceMonth(String id) {
		System.out.println("dao : 월 근태 현황");
		// List<AttendanceDTO> list = sqlSession.selectList("com.spring.tutorial.dao.AttendanceDAO.attendanceMonth", id);
		
		return null;
	}

	// 내 연차 내역
	@Override
	public List<AnnualDTO> attendanceRestInfo(String id) {
		System.out.println("dao : 나의 연차 내역");	
		return null;
	}

	// 연장 근무 신청 
	@Override
	public int request_over(String id) {
		System.out.println("dao : 연장 근무 신청");	
		return 0;
	}

	// 연차 반차 신청 
	@Override
	public int request_rest(String id) {
		System.out.println("dao : 연차 반차 신청");	
		return 0;
	}

	// 부서 근태 내역
	@Override
	public List<AttendanceDTO> attendDepart(String depart_name) {
		System.out.println("dao : 부서 근태 내역");	
		return null;
	}

	// 부서 연차 내역
	@Override
	public List<AnnualDTO> annualDepart(String depart_name) {
		System.out.println("dao : 부서 연차 내역");	
		return null;
	}

	// 전사 근태 내역
	@Override
	public List<AttendanceDTO> attendGrb(int company_id) {
		System.out.println("dao : 전사 근태 내역");	
		return null;
	}

	// 전사 연차 내역
	@Override
	public List<AnnualDTO> annualGrb(int company_id) {
		System.out.println("dao : 전사 연차 내역");	
		return null;
	}

	
	
			
	
}

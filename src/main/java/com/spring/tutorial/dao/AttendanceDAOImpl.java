package com.spring.tutorial.dao;
import java.util.List;
import java.util.Map;

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
		System.out.println("dao : attendance");			
		List<AttendanceDTO> list = sqlSession.selectList("com.spring.tutorial.dao.AttendanceDAO.attendanceDay", id);
		
		return list;
	}
	
	// 업무 시작
	@Override
	public int attendin(String id) {
		System.out.println("dao : attendin");			
		int insertCnt = sqlSession.insert("com.spring.tutorial.dao.AttendanceDAO.attendin", id);
		
		return insertCnt;
	}

	// 업무 종료
	@Override
	public int attendout(String id) {
		System.out.println("dao : attendout");			
		int insertCnt = sqlSession.insert("com.spring.tutorial.dao.AttendanceDAO.attendout", id);
		
		return insertCnt;
	}
	
	// 근무 시간 update
	@Override
	public int updateworktime(Map<String, Object> map) {
		System.out.println("dao : updateworktime");
		int updateCnt = sqlSession.update("com.spring.tutorial.dao.AttendanceDAO.updateworktime", map);

		return updateCnt;
	}
	
	// 누적 + 연장
	@Override
	public int workover(Map<String, Object> map) {
		System.out.println("dao : workover");			
		int workover = sqlSession.selectOne("com.spring.tutorial.dao.AttendanceDAO.workover", map);
		
		return workover;
	}

	// 누적 근무
	@Override
	public int worktime(Map<String, Object> map) {
		System.out.println("dao : worktime");			
		int worktime = sqlSession.selectOne("com.spring.tutorial.dao.AttendanceDAO.worktime", map);
		
		return worktime;
	} 	
	
	// 연장  근무 시간
	@Override
	public int overtime(Map<String, Object> map) {
		System.out.println("dao : overtime");			
		int overtime = sqlSession.selectOne("com.spring.tutorial.dao.AttendanceDAO.overtime", map);
		
		return overtime;
	}
	
	// 월간 연장  근무 시간
	@Override
	public int overmonth(String id) {
		System.out.println("dao : overmonth");			
		int overmonth = sqlSession.selectOne("com.spring.tutorial.dao.AttendanceDAO.overmonth", id);
		
		return overmonth;
	}
	
	// 나의 근무 조회 (주간별)
	@Override
	public List<AttendanceDTO> attendanceWeek(Map<String, Object> map) {
		System.out.println("dao : attendanceWeek");			
		List<AttendanceDTO> week = sqlSession.selectList("com.spring.tutorial.dao.AttendanceDAO.attendanceWeek", map);
		
		return week;
	}

	// 나의 월 근무 시간
	@Override
	public int monthwork(String id) {
		System.out.println("dao : monthwork");
		int selectCnt = sqlSession.selectOne("com.spring.tutorial.dao.AttendanceDAO.monthwork", id);

		return selectCnt;
	}
	
	// 나의 월 누적 시간
	@Override
	public int monthtotal(String id) {
		System.out.println("dao : monthtotal");
		int selectCnt = sqlSession.selectOne("com.spring.tutorial.dao.AttendanceDAO.monthtotal", id);

		return selectCnt;
	}
	
	// 주 연장 카운트
	@Override
	public int overweek_cnt(Map<String, Object> map) {
		System.out.println("dao : overweek_cnt");
		int selectCnt = sqlSession.selectOne("com.spring.tutorial.dao.AttendanceDAO.overweek_cnt", map);

		return selectCnt;
	}
	
	// 월 연장 카운트
	@Override
	public int overmonth_cnt(String id) {
		System.out.println("dao : overmonth_cnt");
		int selectCnt = sqlSession.selectOne("com.spring.tutorial.dao.AttendanceDAO.overmonth_cnt", id);

		return selectCnt;
	}
	
	// 월 업무(출근) 카운트
	@Override
	public int attendin_cnt(String id) {
		System.out.println("dao : attendin_cnt");
		int selectCnt = sqlSession.selectOne("com.spring.tutorial.dao.AttendanceDAO.attendin_cnt", id);

		return selectCnt;
	}
	
	// 월 지각 카운트
	@Override
	public int late_cnt(String id) {
		System.out.println("dao : late_cnt");
		int selectCnt = sqlSession.selectOne("com.spring.tutorial.dao.AttendanceDAO.late_cnt", id);

		return selectCnt;
	}
	
	// 월 근태 현황
	@Override
	public List<AttendanceDTO> attendanceMonth(String id) {
		System.out.println("dao : attendanceMonth");
		List<AttendanceDTO> list = sqlSession.selectList("com.spring.tutorial.dao.AttendanceDAO.attendanceMonth", id);
		
		return list;
	}
	
	// 최종 근무 날짜 
	public int day_cnt(String id) {
		System.out.println("dao : day_cnt");
		int selectCnt = sqlSession.selectOne("com.spring.tutorial.dao.AttendanceDAO.day_cnt", id);

		return selectCnt;
	}

	// 내 연차 내역
	@Override
	public List<AnnualDTO> attendanceRestInfo(Map<String, Object> map) {
		System.out.println("dao : attendanceRestInfo");
		List<AnnualDTO> list = sqlSession.selectList("com.spring.tutorial.dao.AttendanceDAO.attendanceRestInfo", map);
		
		return list;
	}
	
	// 사원 등록 발생 연차
	@Override
	public int newannual(String id) {
		System.out.println("dao : newannual");
		int insertCnt = sqlSession.insert("com.spring.tutorial.dao.AttendanceDAO.newannual", id);

		return insertCnt;
	}

	// 연 발생 연차
	@Override
	public List<AnnualDTO> yearRestInfo(Map<String, Object> map){
		System.out.println("dao : yearRestInfo");
		List<AnnualDTO> list = sqlSession.selectList("com.spring.tutorial.dao.AttendanceDAO.yearRestInfo", map);
		
		return list;
	}
	
	// 일일 연장 1회 제한
	@Override
	public int over_cnt(String id) {
		System.out.println("dao : over_cnt");
		int selectCnt = sqlSession.selectOne("com.spring.tutorial.dao.AttendanceDAO.over_cnt", id);

		return selectCnt;
	}
	
	// 연장 근무 신청 
	@Override
	public int request_over(Map<String, Object> map) {
		System.out.println("dao : request_over");	
		int insertCnt = sqlSession.insert("com.spring.tutorial.dao.AttendanceDAO.request_over", map);
		
		return insertCnt;
	}

	// 연차 반차 신청 
	@Override
	public int request_rest(Map<String, Object> map) {
		System.out.println("dao : request_rest");	
		int insertCnt = sqlSession.insert("com.spring.tutorial.dao.AttendanceDAO.request_rest", map);
		
		return insertCnt;
	}
	
	
	// 부서 근태 내역
	@Override
	public List<AttendanceDTO> attendDepart(String depart_name) {
		System.out.println("dao : attendDepart");	
		return null;
	}

	// 부서 연차 내역
	@Override
	public List<AnnualDTO> annualDepart(String depart_name) {
		System.out.println("dao : annualDepart");	
		return null;
	}

	// 전사 근태 내역
	@Override
	public List<AttendanceDTO> attendGrb(int company_id) {
		System.out.println("dao : attendGrb");	
		return null;
	}

	// 전사 연차 내역
	@Override
	public List<AnnualDTO> annualGrb(int company_id) {
		System.out.println("dao : annualGrb");	
		return null;
	}

	
	
			
	
}

package com.spring.tutorial.service;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.spring.tutorial.dao.AttendanceDAO;
import com.spring.tutorial.dto.AnnualDTO;
import com.spring.tutorial.dto.AttendanceDTO;


@Service
public class AttendanceServiceImpl implements AttendanceService {
	
	@Autowired
	AttendanceDAO dao;		

	// 나의 근태 현황 
	@Override
	public void attendance(HttpServletRequest req, Model model) {
		System.out.println("service : attendance");
		String id = (String) req.getSession().getAttribute("memberID");
		List<AttendanceDTO> list = dao.attendance(id);
		int cnt = dao.over_cnt(id); // 일일 연장 체크
		
		model.addAttribute("cnt", cnt);
		model.addAttribute("list", list);
	}
	
	// 업무 시작
	@Override
	public void attendin(HttpServletRequest req, Model model) {
		System.out.println("service : attendin");
		String id = (String) req.getSession().getAttribute("memberID");
		int insertCnt = dao.attendin(id);
		
		model.addAttribute("insertCnt", insertCnt);
	}

	// 업무 종료
	@Override
	public void attendout(HttpServletRequest req, Model model) {
		try {
		System.out.println("service : attendout");
		String id = (String) req.getSession().getAttribute("memberID");
		
		if(req.getParameter("worktime") != null) { // worktime이 있으면
			String worktime = req.getParameter("worktime");
			System.out.println("worktime : " + worktime);		
			
			Map<String,Object> map = new HashMap<>();
			map.put("id", id);			
			map.put("worktime", worktime);			
			dao.updateworktime(map);
//			Map<String,Object> map = new HashMap<>();
//			map.put("id", id);
//			map.put("worktime", worktime);				
//			dao.attendout(map); // 업무 종료, 누적근무 계산 > 초 단위 worktime
		} else {			
			dao.attendout(id);	
		}		
		
		} catch(Exception e) {
			e.printStackTrace();
		}
	}	
	
	// 주차별 누적 근무 1~7 / 8~15 / 16~21 / 22~31 구별
	@Override
	public void worktime(HttpServletRequest req, Model model) {
		try {
			System.out.println("service : worktime");
			String id = (String) req.getSession().getAttribute("memberID");		
			int start = Integer.parseInt(req.getParameter("start"));	
			int end = Integer.parseInt(req.getParameter("end"));			
			
			System.out.println("start : " + start + ", end : " + end);
			Map<String,Object> map = new HashMap<>();
			map.put("id", id);		
			map.put("start", start);
			map.put("end", end);
			int worktime;
			int overweek_cnt = dao.overweek_cnt(map); // 주 연장근무 카운트
			System.out.println("overweek_cnt : " + overweek_cnt);
			
			if(overweek_cnt == 0) { // 연장 근무 이력이 없으면
				worktime = dao.worktime(map); // 누적 근무시간 
			} else { // 연장 근무 이력이 있으면
				worktime = dao.workover(map); // 누적 + 연장 근무시간
			}
			System.out.println("worktime : " + worktime);
			int week_h = (int) (worktime / (60 * 60));
    	 	int week_m = (int) (worktime % (60 * 60)) / 60;
    	 	int week_s = (worktime % 60);
    	 	// 00:00:00으로 자릿수 맞춰주기
    	 	String weekh = String.valueOf(week_h);
    	 	String weekm = String.valueOf(week_m);
    	 	String weeks = String.valueOf(week_s);
    	 	if (week_h < 10) { weekh = "0" + String.valueOf(week_h); }
    	 	if (week_m < 10) { weekm = "0" + String.valueOf(week_m); }
    	 	if (week_s < 10) { weeks = "0" + String.valueOf(week_s); }
    	 	String workweek = weekh +":"+ weekm +":"+ weeks;     	 	 	
			model.addAttribute("workweek", workweek);
		
		} catch(Exception e) {
            e.printStackTrace();
        }
	}
	
	
	// 나의 근무 조회
	@Override
	public void attendanceWeek(HttpServletRequest req, Model model) {
		try {
			System.out.println("service : attendanceWeek");	
			String id = (String) req.getSession().getAttribute("memberID");
			String selectweek = req.getParameter("week"); 
			
			System.out.println("selectweek : " + selectweek);
			
			// start end가 null이 아닐 때 (주차별 날짜 기준)
			if(req.getParameter("start") != null && req.getParameter("end") != null) {
				int start = Integer.parseInt(req.getParameter("start"));	
				int end = Integer.parseInt(req.getParameter("end"));			
				
				System.out.println("start : " + start + ", end : " + end);
				
				Map<String,Object> map = new HashMap<>();
				map.put("id", id);		
				map.put("start", start);
				map.put("end", end);
				
				// 주간 근무 호출
				List<AttendanceDTO> week = dao.attendanceWeek(map);				
				
				int overweek_cnt = dao.overweek_cnt(map); // 주 연장근무 카운트
				int overmonth_cnt = dao.overmonth_cnt(id); // 월 연장근무 카운트
				System.out.println("overweek_cnt : " + overweek_cnt);
				
				int worktime = dao.worktime(map);
				int workover = 0;
				int overworkweek = 0;
				int overworkmonth = 0;
				
				if(overweek_cnt == 0) { // 연장 근무 이력이 없으면					
					workover = worktime;
				} else { // 연장 근무 이력이 있으면
					workover = dao.workover(map); // 누적 + 연장 근무시간
					overworkweek = dao.overtime(map); // 연장 근무 시간					
				}				
				System.out.println("worktime : " + worktime + ", workover : " + workover + ", overworkweek : " + overworkweek);				
				
				int weekstandard = 187200; // 52시간 주간 근무 기준 초 단위
				int remaintime = weekstandard - worktime;
				double weekrate = Math.round(((double)workover / (double)weekstandard) * 100); // 누적
				double workrate = Math.round(((double)worktime / (double)weekstandard) * 100); // 기본
				double overrate = Math.round(((double)overworkweek / (double)weekstandard) * 100); // 연장
				System.out.println("weekrate : " + weekrate + ", workrate : " + workrate + ", overrate : " + overrate);				
								
				// 주간 누적 시간 도식화 (근무+연장)
				int week_h = (int) (workover / (60 * 60));
	    	 	int week_m = (int) (workover % (60 * 60)) / 60;
	    	 	int week_s = (workover % 60);
	    	 	String weekh = String.valueOf(week_h);
	    	 	String weekm = String.valueOf(week_m);
	    	 	String weeks = String.valueOf(week_s);
	    	 	if (week_h < 10) { weekh = "0" + String.valueOf(week_h); }
	    	 	if (week_m < 10) { weekm = "0" + String.valueOf(week_m); }
	    	 	if (week_s < 10) { weeks = "0" + String.valueOf(week_s); }
	    	 	String weektotal = weekh +":"+ weekm +":"+ weeks;	   
	    	 	System.out.println("weektotal : " + weektotal);
	    	 	
	    	 	// 이번주 근무 시간 
	    	 	int work_h = (int) (worktime / (60 * 60));
	    	 	int work_m = (int) (worktime % (60 * 60)) / 60;
	    	 	int work_s = (worktime % 60);
	    	 	String workh = String.valueOf(week_h);
	    	 	String workm = String.valueOf(week_m);
	    	 	String works = String.valueOf(week_s);
	    	 	if (work_h < 10) { workh = "0" + String.valueOf(work_h); }
	    	 	if (work_m < 10) { workm = "0" + String.valueOf(work_m); }
	    	 	if (work_s < 10) { works = "0" + String.valueOf(work_s); }
	    	 	String workweek = workh +":"+ workm +":"+ works;
	    	 	System.out.println("workweek : " + workweek);
	    	 	
				// 주간 잔여 시간
	    	 	int remain_h = (int) (remaintime / (60 * 60));
	    	 	int remain_m = (int) (remaintime % (60 * 60)) / 60;
	    	 	int remain_s = (remaintime % 60);
	    	 	String remainh = String.valueOf(remain_h);
	    	 	String remainm = String.valueOf(remain_m);
	    	 	String remains = String.valueOf(remain_s);
	    	 	if (remain_h < 10) { remainh = "0" + String.valueOf(remain_h); }
	    	 	if (remain_m < 10) { remainm = "0" + String.valueOf(remain_m); }
	    	 	if (remain_s < 10) { remains = "0" + String.valueOf(remain_s); }
	    	 	String remainweek = remainh +":"+ remainm +":"+ remains;	    	 	
	    	 	System.out.println("remainweek : " + remainweek);
	    	 	
	    	 	// 이번주 연장 시간
	    	 	int over_h = (int) (overworkweek / (60 * 60));
	    	 	int over_m = (int) (overworkweek % (60 * 60)) / 60;
	    	 	int over_s = (overworkweek % 60);
	    	 	String overh = String.valueOf(over_h);
	    	 	String overm = String.valueOf(over_m);
	    	 	String overs = String.valueOf(over_s);
	    	 	if (over_h < 10) { overh = "0" + String.valueOf(over_h); }
	    	 	if (over_m < 10) { overm = "0" + String.valueOf(over_m); }
	    	 	if (over_s < 10) { overs = "0" + String.valueOf(over_s); }
	    	 	String overweek = overh +":"+ overm +":"+ overs;
	    	 	System.out.println("overweek : " + overweek);
	    	 	
	    	 	// 이번달 누적 시간
	    	 	int monthtime = dao.monthwork(id);
	    	 	System.out.println("monthtime : " + monthtime);
	    	 	int month_h = (int) (monthtime / (60 * 60));
	    	 	int month_m = (int) (monthtime % (60 * 60)) / 60;
	    	 	int month_s = (monthtime % 60);	    	 	
	    	 	String monthh = String.valueOf(month_h);
	    	 	String monthm = String.valueOf(month_m);
	    	 	String months = String.valueOf(month_s);
	    	 	if (month_h < 10) { monthh = "0" + String.valueOf(month_h); }
	    	 	if (month_m < 10) { monthm = "0" + String.valueOf(month_m); }
	    	 	if (month_s < 10) { months = "0" + String.valueOf(month_s); }
	    	 	String workmonth = monthh +":"+ monthm +":"+ months;
	    	 	System.out.println("workmonth : " + workmonth);
	    	 	
	    	 	// 이번달 연장 시간 
	    	 	if(overmonth_cnt != 0) { overworkmonth = dao.overmonth(id);}
	    	 	System.out.println("overworkmonth : " + overworkmonth);
	    	 	int overm_h = (int) (overworkmonth / (60 * 60));
	    	 	int overm_m = (int) (overworkmonth % (60 * 60)) / 60;
	    	 	int overm_s = (overworkmonth % 60);	    	 	
	    	 	String overmh = String.valueOf(overm_h);
	    	 	String overmm = String.valueOf(overm_m);
	    	 	String overms = String.valueOf(overm_s);
	    	 	if (overm_h < 10) { overmh = "0" + String.valueOf(overm_h); }
	    	 	if (overm_m < 10) { overmm = "0" + String.valueOf(overm_m); }
	    	 	if (overm_s < 10) { overms = "0" + String.valueOf(overm_s); }
	    	 	String overmonth = overmh +":"+ overmm +":"+ overms;
	    	 	System.out.println("overmonth : " + overmonth);
	    	 	
	    	 	model.addAttribute("weekrate", weekrate); // 이번주 누적근무 / 52시간
	    	 	model.addAttribute("workrate", workrate); // 이번주근무시간 / 52시간
	    	 	model.addAttribute("overrate", overrate); // 이번주 연장시간 / 52시간
	    	 	model.addAttribute("weektotal", weektotal); // 누적 근무 시간 (근무+연장)
	    	 	model.addAttribute("workweek", workweek); // 이번주 누적 시간
				model.addAttribute("remainweek", remainweek); // 이번주 잔여 시간
				model.addAttribute("overweek", overweek); // 이번주 연장 시간
				model.addAttribute("workmonth", workmonth); // 이번달 누적 시간
				model.addAttribute("overmonth", overmonth); // 이번달 연장 시간
				model.addAttribute("week", week); // 이번주 근무 조회 (근태 로그)
				model.addAttribute("selectweek", selectweek); // 1주차 2주차 3주차 4주차
			}
		} catch(Exception e) {
            e.printStackTrace();
        }
	}

	// 월 근태 현황
	@Override
	public void attendanceMonth(HttpServletRequest req, Model model) {
		try {
			System.out.println("service : attendanceMonth");	
			String id = (String) req.getSession().getAttribute("memberID");
			List<AttendanceDTO> month = dao.attendanceMonth(id);
			
			// 월 누적 시간 도식화
		 	int worktime = dao.monthwork(id);  // 월 근무 시간
		 	int monthtime = dao.monthtotal(id); // 월 누적 시간
		 	int overworkmonth = 0;
		 	int overmonth_cnt = dao.overmonth_cnt(id); // 월 연장근무 카운트
		 	
		 	
		 	int monthstandard = 187200 * 4; // 52시간 > 월 근무 기준 초 단위
		 	double monthrate = Math.round(((double)monthtime / (double)monthstandard) * 100); // 월 누적
		 	double workrate = Math.round(((double)worktime / (double)monthstandard) * 100); // 월 근무 
		 	System.out.println("monthrate : " + monthrate + ", workrate : " + workrate)
		 	;
		 	// 이번달 누적 시간 > 도식화
		 	int month_h = (int) (monthtime / (60 * 60));
		 	int month_m = (int) (monthtime % (60 * 60)) / 60;
		 	int month_s = (monthtime % 60);
		 	String workmonth = month_h +":"+ month_m +":"+ month_s;	 
		 	
		 	// 이번달 연장 시간 
    	 	if(overmonth_cnt != 0) { overworkmonth = dao.overmonth(id);}
    	 	System.out.println("overworkmonth : " + overworkmonth);
    	 	int overm_h = (int) (overworkmonth / (60 * 60));
    	 	int overm_m = (int) (overworkmonth % (60 * 60)) / 60;
    	 	int overm_s = (overworkmonth % 60);	    	 	
    	 	String overmh = String.valueOf(overm_h);
    	 	String overmm = String.valueOf(overm_m);
    	 	String overms = String.valueOf(overm_s);
    	 	if (overm_h < 10) { overmh = "0" + String.valueOf(overm_h); }
    	 	if (overm_m < 10) { overmm = "0" + String.valueOf(overm_m); }
    	 	if (overm_s < 10) { overms = "0" + String.valueOf(overm_s); }
    	 	String overmonth = overmh +":"+ overmm +":"+ overms;
    	 	System.out.println("overmonth : " + overmonth);
		 	
		 	// 월 근태 통계
		 	int workcnt = dao.attendin_cnt(id); // 업무(출근) 횟수		 	
		 	int totalcnt = dao.day_cnt(id); // 최종 근무 날짜
		 	int daycnt = totalcnt - (Math.round(totalcnt / 7)*2); // 7일에서 주말 제외한 실근무 횟수		 	
		 	int latecnt = dao.late_cnt(id); // 월 지각 횟수			 	
		 	int overcnt = dao.overmonth_cnt(id); // 월 연장 횟수
		 	
		 	double laterate = Math.round(((double)latecnt / (double)workcnt) * 100); // 월 지각/실근무 퍼센테이지   	
		 	double attendinrate = Math.round(((double)workcnt / (double)daycnt) * 100); // 월 업무/실근무 퍼센테이지
		 	double overrate = Math.round(((double)overcnt / (double)workcnt) * 100); // 월 연장/출근 퍼센테이지
		 	System.out.println("workcnt : " + workcnt + ", daycnt : " + daycnt + ", attendinrate : " + attendinrate);
		 	
		 	model.addAttribute("monthrate", monthrate); // 월 누적 시간 퍼센트
		 	model.addAttribute("workrate", workrate); // 월 근무 시간 퍼센트
		 	model.addAttribute("laterate", laterate); // 월 지각/출근 퍼센트   	
		 	model.addAttribute("attendinrate", attendinrate); // 월 업무/실근무 퍼센트			 	 
		 	model.addAttribute("overrate", overrate); // 월 연장/출근 퍼센트		 	
			model.addAttribute("workmonth", workmonth); // 월 누적 근무 시간
			model.addAttribute("overmonth", overmonth); // 월 연장 근무 시간
			model.addAttribute("month", month); // 월간 근태 현황
		} catch(Exception e) {
			e.printStackTrace();
		}
	}

	// 내 연차 내역
	@Override
	public void attendanceRestInfo(HttpServletRequest req, Model model) {
		try {
			System.out.println("service : attendanceRestInfo");
			String id = (String) req.getSession().getAttribute("memberID");
			String years = req.getParameter("year");
			if( years == null) {
				years = "2022";
			}
			System.out.println("years : " + years);
			Map<String,Object> map = new HashMap<>();
			map.put("id", id);		
			map.put("year", years);
			
			List<AnnualDTO> annual = dao.attendanceRestInfo(map); // 연도별 나의 연차 정보
			List<AnnualDTO> year = dao.yearRestInfo(map); // 연도별 발생, 총, 사용, 잔여 연차 정보
			
			model.addAttribute("annual", annual);
			model.addAttribute("year", year);
		} catch(Exception e) {
			e.printStackTrace();
		}		
	}

	// 연장 근무 신청 
	@Override
	public void request_over(HttpServletRequest req, Model model) {		
		try {
			System.out.println("service : request_over");
			String id = (String) req.getSession().getAttribute("memberID");	
			int cnt = dao.over_cnt(id); // 일일 연장 체크 
			System.out.println("cnt : " + cnt);
			
			if(cnt == 0) { // 연장 신청이 없으면				
				String date = req.getParameter("date");
				String over_in = req.getParameter("over_in");
				String attendin = date + " " + over_in;
				String over_out = req.getParameter("over_out");
				String attendout = date + " " + over_out;
				String overtime = req.getParameter("overtime");
				String content = req.getParameter("content");			
				System.out.println("date : " + date + ", attendin : " + attendin + ", attendout : " + attendout + ", overtime : " + overtime + ", content : " + content);
				
				Map<String,Object> map = new HashMap<>();
				map.put("id", id);		
				map.put("attendin", attendin);
				map.put("attendout", attendout);
				map.put("overtime", overtime);
				map.put("content", content);			
				
				int insertCnt = dao.request_over(map); // 연장 신청	
				
				model.addAttribute("insertCnt", insertCnt);	
			}
			model.addAttribute("cnt", cnt);	
		} catch(Exception e) {
			e.printStackTrace();
		}				
	}

	// 연차 반차 신청
	@Override
	public void request_rest(HttpServletRequest req, Model model) {
		try {
			System.out.println("service : request_rest");
			String id = (String) req.getSession().getAttribute("memberID");			
			String annual = req.getParameter("annual");
			String annualuse = req.getParameter("annualuse");
			String annualrest = req.getParameter("annualrest");
			String annual_in = req.getParameter("annual_in");
			String annual_out = req.getParameter("annual_out");	
			System.out.println("annual : " + annual + ", use : " + annualuse + ", rest : " + annualrest + ", annual_in : " + annual_in + ", annual_out : " + annual_out);
			
			Map<String,Object> map = new HashMap<>();
			map.put("id", id);		
			map.put("annual", annual);
			map.put("annualuse", annualuse);
			map.put("annualrest", annualrest);
			map.put("annual_in", annual_in);
			map.put("annual_out", annual_out);
			
			int insertCnt = dao.request_rest(map); 		
			
			model.addAttribute("insertCnt", insertCnt);			
		} catch(Exception e) {
			e.printStackTrace();
		}				
	}

	// 사원 등록 이메일 인증 > 연차 발생
	@Override
	public void newannual(HttpServletRequest req, Model model) {
		try {
			System.out.println("service : newannual");
			String id = (String) req.getSession().getAttribute("memberID");			
						
			int insertCnt = dao.newannual(id); 		
			
			model.addAttribute("insertCnt", insertCnt);			
		} catch(Exception e) {
			e.printStackTrace();
		}
	}	
	
	// 부서 근태 내역
	@Override
	public void attendDepart(HttpServletRequest req, Model model) {
		System.out.println("service : 부서 근태 내역");	
		
	}

	// 부서 연차 내역
	@Override
	public void annualDepart(HttpServletRequest req, Model model) {
		System.out.println("service : 부서 연차 내역");	
		
	}

	// 전사 근태 내역
	@Override
	public void attendGrb(HttpServletRequest req, Model model) {
		System.out.println("service : 전사 근태 내역");	
		
	}

	// 전사 연차 내역
	@Override
	public void annualGrb(HttpServletRequest req, Model model) {
		System.out.println("service : 전사 연차 내역");	
		
	}
	
	

}

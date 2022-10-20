package com.spring.tutorial.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.tutorial.service.AdminHumanServiceImpl;
<<<<<<< HEAD
=======
import com.spring.tutorial.service.SecurityServiceImpl;
>>>>>>> c3a0afac0f9d9efa03819f80da60a2059002fd78



@Controller
public class AdminController {
	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
	

	  @Autowired 
	  AdminHumanServiceImpl service;
	  
<<<<<<< HEAD
	 
=======
	  @Autowired
	  SecurityServiceImpl securityService;
>>>>>>> c3a0afac0f9d9efa03819f80da60a2059002fd78
	
	
	@RequestMapping("adminMain.ad")
	public String approvallist(HttpServletRequest req, Model model) 
			throws ServletException, IOException{
		logger.info("AdminController -> adminMain.ap");
		return "admin/index";
	}
	
	@RequestMapping("adAttend.ad")
	public String adAttend(HttpServletRequest req, Model model) 
			throws ServletException, IOException{
		logger.info("AdminController -> adminMain.ap");
		return "admin/adAttend/adAttend";
	}
	
	//부서미지정
	@RequestMapping("adDepart.ad")
	public String adDepart(HttpServletRequest req, Model model) 
			throws ServletException, IOException{
		logger.info("AdminController -> adminMain.ap");
		
		service.departsAction(req, model);
		return "admin/adDepart/adDepart";
	}
	
	
	//부서설계
	@RequestMapping("departInfo.ad")
	public String adDepart2(HttpServletRequest req, Model model) 
			throws ServletException, IOException{
		logger.info("AdminController -> departInfo.ad");
		return "admin/adDepart/departInfo";
	}
	
	

	//부서 상세
	@RequestMapping("d_update.ad")
	public void d_update(HttpServletRequest req, HttpServletResponse res ,Model model) 
			throws ServletException, IOException{
		logger.info("AdminController -> d_update.ad");
		
		service.departDetailAction(req, res, model);

	//부서 수정
	@RequestMapping("d_update.ad")
	public void adDepart3(HttpServletRequest req, HttpServletResponse res ,Model model) 
			throws ServletException, IOException{
		logger.info("AdminController -> d_update.ap");
		
		service.departUpdateAction(req, res, model);

		String viewPage = req.getContextPath() + "/adDepart.ad";
		res.sendRedirect(viewPage);
	}
	
	//부서 수정
	@RequestMapping("update.ad")
	public String update(HttpServletRequest req, HttpServletResponse res ,Model model) 
			throws ServletException, IOException{
		logger.info("AdminController -> update.ad");
		
		service.departUpdateAction(req, res, model);
		
		return "admin/adDepart/update";
	}
	
	//인사관리-사원통합
	@RequestMapping("adHr.ad")
	public String adHr(HttpServletRequest req, Model model) 
			throws ServletException, IOException{
		logger.info("AdminController -> adHr.ap");
		
		service.memberInfoAction(req, model);
		return "admin/adHr/adHr";
	}
	
	//인사 개인정보 상세페이지
	@RequestMapping("joinDetail.ad")
	public String joinDetail(HttpServletRequest req, Model model) 
			throws ServletException, IOException{
		logger.info("url -> joinDetail.ad");
		
		service.usersDetailAction(req, model);
				
		return "admin/adHr/joinDetail";
	}
	
	//인사 개인정보 수정
	@RequestMapping("joinUpdate.ad")
	public String joinUpdate(HttpServletRequest req ,Model model) 
			throws ServletException, IOException{
		logger.info("url -> joinUpdate.ad");
		
		service.usersUpdateAction(req ,model);
		return "admin/adHr/joinUpdate";
	}
	
	//인사관리 - 개인정보 삭제
	@RequestMapping("joinDelete.ad")
	public void joinDelete(HttpServletRequest req, HttpServletResponse res ,Model model) 
			throws ServletException, IOException{
		logger.info("url-> joinDelete");
		
		service.usersDeleteAction(req, res, model);
		String viewPage = req.getContextPath() + "/adHr.ad";
		res.sendRedirect(viewPage);
	}
	
	
	//인사관리-사원등록
	@RequestMapping("adHr2.ad")
	public String adHr2(HttpServletRequest req, Model model) 
			throws ServletException, IOException{
		logger.info("AdminController -> adHr2.ap");
		return "admin/adHr/adHr2";
	}
	
	//보안관리-관리자기능설정
		@RequestMapping("adSecure.ad")
		public String adSecure(HttpServletRequest req, Model model) 
				throws ServletException, IOException{
			
			logger.info("AdminController -> adSecure.ap");
			
			securityService.securityAdminListAc(req, model);
			
			return "admin/adSecure/adSecure";
		}
		
		//보안관리-기능접근제한
		@RequestMapping("adSecure2.ad")
		public String adSecure2(HttpServletRequest req, Model model) 
				throws ServletException, IOException{
			
			logger.info("AdminController -> adSecure2.ap");
			
			return "admin/adSecure/adSecure2";
		}
		
		//보안관리-관리자 추가를 위한 사원리스트
		@RequestMapping("adminAdd.ad")
		public String adminAdd(HttpServletRequest req, Model model) 
				throws ServletException, IOException{
			
			logger.info("AdminController -> adminAdd.ap");
			
			securityService.adminAddAction(req, model);

			return "admin/adSecure/adminAdd";
		}
		
		//보안관리 - 관리자 추가
		@RequestMapping("adminAdd2.ad")
		public String adminAdd2(HttpServletRequest req, Model model) 
				throws ServletException, IOException{
			logger.info("AdminController -> adminAdd2.ap");
			
			securityService.adSecurityInsert(req, model);
			
			return "admin/adSecure/adSecure";
		}
		
		//보안관리 - 관리자 삭제
		@RequestMapping("admin_del.ad")
		public void admin_del(HttpServletRequest req, HttpServletResponse res, Model model)
			throws ServletException, IOException{
			
			logger.info("AdminController -> admin_del.ap");
			
			securityService.adSecurityDelAction(req, model);
			
	      String viewPage = req.getContextPath() + "/adSecure.ad";
	      res.sendRedirect(viewPage);
		}
	
	
	//서비스관리-메뉴운영권한
	@RequestMapping("adService.ad")
	public String adService(HttpServletRequest req, Model model) 
			throws ServletException, IOException{
		logger.info("AdminController -> adService.ap");
		return "admin/adService/adService";
	}
	
	
	//서비스관리-서비스메뉴관리
	@RequestMapping("adService2.ad")
	public String adService2(HttpServletRequest req, Model model) 
			throws ServletException, IOException{
		logger.info("AdminController -> adService2.ap");
		return "admin/adService/adService2";
	}
	
	
	//서비스관리-팝업공지
	@RequestMapping("adService3.ad")
	public String adService3(HttpServletRequest req, Model model) 
			throws ServletException, IOException{
		logger.info("AdminController -> adService3.ap");
		return "admin/adService/adService3";
	}
	
	

}

package com.spring.tutorial.service.security;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

import com.spring.tutorial.dao.HumanDAOImpl;
import com.spring.tutorial.dto.CommonDTO;
import com.spring.tutorial.dto.UserVO;

//로그인 성공시 작동 
public class UserLoginSuccessHandler implements AuthenticationSuccessHandler {

   @Autowired
   SqlSessionTemplate sqlSession;
   
   //security-context.xml에서 매개변수 생성자 sqlSession 생성 후 매개변수로 전달
   public UserLoginSuccessHandler(SqlSessionTemplate sqlSession) {
      this.sqlSession = sqlSession;
   }

   @Override
   public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
         Authentication authentication) throws IOException, ServletException {
      System.out.println("<<< UserLoginSuccessHandler - onAuthenticationSuccess 진입 >>>");

      UserVO vo = (UserVO) authentication.getPrincipal();
      System.out.println("UserVO : " + vo.getUsername());
      
      String id = vo.getUsername(); // 사번
      System.out.println("id : " + id);
//      CommonDTO dto = dao.selecthuman(id);
      CommonDTO dto  = sqlSession.selectOne("com.spring.tutorial.dao.HumanDAO.selecthuman", id);
      System.out.println("dto : " + dto);
      
      String name = dto.getName(); // 이름
      String rank = dto.getRank(); // 직책
      String depart_name = dto.getDepart_name(); // 부서명

      String msg = name + "님 환영합니다.";

      String authority = sqlSession.selectOne("com.spring.tutorial.dao.CommonDAO.authorityCheck",
            authentication.getName());

      request.setAttribute("msg", msg);
      request.getSession().setAttribute("memberID", authentication.getName()); // 세션추가
      request.getSession().setAttribute("authority", authority);
      request.getSession().setAttribute("memberName", name);
      request.getSession().setAttribute("memberRank", rank);
      request.getSession().setAttribute("memberDepart", depart_name);

      int grade = 0;
      if (authority.equals("ROLE_USER")) { // 유저
         grade = 1;
         RequestDispatcher dispatcher = request.getRequestDispatcher("/index.co");
         dispatcher.forward(request, response);
      } else { // 관리자
         grade = 0;
         RequestDispatcher dispatcher = request.getRequestDispatcher("/adminMain.ad");
         dispatcher.forward(request, response);
      }

   }

}
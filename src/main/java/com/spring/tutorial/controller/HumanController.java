package com.spring.tutorial.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.tutorial.service.HumanServiceImpl;

@Controller
public class HumanController {
   
   private static final Logger logger = LoggerFactory.getLogger(HumanController.class);
   
   @Autowired
   HumanServiceImpl service;
   @Autowired
   HumanServiceImpl service_p;
   @Autowired
   HumanServiceImpl service_t;
   
   //내인사정보
   @RequestMapping("humanMain.hu")
   public String humanMain(HttpServletRequest req , Model model) {
      logger.info("url -> humanMain.hu");
      
      service.memberInfo(req, model);
      service_p.memberAssessment(req, model);
      service_t.jobsfao(req, model);
      return "humanresources/humanMain";
   }
   
   //전체인사정보
   @RequestMapping("userHuman.hu")
   public String userHuman(HttpServletRequest req , Model model) {
      logger.info("url -> userHuman.hu");
      
      return "humanresources/userHuman";
   }
   
   //조직도
   @RequestMapping("groub.hu")
   public String img(HttpServletRequest req , Model model) {
      logger.info("url -> groub.hu");
      
      //service.groubDepart(req, model);
      //service_t.groubTeamInfo(req, model);
      
      return  "humanresources/groub";
   }
   
   //인사정보 재등록
   @RequestMapping("humanInfo.hu")
   public String humanInfo(HttpServletRequest req , Model model) {
      logger.info("url -> humanInfohu");
      
      return "humanresources/humanInfo";
   }
   
   //개인프로필
   @RequestMapping("myHuman.hu")
   public String myHuman(HttpServletRequest req , Model model) {
      logger.info("url -> myHuman.hu");
      
      service.myHumanInfo(req, model);
      return "humanresources/myHuman";
   }


}
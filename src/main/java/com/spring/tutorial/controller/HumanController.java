package com.spring.tutorial.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HumanController {
   
   private static final Logger logger = LoggerFactory.getLogger(HumanController.class);
   
   @RequestMapping("humanMain.hu")
   public String humanMain(HttpServletRequest req , Model model) {
      logger.info("url -> humanMain.hu");
      
      return "humanresources/humanMain";
   }
   
   @RequestMapping("userHuman.hu")
   public String userHuman(HttpServletRequest req , Model model) {
      logger.info("url -> userHuman.hu");
      
      return "humanresources/userHuman";
   }
   
   @RequestMapping("img.hu")
   public String img(HttpServletRequest req , Model model) {
      logger.info("url -> img.hu");
      
      return  "humanresources/img";
   }
   
   @RequestMapping("humanInfo.hu")
   public String humanInfo(HttpServletRequest req , Model model) {
      logger.info("url -> humanInfohu");
      
      return "humanresources/humanInfo";
   }
   
   @RequestMapping("myHuman.hu")
   public String myHuman(HttpServletRequest req , Model model) {
      logger.info("url -> myHuman.hu");
      
      return "humanresources/myHuman";
   }


}
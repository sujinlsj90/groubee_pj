package com.spring.tutorial.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MessageController {
	
	private static final Logger logger = LoggerFactory.getLogger(MessageController.class);
	
	// 수신함
	@RequestMapping("msgInbox.me")
	public String msgInbox(HttpServletRequest req, Model model) 
			throws ServletException, IOException{
		logger.info("MessegeController -> msgInbox.me");
		return "messenger/msgBox/msgInbox";
	}
	
//	// 발신함
//	@RequestMapping("msgSendbox.me")
//	public String msgSendbox(HttpServletRequest req, Model model) 
//			throws ServletException, IOException{
//		logger.info("MessegeController -> msgSendbox.me");
//		return "messenger/msgBox/msgSendbox";
//	}
//	
//	// 휴지통
//	@RequestMapping("msgTrash.me")
//	public String msgTrash(HttpServletRequest req, Model model) 
//			throws ServletException, IOException{
//		logger.info("MessegeController -> msgTrash.me");
//		return "messenger/msgBox/msgTrash";
//	}
//	
//	// 임시보관함
//	@RequestMapping("msgTempbox.me")
//	public String msgTempbox(HttpServletRequest req, Model model) 
//			throws ServletException, IOException{
//		logger.info("MessegeController -> msgTempbox.me");
//		return "messenger/msgBox/msgTempbox";
//	}
//	
//	// 메세지보기
//	@RequestMapping("messageDetail.me")
//	public String messageDetail(HttpServletRequest req, Model model) 
//			throws ServletException, IOException{
//		logger.info("MessegeController -> messageDetail.me");
//		return "messenger/messageDetail";
//	}

}

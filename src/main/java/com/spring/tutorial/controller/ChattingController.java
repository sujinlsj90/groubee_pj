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
public class ChattingController {

	private static final Logger logger = LoggerFactory.getLogger(ChattingController.class);
	
	@RequestMapping("chat.ch")
	public String chat(HttpServletRequest req, Model model) 
			throws ServletException, IOException{
		logger.info("ChattingController -> chat.ch");
		return "chatting/chat";
	}
	
	@RequestMapping("organization.ch")
	public String organization(HttpServletRequest req, Model model) 
			throws ServletException, IOException{
		logger.info("ChattingController -> organization.ch");
		return "chatting/organization";
	}
}